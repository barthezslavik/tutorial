-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 20 2013 г., 10:31
-- Версия сервера: 5.5.31-0ubuntu0.13.04.1
-- Версия PHP: 5.4.9-4ubuntu2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `tutorial1_development`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'терминал', '2013-05-18 13:17:44', '2013-05-18 18:48:42'),
(2, 'код', '2013-05-18 13:18:13', '2013-05-18 18:48:26'),
(3, 'браузер', '2013-05-18 18:48:20', '2013-05-18 18:48:20');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `snippet_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `content`, `snippet_id`, `created_at`, `updated_at`) VALUES
(1, 'В текущей папке появляется .git которая хранит всю служебную информацию о репозитории', 1, '2013-05-18 13:11:33', '2013-05-18 13:11:33'),
(4, 'v | F2 | Gemfile | 25 gem "simple_form"', 15, '2013-05-18 18:31:23', '2013-05-18 18:31:23'),
(6, 'v | F2 | Gemfile | 16 строка | gem "haml-rails"', 5, '2013-05-18 18:38:49', '2013-05-18 18:38:49'),
(7, 'полная комманда bundle install', 6, '2013-05-18 18:41:42', '2013-05-18 18:41:42'),
(8, 'http://railscasts.com/episodes/201-bundler', 6, '2013-05-18 18:41:48', '2013-05-18 18:41:48'),
(9, 'полная комманда rails s', 9, '2013-05-18 18:44:24', '2013-05-18 18:44:24'),
(10, 'Создаем удаленный репозиторий', 10, '2013-05-18 18:47:48', '2013-05-18 18:47:48'),
(11, 'Заполняем форму', 11, '2013-05-18 18:49:22', '2013-05-18 18:49:22'),
(12, 'имя репозитория tutorial', 12, '2013-05-18 18:50:44', '2013-05-18 18:50:44'),
(13, 'Имя пользователя с github''a', 13, '2013-05-18 18:51:58', '2013-05-18 18:51:58'),
(14, 'Синхронизация удаленного репозитория с локальным', 14, '2013-05-18 18:52:40', '2013-05-18 18:52:40'),
(15, 'полная команда bundle install', 16, '2013-05-18 18:53:24', '2013-05-18 18:53:24'),
(16, 'Генерятся файлы конфигов для simple_form', 17, '2013-05-18 18:54:05', '2013-05-18 18:54:05'),
(17, 'Shit + ← | Ctrl + C | s', 21, '2013-05-18 18:56:54', '2013-05-18 18:56:54'),
(18, 'Контроллер, модель, вьюшки', 19, '2013-05-18 18:58:43', '2013-05-18 18:58:43'),
(19, 'полная комманда rake db:migrate', 20, '2013-05-18 18:59:05', '2013-05-18 18:59:05'),
(20, 'http://twitter.github.io/bootstrap/', 22, '2013-05-18 23:49:30', '2013-05-18 23:49:30'),
(21, 'Подтягиваем гем', 24, '2013-05-19 00:14:59', '2013-05-19 00:14:59'),
(22, 'https://github.com/josevalim/inherited_resources/blob/master/README.rdoc', 32, '2013-05-19 22:10:07', '2013-05-19 22:10:07'),
(23, 'Все авто сгенерированые файлы тут https://github.com/barthezslavik/tutorial/commit/7685639ce40e774c96e9a77a7318b11745269798', 36, '2013-05-19 22:26:57', '2013-05-19 22:26:57'),
(24, 'https://github.com/barthezslavik/tutorial/commit/c9d8882a600e3de448c69369fd7b74170766f92f', 41, '2013-05-19 22:58:16', '2013-05-19 22:58:16'),
(25, 'у @snippet = Snippet.find(1) Появляется метод @snippets.comment который возвращает все комментарии у которых snippet_id = 1', 45, '2013-05-19 23:12:02', '2013-05-19 23:12:02'),
(26, 'Помещаем в невидимое поле snippet_id текущую id снипетта чтобы при добавлении комментария, было понятно к какому из сниппетов он был добавлен', 46, '2013-05-19 23:18:03', '2013-05-19 23:18:03'),
(27, '<pre>\r\n@snippet.comments.each do |comment|\r\n  = comment.content - выводит комментарии\r\n\r\nrender "comments/form" - загружает файл comments/_form.html.haml\r\n</pre>', 47, '2013-05-19 23:21:59', '2013-05-19 23:21:59'),
(28, 'По умолчанию скаффолд редиректит на вновь созданную категорию, а нам надо чтобы на список всех', 49, '2013-05-19 23:32:11', '2013-05-19 23:32:11'),
(29, 'f.input :code, as: :string - превращает textarea в input', 51, '2013-05-19 23:36:36', '2013-05-19 23:36:36'),
(30, 'Также надо удалить файл public/index.html', 52, '2013-05-19 23:38:41', '2013-05-19 23:38:41'),
(31, 'http://localhost:3000/?more=10, не выберет из базы сниппеты у которых id < 10', 59, '2013-05-19 23:53:16', '2013-05-19 23:53:16');

-- --------------------------------------------------------

--
-- Структура таблицы `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20130517090059'),
('20130517091946'),
('20130518101316'),
('20130518103156'),
('20130518123722');

