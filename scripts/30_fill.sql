insert into user_statuses (title) values ('new'),('average'),('top');
insert into user_internal_statuses(title) values ('noob'),('prospect'),('active'),('archived');
insert into languages(title) values ('ru'),('en');
insert into article_categories(title) values ('science'),('review'),('movie'),('technical'),('music'),('celebreties'),('IT');
insert into article_statuses(title) values ('created'),('on_moderation'),('hidden'),('published'),('banned');
insert into log_actions (title) values ('login'),('create_article'),('logout'),('update_article'),('add_comment'),('remove_comment');
insert into permissions (title) values ('general'),('edit_user'),('login_user'),('ban_user'),('edit_article'),('moderate_article');
insert into roles (title) values ('user'),('writer'),('moderator'),('admin');
insert into threads_statuses(title) values ('open'),('closed'),('unanswered');

insert into timezones(title) values('Africa/Abidjan'),('Africa/Accra'),('Africa/Algiers'),('Africa/Bissau'),('Africa/Cairo'),('Africa/Casablanca'),('Africa/Ceuta'),('Africa/El_Aaiun'),('Africa/Johannesburg'),('Africa/Juba'),('Africa/Khartoum'),('Africa/Lagos'),('Africa/Maputo'),('Africa/Monrovia'),('Africa/Nairobi'),('Africa/Ndjamena'),('Africa/Tripoli'),('Africa/Tunis'),('Africa/Windhoek'),('America/Adak'),('America/Anchorage'),('America/Araguaina'),('America/Argentina/Buenos_Aires'),('America/Argentina/Catamarca'),('America/Argentina/Cordoba'),('America/Argentina/Jujuy'),('America/Argentina/La_Rioja'),('America/Argentina/Mendoza'),('America/Argentina/Rio_Gallegos'),('America/Argentina/Salta'),('America/Argentina/San_Juan'),('America/Argentina/San_Luis'),('America/Argentina/Tucuman'),('America/Argentina/Ushuaia'),('America/Asuncion'),('America/Atikokan'),('America/Bahia'),('America/Bahia_Banderas'),('America/Barbados'),('America/Belem'),('America/Belize'),('America/Blanc-Sablon'),('America/Boa_Vista'),('America/Bogota'),('America/Boise'),('America/Cambridge_Bay'),('America/Campo_Grande'),('America/Cancun'),('America/Caracas'),('America/Cayenne'),('America/Chicago'),('America/Chihuahua'),('America/Costa_Rica'),('America/Creston'),('America/Cuiaba'),('America/Curacao'),('America/Danmarkshavn'),('America/Dawson'),('America/Dawson_Creek'),('America/Denver'),('America/Detroit'),('America/Edmonton'),('America/Eirunepe'),('America/El_Salvador'),('America/Fort_Nelson'),('America/Fortaleza'),('America/Glace_Bay'),('America/Godthab'),('America/Goose_Bay'),('America/Grand_Turk'),('America/Guatemala'),('America/Guayaquil'),('America/Guyana'),('America/Halifax'),('America/Havana'),('America/Hermosillo'),('America/Indiana/Indianapolis'),('America/Indiana/Knox'),('America/Indiana/Marengo'),('America/Indiana/Petersburg'),('America/Indiana/Tell_City'),('America/Indiana/Vevay'),('America/Indiana/Vincennes'),('America/Indiana/Winamac'),('America/Inuvik'),('America/Iqaluit'),('America/Jamaica'),('America/Juneau'),('America/Kentucky/Louisville'),('America/Kentucky/Monticello'),('America/La_Paz'),('America/Lima'),('America/Los_Angeles'),('America/Maceio'),('America/Managua'),('America/Manaus'),('America/Martinique'),('America/Matamoros'),('America/Mazatlan'),('America/Menominee'),('America/Merida'),('America/Metlakatla'),('America/Mexico_City'),('America/Miquelon'),('America/Moncton'),('America/Monterrey'),('America/Montevideo'),('America/Nassau'),('America/New_York'),('America/Nipigon'),('America/Nome'),('America/Noronha'),('America/North_Dakota/Beulah'),('America/North_Dakota/Center'),('America/North_Dakota/New_Salem'),('America/Ojinaga'),('America/Panama'),('America/Pangnirtung'),('America/Paramaribo'),('America/Phoenix'),('America/Port-au-Prince'),('America/Port_of_Spain'),('America/Porto_Velho'),('America/Puerto_Rico'),('America/Punta_Arenas'),('America/Rainy_River'),('America/Rankin_Inlet'),('America/Recife'),('America/Regina'),('America/Resolute'),('America/Rio_Branco'),('America/Santarem'),('America/Santiago'),('America/Santo_Domingo'),('America/Sao_Paulo'),('America/Scoresbysund'),('America/Sitka'),('America/St_Johns'),('America/Swift_Current'),('America/Tegucigalpa'),('America/Thule'),('America/Thunder_Bay'),('America/Tijuana'),('America/Toronto'),('America/Vancouver'),('America/Whitehorse'),('America/Winnipeg'),('America/Yakutat'),('America/Yellowknife'),('Antarctica/Casey'),('Antarctica/Davis'),('Antarctica/DumontDUrville'),('Antarctica/Macquarie'),('Antarctica/Mawson'),('Antarctica/Palmer'),('Antarctica/Rothera'),('Antarctica/Syowa'),('Antarctica/Troll'),('Antarctica/Vostok'),('Asia/Almaty'),('Asia/Amman'),('Asia/Anadyr'),('Asia/Aqtau'),('Asia/Aqtobe'),('Asia/Ashgabat'),('Asia/Atyrau'),('Asia/Baghdad'),('Asia/Baku'),('Asia/Bangkok'),('Asia/Barnaul'),('Asia/Beirut'),('Asia/Bishkek'),('Asia/Brunei'),('Asia/Chita'),('Asia/Choibalsan'),('Asia/Colombo'),('Asia/Damascus'),('Asia/Dhaka'),('Asia/Dili'),('Asia/Dubai'),('Asia/Dushanbe'),('Asia/Famagusta'),('Asia/Gaza'),('Asia/Hebron'),('Asia/Ho_Chi_Minh'),('Asia/Hong_Kong'),('Asia/Hovd'),('Asia/Irkutsk'),('Asia/Jakarta'),('Asia/Jayapura'),('Asia/Jerusalem'),('Asia/Kabul'),('Asia/Kamchatka'),('Asia/Karachi'),('Asia/Kathmandu'),('Asia/Khandyga'),('Asia/Kolkata'),('Asia/Krasnoyarsk'),('Asia/Kuala_Lumpur'),('Asia/Kuching'),('Asia/Macau'),('Asia/Magadan'),('Asia/Makassar'),('Asia/Manila'),('Asia/Nicosia'),('Asia/Novokuznetsk'),('Asia/Novosibirsk'),('Asia/Omsk'),('Asia/Oral'),('Asia/Pontianak'),('Asia/Pyongyang'),('Asia/Qatar'),('Asia/Qyzylorda'),('Asia/Riyadh'),('Asia/Sakhalin'),('Asia/Samarkand'),('Asia/Seoul'),('Asia/Shanghai'),('Asia/Singapore'),('Asia/Srednekolymsk'),('Asia/Taipei'),('Asia/Tashkent'),('Asia/Tbilisi'),('Asia/Tehran'),('Asia/Thimphu'),('Asia/Tokyo'),('Asia/Tomsk'),('Asia/Ulaanbaatar'),('Asia/Urumqi'),('Asia/Ust-Nera'),('Asia/Vladivostok'),('Asia/Yakutsk'),('Asia/Yangon'),('Asia/Yekaterinburg'),('Asia/Yerevan'),('Atlantic/Azores'),('Atlantic/Bermuda'),('Atlantic/Canary'),('Atlantic/Cape_Verde'),('Atlantic/Faroe'),('Atlantic/Madeira'),('Atlantic/Reykjavik'),('Atlantic/South_Georgia'),('Atlantic/Stanley'),('Australia/Adelaide'),('Australia/Brisbane'),('Australia/Broken_Hill'),('Australia/Currie'),('Australia/Darwin'),('Australia/Eucla'),('Australia/Hobart'),('Australia/Lindeman'),('Australia/Lord_Howe'),('Australia/Melbourne'),('Australia/Perth'),('Australia/Sydney'),('Europe/Amsterdam'),('Europe/Andorra'),('Europe/Astrakhan'),('Europe/Athens'),('Europe/Belgrade'),('Europe/Berlin'),('Europe/Brussels'),('Europe/Bucharest'),('Europe/Budapest'),('Europe/Chisinau'),('Europe/Copenhagen'),('Europe/Dublin'),('Europe/Gibraltar'),('Europe/Helsinki'),('Europe/Istanbul'),('Europe/Kaliningrad'),('Europe/Kiev'),('Europe/Kirov'),('Europe/Lisbon'),('Europe/London'),('Europe/Luxembourg'),('Europe/Madrid'),('Europe/Malta'),('Europe/Minsk'),('Europe/Monaco'),('Europe/Moscow'),('Europe/Oslo'),('Europe/Paris'),('Europe/Prague'),('Europe/Riga'),('Europe/Rome'),('Europe/Samara'),('Europe/Saratov'),('Europe/Simferopol'),('Europe/Sofia'),('Europe/Stockholm'),('Europe/Tallinn'),('Europe/Tirane'),('Europe/Ulyanovsk'),('Europe/Uzhgorod'),('Europe/Vienna'),('Europe/Vilnius'),('Europe/Volgograd'),('Europe/Warsaw'),('Europe/Zaporozhye'),('Europe/Zurich'),('Indian/Chagos'),('Indian/Christmas'),('Indian/Cocos'),('Indian/Kerguelen'),('Indian/Mahe'),('Indian/Maldives'),('Indian/Mauritius'),('Indian/Reunion'),('Pacific/Apia'),('Pacific/Auckland'),('Pacific/Bougainville'),('Pacific/Chatham'),('Pacific/Chuuk'),('Pacific/Easter'),('Pacific/Efate'),('Pacific/Enderbury'),('Pacific/Fakaofo'),('Pacific/Fiji'),('Pacific/Funafuti'),('Pacific/Galapagos'),('Pacific/Gambier'),('Pacific/Guadalcanal'),('Pacific/Guam'),('Pacific/Honolulu'),('Pacific/Kiritimati'),('Pacific/Kosrae'),('Pacific/Kwajalein'),('Pacific/Majuro'),('Pacific/Marquesas'),('Pacific/Nauru'),('Pacific/Niue'),('Pacific/Norfolk'),('Pacific/Noumea'),('Pacific/Pago_Pago'),('Pacific/Palau'),('Pacific/Pitcairn'),('Pacific/Pohnpei'),('Pacific/Port_Moresby'),('Pacific/Rarotonga'),('Pacific/Tahiti'),('Pacific/Tarawa'),('Pacific/Tongatapu'),('Pacific/Wake'),('Pacific/Wallis'),('UTC');

