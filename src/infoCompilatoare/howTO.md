# Compilarea, decompilarea si curiozitati

De multe ori, e necesar să știm puțin mai multe informații pentru a întelege pe deplin anumite lucruri. Așadar, în cazul acesta avem nevoie de un mic context despre modul în care un calculator obisnuit proceseaza informatiile. Dacă tragem cortina și trecem de la operațiile concrete din C++ la nivelurile de mai jos o să observam o "lume" stranie și complexă.

Programarea în sine este ușoară și de cele mai multe ori stârnește o curiozitate de a explora mai departe (un lucru foarte folositor în viața de zi cu zi). Adevăratele dileme încep atunci când o informația nu ajunge la timp, când 2 persoane nu reușesc să lucreze eficient in echipă sau întreruperea unui proces.

Exemple: BFT, Generals Problem, Cererea speciala la secretariat, Prioritatile la secretariat, atomic

## Etapele de dinainte de compilare

Înainte ca Clang să transforme codul C++ în instrucțiuni pentru procesor, acesta trebuie să citească, să analizeze și să verifice codul nostru.

Vom folosi exemplul:

```cpp
int add(int a, int b) {
    return a + b;
}

int multiply(int a, int b) {
    return a * b;
}

int main() {
    int numar;

    numar = add(10, 20) + multiply(3, 4);

    return 0;
}
```

## 1. Preprocesarea (Preprocessor)

Clang verifică directivele care încep cu `#`.

De exemplu:

- `#include` – include alte fișiere.
- `#define` – înlocuiește anumite texte cu valori.
- `#ifdef` – verifică anumite condiții.

Practic, pregătește codul pentru următoarele etape.

Comandă:

```bash
clang++ -E exemplu.cpp -o exemplu.i
```

## 2. Analiza lexicală (Lexer)

Clang citește codul și îl împarte în bucăți mici numite token-uri.

De exemplu:

```cpp
int add(int a, int b)
```

Este împărțit în:

- `int` – tip de date.
- `add` – numele funcției.
- `(` – paranteză.
- `int` – tipul parametrului.
- `a` – numele parametrului.
- `,` – separator.
- `int` – tipul parametrului.
- `b` – numele parametrului.
- `)` – închiderea parantezei.

Practic, Clang identifică fiecare element din cod.

## 3. Analiza sintactică (Parser)

Clang verifică dacă elementele identificate sunt așezate corect, conform regulilor limbajului C++.

De exemplu:

```cpp
return a + b;
```

Este corect.

Dar:

```cpp
return + a b;
```

Nu respectă regulile sintactice.

În această etapă, Clang construiește un arbore numit AST (Abstract Syntax Tree), care arată cum sunt organizate instrucțiunile din program.

Comandă:

```bash
clang++ -Xclang -ast-dump -fsyntax-only exemplu.cpp
```

## 4. Analiza semantică (Semantic Analysis)

Acum Clang verifică dacă instrucțiunile au sens din punct de vedere al limbajului C++.

De exemplu:

```cpp
int add(int a, int b) {
    return a + b;
}
```

Clang verifică dacă:

- Variabilele `a` și `b` există.
- Tipurile lor sunt compatibile.
- Rezultatul poate fi returnat ca `int`.

Un alt exemplu:

```cpp
int numar = "Salut";
```

Această instrucțiune are o problemă: încercăm să atribuim un text unei variabile de tip `int`.

Clang va semnala eroarea.

Pe scurt, înainte de generarea codului intermediar LLVM IR:

1. Preprocesorul pregătește codul și rezolvă directivele.
2. Lexer-ul împarte codul în token-uri.
3. Parserul verifică structura și construiește AST-ul.
4. Analiza semantică verifică dacă programul respectă regulile C++ și dacă instrucțiunile au sens.

După aceste etape, Clang poate începe transformarea codului C++ în LLVM IR.

## Compilatorul nu indică întotdeauna erorile logice

Erorile logice apar atunci când programul este scris corect din punct de vedere al sintaxei și al regulilor C++, dar nu face ceea ce ne dorim.

De exemplu:

Exemplul 1 – Folosirea operatorului greșit

```cpp
int a = 10;
int b = 5;

int rezultat = a - b;
```

Dacă dorim să adunăm cele două numere, dar folosim `-` în loc de `+`, compilatorul nu va semnala nicio eroare. Programul este valid, dar rezultatul este greșit.

Exemplul 2 – Condiție greșită

```cpp
int varsta = 17;

if (varsta > 18) {
    cout << "Major";
}
```

