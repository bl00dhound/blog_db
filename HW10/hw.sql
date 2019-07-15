-- рекурсивная выборка комментариев по parent_id до 4-го уровня вложенности
with recursive cte (id, created_at, removed_at, author_id, article_id, content, parent, depth) as (
	select id,
	       created_at,
	       removed_at,
	       author_id,
	       article_id,
	       content,
				 json_build_object('id', id, 'author_id', author_id, 'article_id', article_id, 'parent_id', parent_id, 'content', content)::jsonb as parent,
	       1 as depth
  from comments
  where parent_id is null
  union all
  select comments.id,
         comments.created_at,
         comments.removed_at,
         comments.author_id,
         comments.article_id,
         comments.content,
        case when cte.depth = 1 then jsonb_set(cte.parent, '{parent_id}', to_jsonb(comments)::jsonb, false)
          when cte.depth = 2 then jsonb_set(cte.parent, '{parent_id, parent_id}', to_jsonb(comments)::jsonb, false)
          else null end
          as parent,
        cte.depth + 1 as depth
  from comments
  join cte on comments.parent_id = cte.id
)

select * from cte;