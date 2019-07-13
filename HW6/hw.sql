-- 2. Запросы на insert с использованием Select
insert into logs (created_at, action_id, user_id, article_id, comment_id, metadata)
	select created_at,
         5 as action_id,
         author_id as user_id,
         article_id,
         id as comment_id,
         json_build_object('parent_id', parent_id)::json as metadata
    from comments
    order by created_at;

-- 3. Изменение данных UPDATE, UPDATE с использованием JOIN
update comments set removed_at = now() where id = 11;
update logs set action_id = (select distinct id from log_actions where title = 'remove_comment') where comment_id = 11;

-- 4. Delete
delete from logs where action_id in (select id from log_actions where title = 'add_comment');

-- 6. Merge – потренироваться и прочувствовать
-- В постгрес Merge нет, но есть ON CONFLICT
insert into users (email, phone, password, status_id, language_id, timezone_id, nickname, birthday, internal_status_id)
values ('use32@gmail.com', '+3333333333', '$2a$10$hZtXvEOtIs7mnZBroPepUeFj/xcEtCwRVkutbtsv9Q7SBQfYh4zzW', 2, 2, 3, 'new_nickname', '2015-07-06', 2)
on conflict(email) do update set
  email = EXCLUDED.email,
  phone = EXCLUDED.phone,
  password = '$2a$10$hZtXvEOtIs7mnZBroPepUeFj/xcEtCwRVkutbtsv9Q7SBQfYh4zzW',
  status_id = 2,
  language_id = 2,
  timezone_id = 3,
  nickname = 'new_nickname',
  birthday = '2015-07-06',
  internal_status_id = 2;