Dacă dorim să considerăm o persoană majoră de la 18 ani, condiția ar trebui să fie `varsta >= 18`. Compilatorul nu știe ce rezultat ne dorim.

Exemplul 3 – Calcul greșit

```cpp
int lungime = 10;
int latime = 5;

int aria = lungime + latime;
```

Dacă vrem să calculăm aria unui dreptunghi, trebuie să înmulțim lungimea cu lățimea, nu să le adunăm.

Exemplul 4 – Buclă care nu se execută

```cpp
for (int i = 10; i < 5; i++) {
    cout << i << '\n';
}
```

Programul nu afișează nimic deoarece condiția `i < 5` este falsă încă de la început.

În toate aceste exemple, codul este corect sintactic, deci compilatorul îl poate compila fără probleme.

Important: Compilatorul verifică dacă programul respectă regulile limbajului C++, dar nu poate ști întotdeauna dacă programul face ceea ce a intenționat programatorul.

### Codul ASM si Decompilarea

Și într-un final și partea mult așteptată în care

#### Codul Assembly*

```asm
add(int, int):
        push    rbp
        mov     rbp, rsp
        mov     dword ptr [rbp - 4], edi
        mov     dword ptr [rbp - 8], esi
        mov     eax, dword ptr [rbp - 4]
        add     eax, dword ptr [rbp - 8]
        pop     rbp
        ret

multiply(int, int):
        push    rbp
        mov     rbp, rsp
        mov     dword ptr [rbp - 4], edi
        mov     dword ptr [rbp - 8], esi
        mov     eax, dword ptr [rbp - 4]
        imul    eax, dword ptr [rbp - 8]
        pop     rbp
        ret

main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     dword ptr [rbp - 4], 0
        mov     edi, 10
        mov     esi, 20
        call    add(int, int)
        mov     dword ptr [rbp - 12], eax
        mov     edi, 3
        mov     esi, 4
        call    multiply(int, int)
        mov     ecx, eax
        mov     eax, dword ptr [rbp - 12]
        add     eax, ecx
        mov     dword ptr [rbp - 8], eax
        xor     eax, eax
        add     rsp, 16
        pop     rbp
        ret
```

#### Decompilarea

```c
#include "out.h"

undefined main;
undefined1 completed.0;

int _init(EVP_PKEY_CTX *ctx){
  int iVar1;
  
  iVar1 = __gmon_start__();
  return iVar1;
}

void processEntry _start(undefined8 param_1,undefined8 param_2){
  undefined1 auStack_8 [8];
  
  __libc_start_main(main,param_2,&stack0x00000008,0,0,param_1,auStack_8);
  do { // WARNING: Do nothing block with infinite loop
  } while( true );
}

void _dl_relocate_static_pie(void){ return; }

// WARNING: Removing unreachable block (ram,0x004003ad)
// WARNING: Removing unreachable block (ram,0x004003b7)
void deregister_tm_clones(void){ return; }



// WARNING: Removing unreachable block (ram,0x004003ef)
// WARNING: Removing unreachable block (ram,0x004003f9)
void register_tm_clones(void){ return; }

void __do_global_dtors_aux(void){
  if (completed_0 == '\0') {
    deregister_tm_clones();
    completed_0 = 1;
    return;
  }
  return;
}


void frame_dummy(void){
  register_tm_clones();
  return;
}

// add(int, int)
int add(int param_1,int param_2){
  return param_2 + param_1;
}

// multiply(int, int)
int multiply(int param_1,int param_2){
  return param_1 * param_2;
}

undefined8 main(void){
  add(10,0x14);
  multiply(3,4);
  return 0;
}

void _fini(void){ return; }
```

## Comenzi folosite

Acestea sunt comenzile pe care le-am folosit pentru a genera celelalte fisiere

```bash
clang++ -Xclang -ast-dump -fsyntax-only exemplu.cpp > ast.txt
```

```bash
clang++ -S -emit-llvm exemplu.cpp -o exempluReprezentareIntermediara.ll
```

```bash
clang++ -c -emit-llvm exemplu.cpp -o exempluBiteCode.bc
```

```bash
clang++ -S exemplu.cpp -o exempluASM.s
```

```bash
clang++ -c *.cpp -o exempluObjectFile.o
```

```bash
clang++ -O2 -S -masm=intel 
    -fno-inline 
    -fno-lto 
    exemplu.cpp -o exempluASMO2.s
```

```bash
clang++ -O0 -S -masm=intel exemplu.cpp -o exempluSimpluASM.s
```

```bash
cp /usr/include/c++/$(g++ -dumpversion)/cmath ./
```
