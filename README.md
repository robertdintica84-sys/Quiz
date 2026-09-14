# Ralucas resor — quiz med gemensam topplista

Det här är en fristående version av fotoquizet. Ingen Claude ram, och topplistan är gemensam för alla som spelar, oavsett enhet, via en gratis Supabase-databas.

## 1. Skapa databasen i Supabase (ett par minuter)

1. Gå till supabase.com och skapa ett gratis konto/projekt om du inte redan har ett.
2. Öppna projektet, klicka på "SQL Editor" i vänstermenyn, välj "New query".
3. Klistra in innehållet från `supabase-setup.sql` (i den här mappen) och klicka "Run". Det skapar tabellen `leaderboard` och rättigheterna som gör att alla besökare kan läsa och lägga till resultat, utan att kunna ändra andras.
4. Gå till "Project Settings" -> "API". Kopiera "Project URL" och nyckeln under "anon public".

## 2. Koppla in nycklarna

Öppna `index.html` i en textredigerare och längst upp i `<script>` hittar du:

```js
const SUPABASE_URL = "YOUR-SUPABASE-PROJECT-URL";
const SUPABASE_ANON_KEY = "YOUR-SUPABASE-ANON-KEY";
```

Klistra in din Project URL och anon-nyckel där istället. Spara filen.

## 3. Lägg upp på GitHub Pages

Ditt repo: https://github.com/robertdintica84-sys/Quiz

Enklaste sättet, ingen git-kommandorad behövs:

1. Gå till repot på github.com, klicka "Add file" -> "Upload files".
2. Dra in `index.html`, `supabase-setup.sql` och hela mappen `photos` (med alla 37 bilder) från den här mappen till uppladdningsrutan.
3. Skriv ett kort commit-meddelande, klicka "Commit changes".
4. Gå till repots "Settings" -> "Pages". Under "Build and deployment", välj "Deploy from a branch", branch `main`, mapp `/ (root)`. Spara.
5. Efter någon minut visas en länk högst upp på samma sida, typ `https://robertdintica84-sys.github.io/Quiz/`. Det är din rena, egna URL, utan Claude ram.

Om du redan har GitHub Desktop eller `git` installerat går det förstås lika bra att klona repot lokalt och lägga filerna där istället.

## Filer i den här mappen

- `index.html` — själva quizet, fristående HTML/JS
- `supabase-setup.sql` — skapar databastabellen för topplistan
- `photos/` — de 36 quizbilderna plus Ralucas porträttbild
