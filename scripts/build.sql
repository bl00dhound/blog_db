CREATE OR REPLACE FUNCTION upd_updated_at() RETURNS TRIGGER
    LANGUAGE plpgsql
AS
$$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$;

create table languages
(
	id smallserial not null
		constraint languages_pkey
			primary key,
	"iso_639-1" varchar(255),
	title varchar(255)
);

comment on table languages is 'Dictionary for available languages.';

comment on column languages."iso_639-1" is 'iso-631-1 view ("en")';

comment on column languages.title is 'full name of language';

alter table languages owner to dataroot;

create table timezones
(
	id smallserial not null
		constraint timezones_pkey
			primary key,
	title varchar(255)
);

comment on table timezones is 'List of available timezones.';

comment on column timezones.title is 'name of timezone ("Europe/Kiev")';

alter table timezones owner to dataroot;

create table user_statuses
(
	id smallserial not null
		constraint user_statuses_pkey
			primary key,
	title varchar(255)
);

comment on column user_statuses.title is 'name of status';

alter table user_statuses owner to dataroot;

create table roles
(
	id smallserial not null
		constraint roles_pkey
			primary key,
	title varchar(255)
);

comment on table roles is 'Available roles.';

comment on column roles.title is 'name of role';

alter table roles owner to dataroot;

create table permissions
(
	id smallserial not null
		constraint permissions_pkey
			primary key,
	title varchar(255)
);

comment on table permissions is 'List of permissions.';

comment on column permissions.title is 'name of permission';

alter table permissions owner to dataroot;

create table role_to_permission
(
	role_id integer not null
		constraint fk_role_to_permission_permissions_1
			references permissions,
	permission_id integer not null
		constraint fk_role_to_permission_roles_1
			references roles
);

comment on table role_to_permission is 'Mapping role to permissions. One to many.';

comment on column role_to_permission.role_id is 'reference to role';

comment on column role_to_permission.permission_id is 'reference to permission';

alter table role_to_permission owner to dataroot;

create table article_statuses
(
	id smallserial not null
		constraint article_statuses_pkey
			primary key,
	title varchar(255)
);

comment on table article_statuses is 'Statuses for articles. For example, "on moderation", "publish", "banned" etc.';

comment on column article_statuses.title is 'name of article status';

alter table article_statuses owner to dataroot;

create table tags
(
	id serial not null
		constraint tags_pkey
			primary key,
	title varchar(255) not null
);

comment on table tags is 'List of available tags of articles.';

comment on column tags.title is 'name of tag';

alter table tags owner to dataroot;

create table article_categories
(
	id smallserial not null
		constraint article_categories_pkey
			primary key,
	title varchar(255)
);

comment on table article_categories is 'Categories that uses in articles';

comment on column article_categories.title is 'name of category';

alter table article_categories owner to dataroot;

create table thread_priorities
(
	id smallserial not null
		constraint thread_priorities_pkey
			primary key,
	title varchar(255)
);

comment on table thread_priorities is 'Dictionary of thread priorities. User can set priority of thread for emergency messages.';

comment on column thread_priorities.title is 'kind of priority';

alter table thread_priorities owner to dataroot;

create table threads_statuses
(
	id smallserial not null
		constraint threads_statuses_pkey
			primary key,
	title varchar(255)
);

comment on table threads_statuses is 'Dictionary with threads statuses. Threads can be "closed" for example if problem of user was resolved.';

comment on column threads_statuses.title is 'name of thread status';

alter table threads_statuses owner to dataroot;

create table user_internal_statuses
(
	id smallserial not null
		constraint user_internal_statuses_pkey
			primary key,
	title varchar(255) not null
);

comment on table user_internal_statuses is 'List of user internal statuses that used for system defining.';

comment on column user_internal_statuses.title is 'name of internal status';

alter table user_internal_statuses owner to dataroot;

create table users
(
	id serial not null
		constraint users_pkey
			primary key,
	created_at timestamp with time zone default now() not null,
	updated_at timestamp with time zone default now() not null,
	removed_at timestamp with time zone,
	email varchar(255) not null,
	phone varchar(255),
	password varchar(255) not null,
	status_id integer not null
		constraint fk_users_user_statuses_1
			references user_statuses,
	language_id integer not null
		constraint fk_users_languages_1
			references languages,
	timezone_id integer not null
		constraint fk_users_timezones_1
			references timezones,
	nickname varchar(255) not null,
	birthday date,
	image varchar(255),
	internal_status_id integer
		constraint fk_users_user_types_1
			references user_internal_statuses
);

