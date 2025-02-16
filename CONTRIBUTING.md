# Linee guida per i contributi

Grazie per il tuo interesse a contribuire a questo progetto! Segui queste linee guida per contribuire in modo efficace.

## Come contribuire tramite issue

Se vuoi contribuire creando nuove domande per una materia, per favore segui questi passaggi:

1. **Apri una nuova issue**: Vai alla pagina delle [issue](https://github.com/UnicalLoveTelegram/IndiceArgomentiOrale/issues) del repository e clicca su "New Issue".
2. **Titolo dell'issue**: Nel titolo dell'issue, includi la materia, l'anno e il professore.
    ```markdown
    [Materia] - Anno - Professore
    ```
3. **Descrizione dell'issue**: Nella descrizione dell'issue, elenca le domande richieste.
    ```markdown
    ## Domande richieste
    1. Domanda 1
    2. Domanda 2
    3. Domanda 3
    ```

## Come contribuire tramite Pull up request

1. **Fork del repository**: Crea un fork del repository cliccando sul pulsante "Fork" in alto a destra.
2. **Clona il repository**: Clona il tuo fork sul tuo computer locale.
    ```bash
    git clone https://github.com/tuo-username/IndiceArgomentiOrale.git
    ```
3. **Crea un branch**: Crea un nuovo branch per il tuo contributo.
    ```bash
    git checkout -b nome-del-branch
    ```
4. **Apporta le modifiche**: Apporta le modifiche necessarie nel tuo branch.
5. **Commit dei cambiamenti**: Fai il commit delle tue modifiche con un messaggio chiaro e descrittivo.
    ```bash
    git commit -m "Descrizione delle modifiche"
    ```
6. **Pusha le modifiche**: Pusha il branch con le tue modifiche sul tuo fork.
    ```bash
    git push origin nome-del-branch
    ```
7. **Crea una Pull Request**: Crea una Pull Request sul repository originale e descrivi le modifiche apportate.

## Codice di condotta

Assicurati di rispettare il codice di condotta del progetto.

## Stile di codifica

- Segui lo stile di codifica già presente nel progetto.
- Assicurati che il tuo codice sia ben commentato e leggibile.

Dovete tenere conto che il file è scritto in **Markdown** con sintassi <u>mista a HTML</u>
segue un esempio:

```markdown
# TITOLO 1
## TITOLO 2
### TITOLO 3 
#### TITOLO 4

**testo in grassetto**
*testo in corsivo*
~~testosbarrato~~

- lista
- con i punti
	- innescati
	- basta un tab prima del trattino

1. lista
2. numerata

<u>testo sottolineato</u>

i tre underscore qui sotto
___
creeranno una linea lunga tutto il paragrafo

`codice in linea`

​```
codice a blocco anonimo
​```

​```java
public class Java { 
	codice a blocco con sintassi di java 
	( dei buoni renderer  di markdown evidenzieranno la sintassi)
}
​```

> questo sarà messo in un box
> stile citazione

Le lettere accentate possono essere scritte anche come: 

a accentata = &agrave;
e accentata = &egrave;
i accentata = &igrave;
o accentata = &ograve;
u accentata = &ugrave;

```

Per la stilatura di markdown, consiglio il software [Typora
](https://typora.io) Oppure l'estesione `AllInOneMarkdown` per [Visual Studio Code](https://code.visualstudio.com/)

Ma esistono comunque altri software validi.  

Quanto riguarda i metodi utilizzati dal nostro team, **scriveremo il software con Visual Studio Code** e _genereremo il pdf con Typora_ per ottenere quello che secondo noi è il risultato più ottimale per leggibilità sia online che su pdf  

Il tema utilizzato da noi su Typora lo trovate qui: [purple theme](https://github.com/UnicalLoveTelegram/typora-purple-theme/blob/master/purple.css)


#### Alcuni consigli di buona scrittura

-   Lasciare almeno un rigo vuoto tra un titolo e un altro
-   meglio utilizzare gli elenchi puntati per dividere una testimonianza da un altra
-   meglio utilizzare codice inline o grassetto


Grazie per il tuo contributo!
