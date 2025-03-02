-- Включаем RLS для таблицы news
alter table public.news enable row level security;

-- Политика для чтения (доступно всем)
create policy "Enable read access for all users"
on public.news for select
using (true);

-- Политика для вставки (доступно всем)
create policy "Enable insert access for all users"
on public.news for insert
with check (true);

-- Политика для удаления (доступно всем)
create policy "Enable delete access for all users"
on public.news for delete
using (true);

-- Политика для обновления (доступно всем)
create policy "Enable update access for all users"
on public.news for update
using (true); 