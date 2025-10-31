# Linee guida per i contributi

Grazie per il tuo interesse a contribuire! Questo repository ora pubblica un sito statico in Markdown con [MkDocs](https://www.mkdocs.org/) e viene distribuito automaticamente su GitHub Pages. Le sezioni seguenti spiegano come proporre idee, modifiche e come verificare il sito in locale.

## Modalità di contributo

### Aprire una issue

Se vuoi proporre nuove testimonianze, correggere contenuti esistenti o segnalare PDF da aggiornare, apri una nuova issue dalla pagina [Issues](https://github.com/UnicalLoveTelegram/IndiceArgomentiOrale/issues) e scegli il template più adatto:

- **Aggiunta di una testimonianza** per condividere nuove domande.
- **Correzione di una testimonianza** per aggiornare domande già presenti.
- **Generazione di un PDF** per chiedere la rigenerazione degli export.

Ricorda che le issue **non** modificano direttamente i file: servono come promemoria e discussione per poi procedere con la modifica effettiva (PR).

### Inviare una pull request

1. **Fork** del repository.
2. **Clona** il fork sul tuo computer:
   ```bash
   git clone https://github.com/tuo-username/IndiceArgomentiOrale.git
   cd IndiceArgomentiOrale
   ```
3. **Crea un branch** dedicato:
   ```bash
   git checkout -b nome-del-branch
   ```
4. \[Opzionale\] **Prepara l’ambiente** e avvia l’anteprima locale:
   ```bash
   make install
   make serve  # il sito sarà disponibile su http://127.0.0.1:8000
   ```
5. **Modifica i file Markdown**. Tutto il contenuto pubblicato vive nella cartella `docs/`:
   - `docs/laurea-triennale/` per i corsi LT
   - `docs/laurea-magistrale/` per i corsi LM
6. **Verifica il sito**. Prima di creare la PR assicurati che la build vada a buon fine:
   ```bash
   make build
   ```
7. **Commit e push** delle modifiche:
   ```bash
   git commit -am "Breve descrizione del contributo"
   git push origin nome-del-branch
   ```
8. **Apri la pull request** descrivendo chiaramente cosa hai cambiato e perché.

## Stile e formattazione delle testimonianze

- I file sono scritti in **Markdown** standard con qualche tocco HTML (ad esempio `<u>` per il testo sottolineato). Mantieni lo stesso stile esistente.
- Ogni testimonianza segue la gerarchia:
  1. Titolo H1 per il corso
  2. Titolo H2 per il docente
  3. Anno in grassetto e sottolineato (`**<u>2024/2025</u>**`)
  4. Elenco puntato con le domande
- Mantieni l’ordine alfabetico/cronologico già presente.
- Usa spazi anziché tab per indentare gli elenchi annidati.
- Se aggiungi termini in inglese, non tradurre i titoli degli insegnamenti già consolidati.

## Struttura del repository

- `docs/` contiene tutte le pagine pubblicate. Qualsiasi nuovo corso deve essere aggiunto qui e referenziato nel `mkdocs.yml`.
- `mkdocs.yml` definisce menu, tema e opzioni del sito. Aggiornalo se aggiungi nuove pagine.
- `Makefile` fornisce i comandi principali (`make install`, `make serve`, `make build`, `make clean`).
- `requirements.txt` elenca le dipendenze Python necessarie per MkDocs.
- `pdf/`, `pdfs/` e `Vecchio Indice/` conservano gli esporti in PDF e i materiali storici.

## Norme di condotta

- Rispetta gli altri collaboratori e mantieni un linguaggio appropriato.
- Evita di inserire dati personali o sensibili nelle testimonianze.
- Discuti nelle issue se hai dubbi sul formato o sul posizionamento dei contenuti.

Grazie ancora per il tuo contributo: mantenere aggiornato questo indice aiuta l’intera community! Se hai domande o vuoi suggerire miglioramenti alle linee guida, apri pure una issue dedicata. 


### Indice

L'indice viene automaticamente creato da MkDocs


#### Alcuni consigli di buona scrittura

-   Lasciare almeno un rigo vuoto tra un titolo e un altro
-   meglio utilizzare gli elenchi puntati per dividere una testimonianza da un altra
-   meglio utilizzare codice inline o grassetto


Grazie per il tuo contributo!
