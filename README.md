
#  FreelanceFlow Database System

##  Descriere
Acest proiect implementează structura unei baze de date pentru o platformă de freelancing. Permite gestionarea utilizatorilor (clienți și freelanceri), postarea proiectelor, depunerea ofertelor și monitorizarea bugetelor.

##  Tehnologii folosite
* **MySQL** pentru stocarea și gestionarea datelor.
* **SQL** pentru interogări complexe și modelarea relațiilor.

##  Structura Bazei de Date
Sistemul este format din 3 tabele principale:
1. **Users**: Stochează profilurile și tipul de utilizator.
2. **Projects**: Gestionează anunțurile postate de clienți.
3. **Bids**: Face legătura între freelanceri și proiecte (Relație Many-to-Many).

##  Exemple de Interogări
Am inclus scripturi pentru analiza datelor, cum ar fi:
- Identificarea celor mai activi freelanceri.
- Calcularea valorii totale a pieței pentru proiectele deschise.
