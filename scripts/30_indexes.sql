/* Articles */
ALTER TABLE public.articles ALTER COLUMN language_id SET NOT NULL;
ALTER TABLE public.articles ALTER COLUMN article_status_id SET NOT NULL;
ALTER TABLE public.articles ALTER COLUMN "content" SET NOT NULL;
ALTER TABLE public.articles ALTER COLUMN title SET NOT NULL;
CREATE INDEX articles_author_id_idx ON public.articles (author_id);
CREATE INDEX articles_article_status_id_idx ON public.articles (article_status_id);
CREATE INDEX articles_language_id_idx ON public.articles (language_id);
CREATE INDEX articles_category_id_idx ON public.articles (category_id);
CREATE INDEX articles_created_at_idx ON public.articles (created_at);
CREATE INDEX articles_updated_at_idx ON public.articles (updated_at);
CREATE INDEX articles_removed_at_idx ON public.articles (removed_at);

COMMENT ON INDEX articles_author_id_idx IS 'Index for filtering by author_id';
COMMENT ON INDEX articles_article_status_id_idx IS 'Index for filtering by article_status in reports';
COMMENT ON INDEX articles_language_id_idx IS 'Index for filtering by language';
COMMENT ON INDEX articles_category_id_idx IS 'Index for filtering by category';
COMMENT ON INDEX articles_created_at_idx IS 'Index for filtering and ordering by date of creation';
COMMENT ON INDEX articles_updated_at_idx IS 'Index for filtering and ordering last edited articles';
COMMENT ON INDEX articles_removed_at_idx IS 'Index for filtering removed articles';

/* Article_likes */
CREATE INDEX article_likes_article_id_index ON article_likes (article_id);
CREATE INDEX article_likes_user_id_index ON article_likes (user_id);

COMMENT ON INDEX article_likes_user_id_comment_id_unique IS 'Composite index for logic with likes: 1) if like exists it need to be removed; 2) if not exists need to be inserted';
COMMENT ON INDEX article_likes_article_id_index IS 'Index for fast searching during insert or delete likes';
COMMENT ON INDEX article_likes_user_id_index IS 'Index for fast searching during insert or delete likes';

/* Comments */
CREATE INDEX comments_created_at_idx ON public."comments" (created_at);
CREATE INDEX comments_updated_at_idx ON public."comments" (updated_at);
CREATE INDEX comments_removed_at_idx ON public."comments" (removed_at);
CREATE INDEX comments_author_id_idx ON public."comments" (author_id);
CREATE INDEX comments_article_id_idx ON public."comments" (article_id);
CREATE INDEX comments_parent_id_idx ON public."comments" (parent_id);

COMMENT ON INDEX comments_created_at_idx IS 'Index for filtering and ordering by date of creation';
COMMENT ON INDEX comments_updated_at_idx IS 'Index for filtering and ordering last edited comments';
COMMENT ON INDEX comments_removed_at_idx IS 'Index for filtering removed comments';
COMMENT ON INDEX comments_author_id_idx IS 'Index for filtering by author_id';
COMMENT ON INDEX comments_article_id_idx IS 'Index for filtering by article';
COMMENT ON INDEX comments_parent_id_idx IS 'Index for fast finding and aggregating by parent_id';

/* Comment_likes */
CREATE INDEX comment_likes_comment_id_index ON comment_likes (comment_id);
CREATE INDEX comment_likes_user_id_index ON comment_likes (user_id);

COMMENT ON INDEX comment_likes_user_id_comment_id_unique IS 'Composite index for logic with likes: 1) if like exists it need to be removed; 2) if not exists need to be inserted';
COMMENT ON INDEX comment_likes_comment_id_index IS 'Index for fast searching during insert or delete likes';
COMMENT ON INDEX comment_likes_user_id_index IS 'Index for fast searching during insert or delete likes';

/* Followers */
CREATE INDEX followers_author_id_index ON followers (author_id);
CREATE INDEX followers_follower_id_index ON followers (follower_id);
CREATE UNIQUE INDEX followers_follower_id_author_id_uindex ON followers (follower_id, author_id);

