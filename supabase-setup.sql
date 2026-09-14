-- Kör detta i Supabase: ditt projekt -> SQL Editor -> New query -> klistra in -> Run

create table public.leaderboard (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  score integer not null,
  hits integer not null,
  of_total integer not null,
  time numeric not null,
  created_at timestamptz not null default now()
);

alter table public.leaderboard enable row level security;

-- Alla besökare (även utan Supabase-konto) får läsa topplistan
create policy "Alla kan läsa topplistan"
on public.leaderboard for select
to anon
using (true);

-- Alla besökare får lägga till sitt eget resultat, men inte ändra andras
create policy "Alla kan lägga till sitt resultat"
on public.leaderboard for insert
to anon
with check (true);