comment on table users is 'User entity.';

comment on column users.created_at is 'date of create';

comment on column users.updated_at is 'date of last change';

comment on column users.removed_at is 'date of remove or ban';

comment on column users.email is 'email of user that needs for registration';

comment on column users.phone is 'not required fields with phone-number';

comment on column users.password is 'hash of password';

comment on column users.status_id is 'reference to user status';

comment on column users.language_id is 'reference to language';

comment on column users.timezone_id is 'reference to user timezone';

comment on column users.nickname is 'user nickname';

comment on column users.birthday is 'date of birth';

comment on column users.image is 'link to avatar';

comment on column users.internal_status_id is 'reference to internal user status';

alter table users owner to dataroot;

CREATE TRIGGER t_users_upd
    BEFORE UPDATE
    ON users
    FOR EACH ROW
EXECUTE PROCEDURE upd_updated_at();

create table user_to_role
(
	user_id integer not null
		constraint fk_user_to_role_users_1
			references users,
	role_id integer not null
		constraint fk_user_to_role_roles_1
			references roles,
	created_at timestamp with time zone default now() not null
);

comment on table user_to_role is 'Mapping user to role.';

comment on column user_to_role.user_id is 'reference to user';

comment on column user_to_role.role_id is 'reference to role';

comment on column user_to_role.created_at is 'date of creation';

alter table user_to_role owner to dataroot;

create table articles
(
	id serial not null
		constraint articles_pkey
			primary key,
	created_at timestamp with time zone default now() not null,
	updated_at timestamp with time zone default now() not null,
	removed_at timestamp with time zone,
	title varchar(1024),
	content text,
	author_id integer not null
		constraint fk_articles_users_1
			references users,
	article_status_id integer
		constraint fk_articles_article_statuses_1
			references article_statuses,
	language_id integer
		constraint fk_articles_languages_1
			references languages,
	category_id integer
		constraint fk_articles_categories_1
			references article_categories,
	image varchar(255)
);

CREATE TRIGGER t_articles_upd
    BEFORE UPDATE
    ON articles
    FOR EACH ROW
EXECUTE PROCEDURE upd_updated_at();

comment on table articles is 'Article entity.';

comment on column articles.created_at is 'date of creation';

comment on column articles.updated_at is 'date of last update';

comment on column articles.removed_at is 'date of removing article';

comment on column articles.title is 'name of article';

comment on column articles.content is 'content of article';

comment on column articles.author_id is 'reference to author of article';

comment on column articles.article_status_id is 'reference to article status';

comment on column articles.language_id is 'reference to language';

comment on column articles.category_id is 'regerenct to article category';

comment on column articles.image is 'link to the image';

alter table articles owner to dataroot;

create table tags_to_articles
(
	article_id integer not null
		constraint fk_tags_to_articles_articles_1
			references articles,
	tags_id integer not null
		constraint fk_tags_to_articles_tags_1
			references tags
);

comment on table tags_to_articles is 'Mapping tags to articles.';

comment on column tags_to_articles.article_id is 'reference to article';

comment on column tags_to_articles.tags_id is 'reference to tag';

alter table tags_to_articles owner to dataroot;

create table comments
(
	id serial not null
		constraint comments_pkey
			primary key,
	created_at timestamp with time zone default now() not null,
	updated_at timestamp with time zone default now() not null,
	removed_at timestamp with time zone,
	author_id integer not null
		constraint fk_comments_users_1
			references users,
	article_id integer not null
		constraint fk_comments_articles_1
			references articles,
	parent_id integer
		constraint fk_comments_comments_1
			references comments,
	content text
);

CREATE TRIGGER t_comments_upd
    BEFORE UPDATE
    ON comments
    FOR EACH ROW
EXECUTE PROCEDURE upd_updated_at();

comment on table comments is 'Comment entity. Can be relative on parent comment (needed for creating recursive tree of comments with answers).';

comment on column comments.created_at is 'date of creating comment';

comment on column comments.updated_at is 'date of last updating';

comment on column comments.removed_at is 'date of removing';

comment on column comments.author_id is 'user that create comment';

comment on column comments.article_id is 'reference to article';

comment on column comments.parent_id is 'reference to parent comment for recursive showing';

comment on column comments.content is 'main content of comment';

alter table comments owner to dataroot;

create table article_likes
(
	user_id integer not null
		constraint fk_likes_users_1
			references users,
	article_id integer not null
		constraint fk_likes_articles_1
			references articles,
	constraint article_likes_user_id_comment_id_unique
		unique (user_id, article_id)
);