-- --------------------------------------------------------

--
-- Структура таблицы `snippets`
--

CREATE TABLE IF NOT EXISTS `snippets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `code` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=63 ;

--
-- Дамп данных таблицы `snippets`
--

INSERT INTO `snippets` (`id`, `name`, `category_id`, `code`, `created_at`, `updated_at`, `description`, `position`) VALUES
(1, '', 1, 'git init .', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Инициализируем git', 1),
(2, '', 1, 'gca "init commit"', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Первый коммит            ', 2),
(3, '', 1, 'cd tutorial', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Переход в папку tutorial            ', 3),
(4, '', 1, 'rake db:create', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Генерация базы данных            ', 4),
(5, '', 2, 'git show 271834a88db7446c34c97d91d0ea078916686613 Gemfile', '2013-05-17 12:32:19', '2013-05-19 21:15:01', 'Добавление haml разметки            ', 5),
(6, NULL, 1, 'b', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Скачиваем гем            ', 6),
(8, NULL, 1, 'Ctrl+Shift+T', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Новая вкладка терминала            ', 8),
(9, '', 1, 's', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Старт сервера            ', 9),
(10, NULL, 3, 'https://github.com/new', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Гитхаб            ', 10),
(12, NULL, 3, 'Create repository', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Создать репозиторий            ', 12),
(13, NULL, 1, 'git remote add origin git@github.com:имя_пользователя/tutorial.git', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Указать удаленный репозиторий            ', 13),
(14, NULL, 1, 'git push -u origin master', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Запушить на github            ', 14),
(15, '', 2, 'git diff 271834a88db7446c34c97d91d0ea078916686613 430f51456ce2d7bf9583e7c06e0b28ba39a761a6 Gemfile', '2013-05-17 12:32:19', '2013-05-19 21:16:27', 'Добавление simple_form', 15),
(16, NULL, 1, 'b', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Бандл            ', 16),
(17, '', 1, 'rails generate simple_form:install', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Шаблоны для генератора кода            ', 17),
(19, '', 1, 'rails g scaffold snippet description:text category_id:integer code:text', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Скаффолд сниппета            ', 19),
(20, '', 1, 'm', '2013-05-17 12:32:19', '2013-05-18 23:28:28', 'Запуск миграций            ', 20),
(21, NULL, 1, 'Ctrl+C | s', '2013-05-18 18:56:45', '2013-05-18 23:28:28', 'Перезапуск сервера', 21),
(22, NULL, 2, 'git diff 430f51456ce2d7bf9583e7c06e0b28ba39a761a6 fad5a3388b00ee1fa1513acb2c28cdeaa3d844df Gemfile', '2013-05-18 23:48:47', '2013-05-19 21:17:50', 'Добавить twitter bootstrap', 23),
(23, NULL, 3, 'http://localhost:3000/snippets/', '2013-05-18 23:54:59', '2013-05-18 23:54:59', 'Проверяем работу', 22),
(24, NULL, 1, 'b', '2013-05-19 00:14:29', '2013-05-19 00:27:37', 'Бандл', 24),
(25, NULL, 1, 'rails g bootstrap:install', '2013-05-19 00:29:20', '2013-05-19 00:29:25', 'Конфиги для бутстрапа', 25),
(26, NULL, 1, 'rails g bootstrap:themed snippets -f', '2013-05-19 00:32:01', '2013-05-19 00:32:05', 'Обновить разметку для сниппетов', 26),
(27, NULL, 2, 'git diff 271834a88db7446c34c97d91d0ea078916686613 fad5a3388b00ee1fa1513acb2c28cdeaa3d844df config/application.rb', '2013-05-19 00:40:07', '2013-05-19 21:05:12', 'Отключить генерацию scaffolds.css.scss', 14),
(28, NULL, 1, 'rails g bootstrap:install less', '2013-05-19 21:48:16', '2013-05-19 21:48:16', 'Генерация less конфигов и файлов', 26),
(29, NULL, 1, 'rails g bootstrap:layout application fixed', '2013-05-19 21:49:22', '2013-05-19 21:49:22', 'Генерация главного шаблона с boostrap', 27),
(30, NULL, 1, 'Ctrl+C | s', '2013-05-19 21:50:48', '2013-05-19 21:50:48', 'Рестарт сервера', 28),
(31, NULL, 3, 'localhost:3000/snippets', '2013-05-19 21:51:25', '2013-05-19 21:51:25', 'Проверяем bootstrap', 28),
(32, NULL, 2, 'git show c2ee15e3dd6fa8a39b129967579f6dc9191c122b 169c30cf2392c82b79d1dbc64b7f6219091e3880 Gemfile', '2013-05-19 22:09:29', '2013-05-19 22:09:29', 'Добавляем Inherited Resource', 32),
(33, NULL, 1, 'b', '2013-05-19 22:12:09', '2013-05-19 22:12:29', 'Бандл', 33),
(34, NULL, 2, 'git diff c2ee15e3dd6fa8a39b129967579f6dc9191c122b 169c30cf2392c82b79d1dbc64b7f6219091e3880 app/controllers/snippets_controller.rb', '2013-05-19 22:20:22', '2013-05-19 22:21:23', 'Рефакторим сниппет контроллер', 34),
(35, NULL, 2, 'git show 689b393ab2c6ed167a0ae124bbbccf8f0f3b281a', '2013-05-19 22:23:33', '2013-05-19 22:23:33', 'Добавляем русский язык', 35),
(36, NULL, 1, 'rails g scaffold category name:string', '2013-05-19 22:26:11', '2013-05-19 22:26:11', 'Скаффолд категорий', 36),
(37, NULL, 2, 'git diff 7685639ce40e774c96e9a77a7318b11745269798 34e9de3a7362b6ce968bf09e7338c74d5d5d96b5 app/assets/stylesheets/bootstrap_and_overrides.css.less', '2013-05-19 22:32:04', '2013-05-19 22:32:23', 'css для элементов формы', 37),
(38, NULL, 2, 'git diff 7685639ce40e774c96e9a77a7318b11745269798 34e9de3a7362b6ce968bf09e7338c74d5d5d96b5 app/views/snippets/_form.html.haml', '2013-05-19 22:36:48', '2013-05-19 22:36:48', 'Рефакторим форму сниппета', 38),
(39, NULL, 2, 'git diff 7685639ce40e774c96e9a77a7318b11745269798 34e9de3a7362b6ce968bf09e7338c74d5d5d96b5 app/views/snippets/index.html.haml', '2013-05-19 22:48:37', '2013-05-19 22:48:37', 'Рефакторим localhost:3000/snippets', 39),
(40, NULL, 2, 'git diff 7685639ce40e774c96e9a77a7318b11745269798 34e9de3a7362b6ce968bf09e7338c74d5d5d96b5 app/views/snippets/show.html.haml', '2013-05-19 22:51:46', '2013-05-19 22:51:46', 'Рефакторим просмотр сниппета', 40),
(41, NULL, 1, 'rails g scaffold comment content:text snippet_id:integer', '2013-05-19 22:57:53', '2013-05-19 22:58:06', 'Скаффолд комментариев', 41),
(42, NULL, 1, 'm', '2013-05-19 22:59:24', '2013-05-19 22:59:24', 'Накатываем миграции', 36),
(43, NULL, 1, 'm', '2013-05-19 23:00:11', '2013-05-19 23:00:11', 'Миграции', 42),
(44, NULL, 2, 'git diff 34e9de3a7362b6ce968bf09e7338c74d5d5d96b5 c9d8882a600e3de448c69369fd7b74170766f92f app/models/comment.rb', '2013-05-19 23:08:51', '2013-05-19 23:08:51', 'Добавляем связь "комментарий пренадлежит сниппету"', 44),
(45, NULL, 2, 'git diff 34e9de3a7362b6ce968bf09e7338c74d5d5d96b5 c9d8882a600e3de448c69369fd7b74170766f92f app/models/snippet.rb', '2013-05-19 23:10:37', '2013-05-19 23:10:37', 'Добавляем связь "у сниппета много комментариев"', 45),
(46, NULL, 2, 'git diff 34e9de3a7362b6ce968bf09e7338c74d5d5d96b5 c9d8882a600e3de448c69369fd7b74170766f92f app/views/comments/_form.html.haml', '2013-05-19 23:16:12', '2013-05-19 23:16:12', 'Подправим форму комментариев после скаффолдинга', 46),
(47, NULL, 2, 'git diff 34e9de3a7362b6ce968bf09e7338c74d5d5d96b5 c9d8882a600e3de448c69369fd7b74170766f92f app/views/snippets/show.html.haml', '2013-05-19 23:20:26', '2013-05-19 23:20:26', 'Добавим вывод комментариев и форму добавления на странице сниппета', 47),
(48, NULL, 3, ' localhost:3000/snippets/new', '2013-05-19 23:26:48', '2013-05-19 23:26:48', 'Проверяем: Создаем новый сниппет, добавляем к нему комментарий', 48),
(49, NULL, 2, 'git diff c9d8882a600e3de448c69369fd7b74170766f92f 6abcfa8ad1cb3ba62bc22d44e7cc1bb163375819 app/controllers/categories_controller.rb', '2013-05-19 23:31:07', '2013-05-19 23:31:07', 'Исправим редирект после добавления категории', 49),
(50, NULL, 2, 'git diff c9d8882a600e3de448c69369fd7b74170766f92f 6abcfa8ad1cb3ba62bc22d44e7cc1bb163375819 app/models/snippet.rb', '2013-05-19 23:34:02', '2013-05-19 23:34:02', 'Добавляем связь "сниппет принадлежит категории"', 50),
(51, NULL, 2, 'git diff c9d8882a600e3de448c69369fd7b74170766f92f 6abcfa8ad1cb3ba62bc22d44e7cc1bb163375819 app/views/snippets/_form.html.haml', '2013-05-19 23:35:50', '2013-05-19 23:35:50', 'Выпадающий список категорий у сниппета', 51),
(52, NULL, 2, 'git diff c9d8882a600e3de448c69369fd7b74170766f92f 6abcfa8ad1cb3ba62bc22d44e7cc1bb163375819 config/routes.rb', '2013-05-19 23:38:11', '2013-05-19 23:38:11', 'Выводим список сниппетов на главную страницу localhost:3000/', 52),
(53, NULL, 2, 'git diff 6abcfa8ad1cb3ba62bc22d44e7cc1bb163375819 1e9eedfbe94ce3653db88cf35bbe27cf00f83a94', '2013-05-19 23:40:31', '2013-05-19 23:40:31', 'Причешем верстку', 53),
(54, NULL, 3, 'localhost:3000/snippets', '2013-05-19 23:41:46', '2013-05-19 23:41:46', 'Проверяем страницы формы, просмотра, и списка сниппетов', 54),
(55, NULL, 2, 'git diff 1e9eedfbe94ce3653db88cf35bbe27cf00f83a94 f9322defc952d9d3d09f502302e90225274aad44', '2013-05-19 23:43:14', '2013-05-19 23:43:14', 'Фикс вывода комментариев', 55),
(56, NULL, 1, 'rails g migration add_position_to_snippet position:integer', '2013-05-19 23:46:31', '2013-05-19 23:46:31', 'Добавим сниппетам позиции для сортировки при выводе', 56),
(57, NULL, 1, 'm', '2013-05-19 23:46:49', '2013-05-19 23:46:49', 'Миграции', 57),
(58, NULL, 2, 'git diff f9322defc952d9d3d09f502302e90225274aad44 06b4f4e0a28935db16fbbe1c3fe749eba89df76a', '2013-05-19 23:50:16', '2013-05-19 23:50:16', 'Вывод по умолчанию', 58),
(59, NULL, 2, 'git diff 06b4f4e0a28935db16fbbe1c3fe749eba89df76a 4128a89d66584d90f75e94fc6602dbb8b866f56b app/controllers/snippets_controller.rb', '2013-05-19 23:52:14', '2013-05-19 23:52:14', 'Фишка со скрыванием сниппетов', 59),
(60, NULL, 2, 'git diff 4128a89d66584d90f75e94fc6602dbb8b866f56b a78c110c2e9bcfa52e739b9d300047d4bfc34705', '2013-05-19 23:54:20', '2013-05-19 23:54:20', 'Красивый вывод diff', 60),
(61, NULL, 2, 'git diff a78c110c2e9bcfa52e739b9d300047d4bfc34705 10a378521b5d96e621ceb55c4b9b19943971b864 app/views/snippets/_form.html.haml', '2013-05-19 23:57:32', '2013-05-19 23:57:32', 'Определение позиции для нового сниппета ', 61),
(62, NULL, 2, 'git diff a78c110c2e9bcfa52e739b9d300047d4bfc34705 10a378521b5d96e621ceb55c4b9b19943971b864 app/views/snippets/show.html.haml', '2013-05-19 23:58:43', '2013-05-19 23:58:43', 'Добавим использование html тегов в комментариях', 62);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