INSERT INTO public.users (id, created_at, updated_at, removed_at, email, phone, password, status_id, language_id, timezone_id, nickname, birthday, image, internal_status_id) VALUES (2, '2019-07-11 19:04:13.626994', '2019-07-11 19:04:13.626994', null, 'user@gmail.com', '+380675435454', '$2a$10$hZtXvEOtIs7mnZBroPepUeFj/xcEtCwRVkutbtsv9Q7SBQfYh4zzW', 2, 1, 1, 'just_nickname', '2015-07-11', null, 1);
INSERT INTO public.users (id, created_at, updated_at, removed_at, email, phone, password, status_id, language_id, timezone_id, nickname, birthday, image, internal_status_id) VALUES (4, '2019-07-11 19:04:13.626994', '2019-07-11 19:04:13.626994', null, 'user2@gmail.com', '+3806444435454', '$2a$10$hZtXvEOtIs7mnZBroPepUeFj/xcEtCwRVkutbtsv9Q7SBQfYh4zzW', 2, 1, 1, 'just_nickname2222', '2015-07-06', null, 1);

INSERT INTO public.articles (id, created_at, updated_at, removed_at, title, content, author_id, article_status_id, language_id, category_id, image) VALUES (2, '2019-07-11 19:05:42.665985', '2019-07-11 19:05:42.665985', null, 'My perfect article', 'there is a lot of text', 2, 1, 1, 1, null);

