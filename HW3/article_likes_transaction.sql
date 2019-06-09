/*
	Логика работы с лайками такая:
	- Пользовытель кликает на иконку. В запрос передается два айдишника (user_id, article_id).
	- Если он уже лайкал эту статью - нужно удалить лайк, если нет - добавить.
	Вышло немного костыльно, но работает.
*/

BEGIN;
WITH inserted AS (
  INSERT INTO article_likes VALUES (1, 1)
  ON CONFLICT DO NOTHING
  RETURNING *
)

DELETE FROM article_likes
WHERE user_id = 1 AND article_id = 1
	AND NOT EXISTS (SELECT 1 FROM inserted);
COMMIT;
