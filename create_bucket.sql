-- Создаем бакет для изображений
insert into storage.buckets (id, name)
values ('news-images', 'news-images');

-- Устанавливаем политики доступа для бакета
create policy "Public Access"
  on storage.objects for select
  using ( bucket_id = 'news-images' );

create policy "Authenticated users can upload images"
  on storage.objects for insert
  with check ( bucket_id = 'news-images' );

create policy "Owners can update and delete"
  on storage.objects for delete
  using ( bucket_id = 'news-images' ); 