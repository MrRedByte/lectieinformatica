# Plan de lecție – Informatică, clasa a X-a

## Structuri repetitive și prelucrarea cifrelor unui număr

- **Clasa:** a X-a
- **Disciplina:** Informatică și TIC
- **Unitatea de învățare:** Structuri de control / Algoritmi elementari (recapitulare și consolidare înaintea tablourilor unidimensionale)
- **Tema lecției:** Structuri repetitive (`while`, `do-while`, `for`) – sintaxă, aplicabilitate și depanare
- **Tipul lecției:** Predare și formare de priceperi și deprinderi
- **Durata:** 50 de minute
- **Mediul de programare:** C++ (Code::Blocks / MinGW)
- **Forma de organizare:** Frontală, individuală și pe grupe

---

## 1. Competențe specifice și obiective operaționale

### Competențe specifice vizate

- Identificarea structurilor de control adecvate pentru rezolvarea unei probleme date.
- Utilizarea corectă a operatorilor limbajului C++ în expresii logice și de atribuire.
- Depanarea și corectarea erorilor de sintaxă și de logică dintr-un program C++.

### Obiective operaționale

La sfârșitul orei, elevii vor fi capabili:

- **O1:** Să scrie corect sintaxa celor trei structuri repetitive din C++ (`while`, `do-while`, `for`) și să precizeze când se utilizează fiecare.
- **O2:** Să diferențieze operatorul de atribuire (`=`) de operatorul relațional de egalitate (`==`), anticipând efectul confuziei dintre aceștia într-o condiție de buclă.
- **O3:** Să identifice problemele clasice rezolvabile prin structuri repetitive (prelucrarea cifrelor unui număr, sume/produse, numărări, căutări).
- **O4:** Să depaneze și să corecteze un program C++ destinat calculării inversului (oglinditului) unui număr natural.

---

## 2. Resurse și strategii didactice

- **Metode și procedee:** Expunerea, conversația euristică, demonstrația practică la calculator/videoproiector, exercițiul de depanare (debugging), munca independentă și pe grupe.
- **Mijloace de învățământ:** Calculatoare conectate în rețea, videoproiector, mediul de dezvoltare C++, fișierele sursă `.cpp` pregătite de profesor (codul cu erori pentru oglindit + fișierele pentru temă).

---

## 3. Desfășurarea lecției (50 de minute)

| Etapa lecției                                                                   | Durată | Activitatea profesorului                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Activitatea elevilor                                                                                                                                      | Metode / Forme                                           |
| :------------------------------------------------------------------------------- | :-----: | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------- |
| **1. Moment organizatoric**                                                |  2 min  | Verifică prezența, asigură liniștea și pregătirea stațiilor de lucru (deschiderea mediului C++ și a folderului cu fișierele lecției).                                                                                                                                                                                                                                                                                                                                                                             | Se pregătesc pentru oră, deschid mediul de programare și accesează fișierele indicate.                                                               | Frontală                                                |
| **2. Captarea atenției și prezentarea sintaxei**                         | 12 min | Prezintă sintaxa celor trei instrucțiuni repetitive (`while`, `do-while`, `for`) și explică diferența dintre structura cu număr necunoscut de pași (test inițial vs. test final) și cea cu număr cunoscut de pași. Prezintă categoriile de probleme rezolvate prin aceste bucle (prelucrarea cifrelor unui număr, sume/produse, numărări, parcurgeri).                                                                                                                                                 | Notează schemele sintactice, adresează întrebări și oferă exemple de probleme în care se folosește fiecare tip de buclă.                         | Expunerea, conversația euristică (Frontală)           |
| **3. Demonstrație practică: `=` vs `==`**                            |  8 min  | Rulează un scurt exemplu demonstrativ în C++ pentru a arăta diferența dintre atribuire (`x = 5`) și testul de egalitate (`x == 5`). Arată concret cum scrierea `while (x = 1)` sau `if (n = 0)` duce fie la o buclă infinită, fie la neexecutarea blocului de instrucțiuni, explicând valoarea de adevăr a unei expresii de atribuire în C++.                                                                                                                                                           | Urmăresc demonstrația, anticipează rezultatul rulării și notează regula de evitare a acestei erori frecvente.                                       | Demonstrația practică (Frontală)                      |
| **4. Activitate practică: Depanarea codului pentru inversul unui număr** | 22 min | Distribuie fișierul `.cpp` care conține o implementare greșită pentru inversul (oglinditul) unui număr. Împarte elevii în grupe de câte 2–3 sau îi coordonează frontal/individual pentru a identifica erorile de sintaxă și de logică (ex. neinițializarea variabilei `inv = 0`, condiția greșită a buclei, ordinea operațiilor `inv = inv * 10 + n % 10; n /= 10;` sau confuzia `=` / `==`). Corectează codul împreună cu clasa și testează pe cazuri limită (`123`, `100`, `0`). | Analizează codul sursă, identifică erorile, modifică programul în C++, compilează și verifică rezultatele pe mai multe seturi de date de intrare. | Exercițiul de depanare, munca pe grupe și individuală |
| **5. Fixarea cunoștințelor și tema pentru acasă**                      |  6 min  | Sintetizează concluziile orei (alegerea buclei potrivite, atenția la `=` vs `==`, inițializarea variabilelor). Prezintă celelalte fișiere `.cpp` din folder ca temă pentru acasă, explicând cerința fiecăruia.                                                                                                                                                                                                                                                                                              | Notează tema pentru acasă și cer eventuale lămuriri privind cerințele fișierelor `.cpp`.                                                          | Conversația, explicația (Frontală)                    |