INSERT INTO public.comments (id, created_at, updated_at, removed_at, author_id, article_id, parent_id, content) VALUES (3, '2019-07-11 19:08:23.717412', '2019-07-11 19:10:54.141569', null, 2, 2, null, '1_ Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.

Почему он используется?
Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).


Откуда он появился?
Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе. В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32

Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.

Где его взять?
Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.

5
	абзацев
	слов
	байтов
	списков
	Начать с ''Lorem ipsum dolor sit amet...''
');
INSERT INTO public.comments (id, created_at, updated_at, removed_at, author_id, article_id, parent_id, content) VALUES (5, '2019-07-11 19:08:27.717000', '2019-07-11 19:10:54.141569', null, 4, 2, 3, '1_2 является стандартной "рыбой" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.

Почему он используется?
Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).


Откуда он появился?
Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе. В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32

Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.

Где его взять?
Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.

5
	абзацев
	слов
	байтов
	списков
	Начать с ''Lorem ipsum dolor sit amet...''
');
INSERT INTO public.comments (id, created_at, updated_at, removed_at, author_id, article_id, parent_id, content) VALUES (6, '2019-07-11 19:08:30.717000', '2019-07-11 19:12:05.625024', null, 2, 2, 5, '1_3 Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.

Почему он используется?
Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).


Откуда он появился?
Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе. В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32

Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.

