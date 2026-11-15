# Plan de lecție – Informatică, clasa a X-a

## Tablouri unidimensionale (vectori)

* **Clasa:** a X-a
* **Disciplina:** Informatică și TIC
* **Unitatea de învățare:** Structuri de date – tablouri
* **Tema lecției:** Tablouri unidimensionale (vectori)
* **Tipul lecției:** Predare și formare de priceperi și deprinderi
* **Durata:** 50 de minute
* **Mediul de programare:** C++
* **Forma de organizare:** Frontală, individuală și pe grupe

---

### Obiective operaționale

La sfârșitul lecției, elevii vor fi capabili:

* Să definească noțiunea de tablou unidimensional (vector) și să identifice elementele componente (nume, tip, dimensiune, index).
* Să declare corect un vector în limbajul C++, stabilind dimensiunea maximă adecvată.
* Să scrie secvențele de cod pentru citirea de la tastatură și afișarea pe ecran a elementelor unui vector.
* Să implementeze parcurgerea unui vector pentru a rezolva prelucrări elementare (calculul sumei elementelor sau numărarea valorilor care respectă o condiție).

### Resurse și strategii didactice

* **Metode:** Conversația euristică, explicația, demonstrația practică, exercițiul.
* **Mijloace de învățământ:** Calculatoare conectate la rețea, mediul de dezvoltare (Code::Blocks sau MinGW), videoproiector, tablă.

---

### Desfășurarea lecției

| Etapele lecției | Durata | Activitatea profesorului | Activitatea elevilor | Forme de organizare |
| --- | --- | --- | --- | --- |
| **1. Moment organizatoric** | 2 min | Verifică prezența elevilor, notează absențele și se asigură că stațiile de lucru și mediul C++ sunt funcționale. | Se pregătesc pentru oră și deschid mediul de programare. | Frontală |
| **2. Captarea atenției și reactualizarea cunoștințelor** | 5 min | Propune o situație problemă: *Cum am putea memora notele a 30 de elevi pentru a le calcula media și a le afișa ulterior pe cele peste 8?* Evidențiază limitarea declarării a 30 de variabile distincte (`n1, n2, ...`). | Răspund la întrebări, observă dificultatea gestionării unui număr mare de variabile simple și propun ideea grupării datelor. | Frontală |
| **3. Anunțarea temei și a obiectivelor** | 3 min | Notează pe tablă titlul lecției (*Tablouri unidimensionale*) și prezintă pe scurt ce vor ști să facă la finalul orei. | Notează titlul în caiete și urmăresc prezentarea. | Frontală |
| **4. Dirijarea învățării (Predarea noilor cunoștințe)** | 15 min | Explică conceptul de vector ca o colecție omogenă de date memorate succesiv. Prezintă sintaxa declarării în C++ (`tip nume[dim_max];`), convenția de indexare de la `0` (sau de la `1`, după caz, subliniind alocarea memoriei) și structura repetitivă `for` folosită pentru citire și afișare. Rulează un exemplu demonstrativ pe proiector. | Notează sintaxa și regulile de indexare. Urmăresc demonstrația și adresează întrebări legate de depășirea dimensiunii declarate. | Frontală |
| **5. Fixarea cunoștințelor și formarea deprinderilor** | 20 min | Propune două sarcini de lucru progresive:<br>

<br>1. *Individual:* Să se citească un vector cu `n` numere întregi și să se afișeze în ordine inversă.<br>

<br>2. *Pe grupe (câte 2 elevi):* Să se calculeze suma elementelor pare și numărul elementelor pozitive dintr-un vector dat.<br>

<br>Monitorizează activitatea și oferă feedback punctual. | Rezolvă problemele în mediul C++, compilează, testează cu diverse seturi de date și corectează eventualele erori de sintaxă sau de logică (ex. limitele buclei `for`). | Individuală și pe grupe |
| **6. Evaluare și tema pentru acasă** | 5 min | Verifică soluțiile obținute de câteva echipe, apreciază activitatea prin note sau observații și dictează tema pentru acasă (o problemă de determinare a minimului/maximului dintr-un vector). | Notează tema, salvează fișierele sursă și închid stațiile de lucru. | Frontală |

---

### Schița tablei (Exemplu de cod C++)

```cpp
#include <iostream>
using namespace std;

int main() {
    int v[100], n, i; // Declarare vector cu max. 100 elemente
    
    cout << "n = "; 
    cin >> n; // Citirea dimensiunii efective
    
    // Citirea elementelor (indexare de la 0 la n-1)
    for (i = 0; i < n; i++) {
        cin >> v[i];
    }
    
    // Afisarea elementelor
    for (i = 0; i < n; i++) {
        cout << v[i] << " ";
    }
    
    return 0;
}

```