COMMENT ON INDEX followers_author_id_index IS 'Index for fast filtering by author';
COMMENT ON INDEX followers_follower_id_index IS 'Index for fast filtering by follower';
COMMENT ON INDEX followers_follower_id_author_id_uindex IS 'Constraint for limiting pair follower-author';

/* Logs */
CREATE INDEX logs_created_at_idx ON public.logs (created_at);
CREATE INDEX logs_action_id_idx ON public.logs (action_id);
CREATE INDEX logs_user_id_idx ON public.logs (user_id);
CREATE INDEX logs_admin_id_idx ON public.logs (admin_id);
CREATE INDEX logs_thread_id_idx ON public.logs (thread_id);
CREATE INDEX logs_article_id_idx ON public.logs (article_id);
CREATE INDEX logs_comment_id_idx ON public.logs (comment_id);
CREATE INDEX logs_metadata_idx ON public.logs (metadata);

COMMENT ON INDEX logs_created_at_idx IS 'Index for filtering and ordering by date of creation';
COMMENT ON INDEX logs_action_id_idx IS 'Index for fast searching and aggregation by action';
COMMENT ON INDEX logs_user_id_idx IS 'Index for filtering by user';
COMMENT ON INDEX logs_admin_id_idx IS 'Index for filtering by admin';
COMMENT ON INDEX logs_thread_id_idx IS 'Index for finding and aggregate by thread';
COMMENT ON INDEX logs_article_id_idx IS 'Index for filtering by article';
COMMENT ON INDEX logs_comment_id_idx IS 'Index for filtering by comment';
COMMENT ON INDEX logs_metadata_idx IS 'index for searching inside JSON';

/* Tags_to_articles */
CREATE INDEX tags_to_articles_article_id_idx ON public.tags_to_articles (article_id);
CREATE INDEX tags_to_articles_tags_id_idx ON public.tags_to_articles (tags_id);
CREATE UNIQUE INDEX tags_to_articles_article_id_tags_id_unique_idx ON public.tags_to_articles (article_id,tags_id);

COMMENT ON INDEX tags_to_articles_article_id_idx IS 'Index for fast filtering articles by tags';
COMMENT ON INDEX tags_to_articles_tags_id_idx IS 'Index for fast filtering articles by tags';

/* Threads */
CREATE INDEX threads_created_at_idx ON public.threads (created_at);
CREATE INDEX threads_user_id_idx ON public.threads (user_id);
CREATE INDEX threads_admin_id_idx ON public.threads (admin_id);

COMMENT ON INDEX threads_created_at_idx IS 'Index for fast ordering by create_at';
COMMENT ON INDEX threads_user_id_idx IS 'Index for fast filtering by user_id';
COMMENT ON INDEX threads_admin_id_idx IS 'Index for fast filtering by admin_id';

/* Thread_messages */
CREATE INDEX threads_messages_thread_id_created_at_ids ON public.threads_messages (thread_id,created_at);

COMMENT ON INDEX threads_messages_thread_id_created_at_ids IS 'Index for fast ordering messages by date and thread_id of creation';

/* User_to_role */
CREATE UNIQUE INDEX user_to_role_user_id_idx ON public.user_to_role (user_id,role_id);

COMMENT ON INDEX user_to_role_user_id_idx IS 'Index for assigning only one role to user';

/* Users */
CREATE INDEX users_created_at_idx ON public.users (created_at);
CREATE INDEX users_updated_at_idx ON public.users (updated_at);
CREATE UNIQUE INDEX users_email_idx ON public.users (email);
CREATE UNIQUE INDEX users_nickname_idx ON public.users (nickname);

COMMENT ON INDEX users_created_at_idx IS 'Index for ordering by created user';
COMMENT ON INDEX users_updated_at_idx IS 'Index for ordering by last updated users';
COMMENT ON INDEX users_email_idx IS 'Unique index in required field';
COMMENT ON INDEX users_nickname_idx IS 'Unique index in required field';