Где его взять?
Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.

5
	абзацев
	слов
	байтов
	списков
	Начать с ''Lorem ipsum dolor sit amet...''
');
INSERT INTO public.comments (id, created_at, updated_at, removed_at, author_id, article_id, parent_id, content) VALUES (7, '2019-07-11 19:08:27.717000', '2019-07-11 19:12:16.314367', null, 4, 2, null, '2_ Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.

Почему он используется?
Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).


Откуда он появился?
Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе. В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32

Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.

Где его взять?
Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.

5
	абзацев
	слов
	байтов
	списков
	Начать с ''Lorem ipsum dolor sit amet...''
');
INSERT INTO public.comments (id, created_at, updated_at, removed_at, author_id, article_id, parent_id, content) VALUES (8, '2019-07-11 19:10:27.717000', '2019-07-11 19:12:16.314367', null, 2, 2, 7, '2_2 Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.

Почему он используется?
Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).


Откуда он появился?
Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе. В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32

Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.

Где его взять?
Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.

5
	абзацев
	слов
	байтов
	списков
	Начать с ''Lorem ipsum dolor sit amet...''
');
INSERT INTO public.comments (id, created_at, updated_at, removed_at, author_id, article_id, parent_id, content) VALUES (9, '2019-07-11 20:09:31.717000', '2019-07-11 19:12:16.314367', null, 4, 2, 7, '2_3 Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.

Почему он используется?
Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).


Откуда он появился?
Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе. В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32

Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.

Где его взять?
Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.

5
	абзацев
	слов
	байтов
	списков
	Начать с ''Lorem ipsum dolor sit amet...''
');
INSERT INTO public.comments (id, created_at, updated_at, removed_at, author_id, article_id, parent_id, content) VALUES (10, '2019-07-11 20:09:31.717000', '2019-07-11 19:12:16.314367', null, 4, 2, null, '3 Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.

Почему он используется?
Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).


Откуда он появился?
Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе. В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32

Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.

Где его взять?
Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.

5
	абзацев
	слов
	байтов
	списков
	Начать с ''Lorem ipsum dolor sit amet...''
');
INSERT INTO public.comments (id, created_at, updated_at, removed_at, author_id, article_id, parent_id, content) VALUES (11, '2019-07-11 23:09:31.717000', '2019-07-11 19:12:16.314367', null, 4, 2, null, '4 Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.

Почему он используется?
Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).


Откуда он появился?
Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе. В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32

Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.

Где его взять?
Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.

5
	абзацев
	слов
	байтов
	списков
	Начать с ''Lorem ipsum dolor sit amet...''
');

\copy public.logs from docker-entrypoint-initdb.d/logs_dump.csv delimiter ',' quote '"' escape '\' csv header encoding 'latin1'