---

## 4. Schița tablei / Suport teoretic și practic

### A. Sintaxa structurilor repetitive în C++

1. **Structura repetitivă cu test inițial (`while`)** – utilizată când numărul de pași nu este cunoscut dinainte (ex. prelucrarea cifrelor unui număr):

```cpp
while (conditie) {
    // instructiuni executate cat timp conditia este adevarata
}
```

2. **Structura repetitivă cu test final (`do-while`)** – instrucțiunile se execută **cel puțin o dată** (ex. validarea datelor de intrare, prelucrarea numărului `0`):

```cpp
do {
    // instructiuni
} while (conditie);
```

3. **Structura repetitivă cu număr cunoscut de pași (`for`)** – utilizată pentru parcurgeri pe intervale cunoscute (și ulterior pentru tablouri unidimensionale):

```cpp
for (initializare; conditie; pas) {
    // instructiuni
}
```

### B. Ce probleme rezolvăm cu structuri repetitive?

- **Prelucrarea cifrelor unui număr:** suma cifrelor, numărul de cifre, cifra maximă/minimă, oglinditul (inversul) unui număr, verificarea proprietății de palindrom.
- **Calcule iterative:** sume, produse ($n!$), puteri ($a^b$), determinarea divizorilor unui număr, verificarea primalității, algoritmul lui Euclid (CMMDC).
- **Prelucrarea șirurilor de valori citite de la tastatură** (până la întâlnirea unei valori santinelă, ex. `0`) și **parcurgerea vectorilor**.

### C. Diferența dintre `=` și `==`

- `a = b` (**operator de atribuire**): copiază valoarea lui `b` în variabila `a`. Expresia returnează noua valoare a lui `a` (considerată `true` în C++ dacă este diferită de `0` și `false` dacă este `0`).
- `a == b` (**operator relațional de egalitate**): compară cele două valori și returnează `true` (1) dacă sunt egale sau `false` (0) în caz contrar, fără a modifica variabilele.
- **Capcană frecventă:** `while (n = 1)` va atribui mereu valoarea `1` lui `n` și va genera o **buclă infinită**, în timp ce `while (n = 0)` nu va intra niciodată în buclă.

### D. Exemplu de depanare – Inversul (oglinditul) unui număr

**Varianta cu erori (de analizat la clasă):**

```cpp
#include <iostrim>
usin namespacie std;;;;;;;;;;;;;;;;;;

int main() {
    float n, copieN, invers = 0;

    # includ <palindrom>
    cin << copieN;
    copieN = n;

    for(n 
        == 
        0++) {
        n = invers * 5 + copieN % 10;
        invers /= 2;
    }

    cin << "Inversul numarului " >> invers
         <> " este: " >< copien;

    return 0;
}
```

**Varianta corectată:**

```cpp
#include <iostream>
using namespace std;

int main() {
    int n, copieN, invers = 0;

    cin >> n;
    copieN = n;

    while(n != 0) {
        invers = invers * 10 + n % 10;
        n /= 10;
    }

    cout << "Inversul numarului " << copieN
         << " este: " << invers;

    return 0;
}
```

---

## 5. Tema pentru acasă

- Rezolvarea și/sau depanarea celorlalte fișiere `.cpp` distribuite în folderul lecției (ex. suma cifrelor, verificarea palindromului, numărul de cifre pare), respectând regulile discutate la clasă privind inițializarea variabilelor și utilizarea operatorilor `=` și `==`.