comment on table article_likes is 'Table for likes. Contains user and article reference. User can like (add row) and unlike (delete row) article.';

comment on column article_likes.user_id is 'user reference';

alter table article_likes owner to dataroot;

create table comment_likes
(
	user_id integer not null
		constraint fk_comment_likes_users_1
			references users,
	comment_id integer not null
		constraint fk_comment_likes_comments_1
			references comments,
	constraint comment_likes_user_id_comment_id_unique
		unique (user_id, comment_id)
);

comment on table comment_likes is 'Table for comment likes. User can add (create row) or remove (delete row) only one like.';

comment on column comment_likes.user_id is 'reference to user';

comment on column comment_likes.comment_id is 'regerence to comment';

alter table comment_likes owner to dataroot;

create table followers
(
	follower_id integer not null
		constraint fk_followers_users_1
			references users,
	author_id integer not null
		constraint fk_followers_users_2
			references users
);

comment on table followers is 'Realisation of ability for subscribing to another user activity (publish new articles).';

comment on column followers.follower_id is 'reference to user that want to subscribe';

comment on column followers.author_id is 'publisher';

alter table followers owner to dataroot;

create table threads
(
	id serial not null
		constraint threads_pkey
			primary key,
	created_at timestamp with time zone default now() not null,
	priority_id integer not null
		constraint fk_threads_thread_priorities_1
			references thread_priorities,
	user_id integer not null
		constraint fk_threads_users_1
			references users,
	admin_id integer not null
		constraint fk_threads_users_2
			references users,
	status_id integer not null
		constraint fk_threads_threads_statuses_1
			references threads_statuses
);

comment on table threads is 'Chat-room with user and admin.';

comment on column threads.created_at is 'date of creating';

comment on column threads.priority_id is 'reference to priority';

comment on column threads.user_id is 'reference to user';

comment on column threads.admin_id is 'reference to user with role admin';

alter table threads owner to dataroot;

create table threads_messages
(
	id serial not null
		constraint threads_messages_pkey
			primary key,
	thread_id integer not null
		constraint fk_threads_messages_threads_1
			references threads,
	created_at timestamp with time zone default now() not null,
	updated_at timestamp with time zone default now() not null,
	removed_at timestamp with time zone,
	user_id integer not null
		constraint fk_threads_messages_users_1
			references users,
	content text
);

CREATE TRIGGER t_threads_messages_upd
    BEFORE UPDATE
    ON threads_messages
    FOR EACH ROW
EXECUTE PROCEDURE upd_updated_at();

comment on table threads_messages is 'Messages inside threads between users and admins.';

comment on column threads_messages.thread_id is 'reference to chat-room';

comment on column threads_messages.created_at is 'date of creating';

comment on column threads_messages.updated_at is 'date of last updating';

comment on column threads_messages.removed_at is 'date of removing';

comment on column threads_messages.user_id is 'reference to user that create message';

comment on column threads_messages.content is 'content of message';

alter table threads_messages owner to dataroot;

create table log_actions
(
	id smallserial not null
		constraint log_actions_pkey
			primary key,
	title varchar(255)
);

comment on table log_actions is 'List of available log actions.';

comment on column log_actions.title is 'name of action';

alter table log_actions owner to dataroot;

create table logs
(
	created_at timestamp with time zone default now() not null,
	action_id integer not null
		constraint fk_logs_log_actions_1
			references log_actions,
	user_id integer
		constraint fk_logs_users_1
			references users,
	admin_id integer
		constraint fk_logs_users_2
			references users,
	thread_id integer
		constraint fk_logs_threads_1
			references threads,
	article_id integer
		constraint fk_logs_articles_1
			references articles,
	comment_id integer
		constraint fk_logs_comments_1
			references comments,
	metadata jsonb not null
);

comment on table logs is 'Realization of simple log system. For controlling some users activities.';

comment on column logs.created_at is 'date of creation event';

comment on column logs.action_id is 'reference to log-action';

comment on column logs.user_id is 'reference to user that was envolved or that was used in the action';

comment on column logs.admin_id is 'reference to user with admin role that create action';

comment on column logs.thread_id is 'reference to thread if its entity was used in the action';

comment on column logs.article_id is 'reference to article_id if this entity was used in the action';

comment on column logs.comment_id is 'reference to comment_id if this entity was used in the action';

comment on column logs.metadata is 'additional fields for action that don''t have strictly structure';

alter table logs owner to dataroot;
