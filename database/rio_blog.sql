-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2024 at 01:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rio_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(2, 'Personal', 'personal', '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(3, 'Web Design', 'web-design', '2024-02-20 23:07:44', '2024-02-20 23:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_19_043352_create_posts_table', 1),
(6, '2024_01_20_140722_create_categories_table', 1),
(7, '2024_03_01_060230_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `category_id`, `user_id`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Illo vel non quas.', 1, 1, 'qui-eligendi-veritatis-adipisci', NULL, 'Et impedit nihil esse. Ad quasi voluptas rem earum et impedit laborum. Soluta quia harum autem nulla alias.', '<p>Eligendi accusamus dolores animi ut qui. Fugit et vitae qui aliquid.</p><p>Ducimus id et inventore ut nulla sapiente. Unde nihil sequi numquam debitis modi et quidem. Omnis deleniti eligendi rem itaque magnam. Deserunt enim vero quae laudantium sint at.</p><p>Quia debitis explicabo quo qui asperiores. Explicabo quia natus et officiis. Saepe tempore aliquid et at tempora quidem magnam qui. Dolorem quia dignissimos dolor quibusdam doloribus.</p><p>Eum sit mollitia ipsam labore. Et ut tempora officia veritatis ut sed. Ullam adipisci quidem hic voluptas ut. Ipsam suscipit quia minima eveniet.</p><p>Officiis laborum eaque nostrum. Quia quas aut ut modi quis nisi quidem. Nihil ducimus libero nihil eum. Sapiente hic officia odio.</p><p>Iusto distinctio provident at eveniet quas placeat. Et vel nam autem autem exercitationem. Saepe quis sed sed sed ut tempore. Debitis quia tempore ut numquam hic voluptatem officiis.</p><p>Rem delectus eum exercitationem voluptatum. Ducimus illum dignissimos nemo veniam provident magnam vero. Eaque aut magnam praesentium.</p><p>Neque quae recusandae molestias eum est. Culpa nam nihil voluptate porro atque consequatur. Quibusdam maiores et voluptatum non et non rerum. Iste autem quam explicabo autem unde.</p><p>Fugiat quos et id quasi et distinctio. Voluptatem aut laboriosam porro nam. Laudantium quod possimus et facilis alias tempora. Distinctio cum odit quia quia expedita veritatis perferendis.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(2, 'Inventore rem tempore est.', 2, 3, 'eveniet-delectus-laborum-tempora-expedita-alias-enim-voluptatem', NULL, 'Vero qui nam itaque totam unde voluptatem numquam. Molestias qui sapiente possimus officia. Deleniti ut maxime assumenda omnis sunt ut commodi in. Deserunt doloribus quis incidunt fugit sunt aspernatur illum. Aut at officiis eum quidem numquam et.', '<p>Ducimus hic magni consequuntur corrupti omnis. Itaque vero in autem minus molestiae vitae similique. Quibusdam numquam esse commodi recusandae delectus consequuntur esse.</p><p>Et enim deleniti quis quia doloribus commodi. Id totam blanditiis sunt vero dicta. Consectetur labore qui ea rerum necessitatibus enim consequatur nam.</p><p>Voluptatibus labore doloremque quasi quae voluptatum laborum. Aliquam provident distinctio exercitationem ipsum vero possimus ad. Cum quaerat inventore tenetur dolorem similique nemo.</p><p>Repellat error sed nam quidem sit. Consequuntur illo ea et veritatis ipsa. Recusandae est hic accusamus distinctio magni. Possimus dolorem eaque dolorem totam quis.</p><p>Quia totam error est est. Ea sed nihil fugit. Praesentium ut deleniti doloribus et tempore nihil iure non.</p><p>Ex omnis tempore ratione. Fugiat itaque in laudantium accusantium pariatur autem dolores hic. Libero soluta fugit voluptas quia quia. Voluptas qui fuga est quas.</p><p>Et molestias est in consequuntur perspiciatis non odio repellat. Repudiandae voluptatibus voluptates repellendus libero maxime quas. Dolor optio voluptatem est aut et earum rerum.</p><p>Et rerum ipsa ratione sit quia fuga perferendis unde. Nostrum est architecto tempora ad. Repellat iure temporibus dignissimos. Voluptatum accusantium labore hic maxime eum.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(3, 'Fugit magni ratione eligendi consequatur nobis nesciunt qui et.', 2, 2, 'quibusdam-quia-eaque-molestiae-eum', NULL, 'Labore modi ea aut nostrum ipsum. Sit est saepe fuga illum. Pariatur sunt facilis autem ut. Ullam voluptatum perspiciatis dolorem est qui voluptatum quia repellat. Amet laborum nemo voluptate omnis sit.', '<p>Molestiae ducimus nihil ad repellat ut perferendis libero similique. Repellat enim ut perspiciatis quasi fugiat. Odit animi excepturi hic quisquam. Ut sit voluptatibus omnis a. Deleniti illum libero et dolor.</p><p>Fuga non sed quia itaque illo ducimus. Asperiores eaque cum aperiam voluptatem. Omnis voluptatibus corporis eos saepe.</p><p>Optio suscipit atque nostrum rerum. Aut corporis unde amet quaerat assumenda illo. Ex quasi at cumque officiis.</p><p>Illum sed quis voluptatem. Fugit reprehenderit exercitationem similique ad et. Rem veniam nihil impedit quia illum porro et.</p><p>Vero praesentium praesentium maxime aut explicabo. Aspernatur corporis dolore rem aut adipisci voluptas. Aspernatur veritatis maxime repellendus nam deserunt accusantium adipisci et.</p><p>Ad est quibusdam quam veniam voluptatem vel. Exercitationem fugiat molestiae eius beatae voluptatem. Ut vero cupiditate et aliquam excepturi.</p><p>Nihil labore sed rem tempora iure consequatur. Voluptas accusamus nesciunt sint iste. Consequatur quod modi omnis facere officia quis. Aperiam numquam ut pariatur ipsam itaque.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(4, 'Corporis harum aut sunt culpa ut nesciunt.', 1, 3, 'consequuntur-consequatur-veritatis-et-dolores-commodi-qui-aut', NULL, 'Ut qui eum non et quibusdam quia rem non. Nobis molestiae velit ad. Et necessitatibus illo aut animi. Velit nobis omnis et architecto in.', '<p>Repudiandae autem eveniet illum vel. Harum incidunt tempore dolores omnis repudiandae repudiandae sed sequi. Tenetur alias temporibus quaerat autem et dolor libero.</p><p>Et sint est ut ad rerum. Magni omnis dolores est in omnis architecto. Excepturi rerum debitis sed placeat ratione et. Maiores quas et nam ut perferendis sit tempora fugiat.</p><p>Et dolore recusandae enim temporibus harum rem et. Consequatur voluptate sed similique placeat eius quod dicta. Cum at error nam neque eos. Non quia qui magni ipsam voluptatem eum magni exercitationem. Libero iste similique quae exercitationem sapiente.</p><p>Dolores nulla vel reprehenderit dolorem commodi eum. Iusto iure exercitationem dolorum consequatur. Omnis vel deserunt repellendus ea voluptas. Non iure accusantium architecto esse sit et qui.</p><p>Reprehenderit ea unde dolorum qui sequi tempora. Dolorum quia minus qui eos eum voluptas labore quis. Qui nesciunt iusto eos ducimus voluptatem nam tenetur. Dolores iure dolores sapiente occaecati qui.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(5, 'Cumque facilis culpa corrupti cumque consequatur ab.', 2, 1, 'architecto-ratione-ut-minus-nobis-nam', NULL, 'Consequuntur at corporis odio hic exercitationem. Quas est ab unde dolore aut. Rerum consequuntur expedita omnis aliquid aut. Illum in velit voluptas vel.', '<p>Voluptatem doloribus eos ducimus beatae tempore fuga pariatur ut. Rerum veritatis ut laboriosam quos. Et maiores rerum aspernatur reprehenderit ullam atque dolorum. Corporis eaque rerum quos ut voluptate.</p><p>Quasi natus quia et error voluptatem. Eum temporibus animi dolores repellat qui eligendi quas.</p><p>Perspiciatis totam aut qui quis. Et quibusdam ipsam qui cum voluptatem quas ducimus. Dolorem voluptatibus eius deleniti ut suscipit aut qui.</p><p>Facilis ducimus iure minus aut. Aspernatur nostrum quas ipsa voluptas aliquam fugit voluptas. Autem ea non eligendi non. Animi voluptates aut optio rerum at fuga.</p><p>Quia aut voluptatem quod. Laborum omnis aut adipisci itaque ut deleniti. Ea ipsa eos et.</p><p>Ex consequatur non deleniti hic quibusdam assumenda. Ad ut eveniet exercitationem doloremque suscipit. Qui eligendi tempore deserunt consequatur ratione similique perferendis. Voluptate similique quae voluptas omnis aliquam sequi. Numquam magni vel natus qui facilis saepe.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(6, 'Cumque non.', 2, 2, 'est-quae-voluptates-et-voluptatem', NULL, 'Iste qui iste voluptatem expedita maiores. Earum distinctio omnis error aut debitis laudantium est. Error ut aliquid odio suscipit magni.', '<p>Et eligendi quibusdam minus. Enim sapiente sit ut illum. Non harum et a eaque. Velit sint quia nulla animi vel voluptatibus.</p><p>Id est sit aut neque. Dicta vero magnam ad quidem deleniti animi distinctio doloribus.</p><p>Non aut nisi amet itaque quis qui velit. Tempora sunt doloremque deleniti eos illum. Ad amet voluptatibus veniam ad deserunt officia optio. Cupiditate ex sed eius ut.</p><p>Quia tempore quia nihil velit eos est. Accusantium facilis laudantium voluptatibus perferendis aperiam. Est hic inventore suscipit numquam officiis vitae. Ullam debitis exercitationem fugit quae laborum illo temporibus et.</p><p>Voluptas fuga sit corrupti. Non et eum sunt odio maiores aut libero ut. Impedit voluptas quia maxime exercitationem. Odio distinctio enim exercitationem quis.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(7, 'Suscipit consequuntur.', 1, 3, 'eaque-sunt-et-laudantium-doloremque-laudantium-aspernatur-et-quasi', NULL, 'Eligendi aliquam cumque et ab molestias nobis fugit atque. Quisquam labore reprehenderit omnis perferendis sunt sit. Possimus sint eum quibusdam inventore voluptatem illo sit maxime.', '<p>Esse est et sit necessitatibus debitis amet impedit quas. Culpa incidunt nemo non optio ea ad aut non. Repellat maiores dolorem et dolor perspiciatis. Quaerat et commodi mollitia officiis.</p><p>Enim et rerum similique eum. Fuga dolorem autem consequuntur qui exercitationem aspernatur. Nulla excepturi sed adipisci soluta. Atque et sed in eius enim.</p><p>Odio ut similique voluptas ut. Culpa nam libero alias asperiores debitis et nesciunt. Sit dolorem asperiores aut vel voluptas accusantium.</p><p>Et numquam voluptatibus aperiam quaerat aut aut quam. Deleniti nisi non sed ea dolorem. Harum autem dolore possimus necessitatibus tenetur ut sapiente.</p><p>Quo minima et quas. Est illum qui non temporibus pariatur. Tempora placeat impedit expedita doloribus.</p><p>Non nemo asperiores aut recusandae qui qui. Qui iusto repellat distinctio et voluptatum. Aperiam aut voluptatem accusamus enim cum sed provident.</p><p>Aut velit sequi maxime. Voluptate blanditiis quae omnis excepturi. Consequatur sit quibusdam dolores consequuntur ducimus at omnis. Nulla voluptatem molestiae quia voluptatem.</p><p>Perferendis consequuntur voluptas molestiae at. Incidunt eius optio eum. Inventore ut suscipit aut eos sit. Consequatur alias magnam molestiae dignissimos.</p><p>In voluptas nihil et expedita voluptate ipsam nostrum. Nihil sed numquam consequatur autem consequuntur. Tenetur dolore ipsam sint laboriosam facere ex blanditiis.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(8, 'In qui quasi.', 1, 1, 'dolores-est-quo-qui-ut-deserunt-quo', NULL, 'Qui accusantium et nihil dolorum. Illum dolorum aperiam suscipit quo quidem sint. Id dolor sint nemo. Praesentium ipsa et consequatur et perspiciatis et.', '<p>Fugiat aliquam suscipit aut sed dolor error. Ab fuga veniam doloremque omnis. Accusamus aperiam qui vitae consectetur dolores aut velit. Et consectetur ducimus animi facilis dolor temporibus.</p><p>Autem doloremque a ipsam corporis nulla sit a. Incidunt consequatur nam iure eligendi sed et ut. Veniam et aperiam ipsam et quisquam quidem ab. Consequatur ducimus cupiditate ut.</p><p>Dolor illum adipisci impedit. Consequatur saepe eligendi id vel illum rerum. Mollitia saepe omnis enim ratione ipsa at provident.</p><p>Pariatur aut quos asperiores nihil autem sint aut doloremque. Ullam ullam modi sed. Minus dolor harum ipsa dolorem non.</p><p>Aut quasi quis incidunt omnis asperiores voluptatum dolor quibusdam. Voluptatem odit corporis reiciendis minus fugiat rem consequatur. Ea incidunt ratione harum. Adipisci nihil ad laudantium necessitatibus ut repudiandae.</p><p>Similique sint corporis facere tempore non. Voluptatem ducimus repellat ipsam modi non quod doloremque. Quaerat asperiores dicta ea placeat amet.</p><p>Facere voluptas voluptatibus quam. Quisquam doloribus facilis ducimus sit cum et. Et et quia iste perspiciatis explicabo. Eos non explicabo sit.</p><p>Illum reiciendis unde maiores quibusdam. Est asperiores voluptatibus minus. Accusamus voluptas cumque laboriosam sequi eum.</p><p>Quod cum expedita at nemo incidunt ut quibusdam. Recusandae animi aut non. Laborum dolorem id sint qui rem sint.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(9, 'Nulla accusantium quia est saepe dolores.', 1, 3, 'quo-ut-debitis-odit-perspiciatis-ad', NULL, 'Et dolorum harum recusandae dolor omnis distinctio. Consequatur qui beatae quam incidunt id. Quia et praesentium pariatur debitis minus. Ut blanditiis tempore voluptatem quis.', '<p>Tenetur ratione facere ut corporis provident hic ipsum. Dolorum harum et ipsum eos sit vel qui. Modi odit eaque sapiente aut. Consectetur voluptas accusantium voluptatem minus inventore.</p><p>In a non eum quia. Non at et fuga commodi id dolores. Officiis fugit sint aut aut. Quaerat itaque nemo saepe est.</p><p>Atque voluptatem atque itaque aut explicabo suscipit dicta voluptatem. Incidunt qui repellendus repudiandae vel ea. Nulla repudiandae sit omnis laborum qui non et.</p><p>Omnis asperiores explicabo natus blanditiis ipsum enim aut. Deserunt esse et beatae et quaerat hic qui. Iste hic minus beatae ut ut qui.</p><p>Non error dolorem reiciendis. Eos quis cupiditate repellendus inventore et. Officiis quos consequatur dicta aut vel libero eos.</p><p>Omnis non ut totam corrupti. Et quo perferendis ducimus voluptatem suscipit tenetur et dolorem. Delectus sint quas qui illo laudantium ea.</p><p>Possimus blanditiis est in molestiae aut. Eligendi incidunt ratione suscipit quis quo aut numquam. Commodi et ut quia voluptas nostrum.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(10, 'Voluptatem harum inventore saepe.', 1, 2, 'mollitia-voluptatem-architecto-voluptatem', NULL, 'Tempore id minima laborum fuga dolores. Sunt aut accusamus nihil qui qui quae sequi beatae. Velit iure fugit quis ut voluptates ex temporibus. Et nihil placeat quia dicta saepe expedita similique in.', '<p>Quod in doloribus sunt dignissimos autem et occaecati dolor. Quia alias ex aut et et eius molestiae. Illum ut sed dolorem quos voluptatum omnis eum. Aut autem consequuntur sit vel.</p><p>Aut non et autem qui deleniti consequatur nostrum. Deserunt vel quas sit rerum ducimus repudiandae aperiam.</p><p>Dolor aut maiores eum nam sunt enim. Illum molestiae facilis sed. Itaque corporis tenetur sint praesentium quia debitis.</p><p>Praesentium omnis facilis doloremque sunt repudiandae nobis ex. Vel voluptas nostrum ullam. Incidunt dolorum repellendus quibusdam rerum quo.</p><p>Sapiente aut accusamus delectus occaecati ipsa. Ab labore facilis quod praesentium suscipit odio voluptatum.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(11, 'Quidem minima et molestiae nesciunt quo dolorem non quasi.', 2, 1, 'laboriosam-eum-voluptas-qui-sequi-totam-dolores-quos', NULL, 'Adipisci culpa eos atque et quia ea. Voluptate quasi doloremque ea magnam. Modi quia et et eius voluptatibus omnis. Velit sapiente perspiciatis alias dolor sint.', '<p>Ut illo fugit et distinctio totam qui. Voluptatem voluptatem quia et officiis architecto reiciendis. Et et quas facere sapiente rem facilis et.</p><p>Quis id et voluptatem aut architecto et impedit. Quis ut cum aspernatur eligendi nihil nobis facilis. Quia ab atque velit eos.</p><p>Delectus quidem amet veritatis eum magni officia. Voluptate harum harum nihil similique blanditiis iusto. Et quasi minus voluptatum. Ducimus iusto dicta nemo ut sint laudantium.</p><p>Ad corporis sed nobis architecto earum. Error tempora adipisci dolorem est esse. Dolores voluptatem in accusamus modi sint.</p><p>Aliquid harum atque at. Nam perspiciatis suscipit sed possimus aperiam non et ut. Omnis ratione et laboriosam ut aliquid voluptate.</p><p>Ipsum sunt quia numquam maxime. Sint aut occaecati praesentium odit itaque incidunt vel. Alias eos modi voluptatem ea. Rerum et laudantium qui architecto voluptatem sit porro.</p><p>Et est voluptates blanditiis aut aliquam. In odit deleniti atque inventore. A est laboriosam quisquam occaecati voluptatem necessitatibus.</p><p>Minus magni vel voluptatem quasi tempore. Unde officia hic earum vel.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(12, 'Optio adipisci voluptatem et et dolorem.', 2, 3, 'commodi-asperiores-aut-eum-cum', NULL, 'Voluptas aut vitae et vitae ipsum suscipit excepturi. Nihil aut sunt velit sed ex eos. Sint autem qui vel est placeat vel a.', '<p>Voluptas animi sunt doloribus. Perferendis veniam perferendis harum excepturi. Necessitatibus illum temporibus aspernatur accusantium quas perferendis. Amet rerum dicta excepturi molestiae voluptatem quis. Consequuntur magnam repellendus ut voluptas facilis.</p><p>Dolorem quo repellat dolores. Distinctio fuga temporibus rerum voluptatibus. Expedita magni explicabo minus eaque ea non ratione.</p><p>Aut officiis atque dolore voluptatibus et aut. Mollitia ipsum voluptates rem nihil vel ut fuga sunt. Cumque quidem ab voluptates neque autem. Perspiciatis eveniet amet qui qui. Illo soluta blanditiis quis doloribus voluptas est et.</p><p>Aut enim eos qui sequi aut. Ratione ut aut ea quisquam quae unde eligendi et. Asperiores cupiditate fuga quas pariatur consequatur. Non placeat commodi quia perspiciatis voluptatem.</p><p>Magni laboriosam repudiandae doloribus adipisci. Neque quia nostrum quia sunt sit. Officiis molestiae voluptas soluta soluta magni animi. Minima quis sit esse accusamus qui. Aperiam nesciunt velit et harum beatae doloremque.</p><p>Eius expedita possimus voluptas in. Quae corrupti est sit recusandae. Harum quos molestias officia ratione ratione excepturi sint. Ratione rerum placeat ex iusto sit.</p><p>Sit non delectus dignissimos quo enim inventore dolor. Excepturi rerum dolor blanditiis pariatur consequatur. Quidem magni voluptas eum perferendis expedita ut.</p><p>Deserunt molestiae voluptates minus. Molestiae quibusdam sunt quo aut commodi. Et dolor alias consectetur beatae porro voluptatem. Autem culpa cupiditate inventore aut explicabo.</p><p>Deleniti consequatur vel aut quisquam. Accusamus molestiae fugiat quisquam et. Quidem perspiciatis saepe quam id. Sint temporibus et possimus eaque natus.</p><p>Et qui et alias architecto est facilis. Voluptatibus nobis iusto a. Reprehenderit veniam cum voluptas aut dolorem minus sed quisquam.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(13, 'Omnis nisi aut culpa dolor et est.', 2, 3, 'totam-veritatis-nesciunt-rerum-eius-dolor', NULL, 'Quas velit vel laborum qui harum magni veritatis amet. Quam cumque rerum a ex. Et laboriosam voluptas et est ducimus est.', '<p>Doloremque rerum ut aut sit non ad. Est rerum quaerat voluptas corporis molestiae harum placeat.</p><p>Sint et officia voluptatem eum aut omnis eos. Doloribus eligendi dolores et quas delectus quia architecto. Explicabo quidem aut possimus voluptatem saepe sed eum sint.</p><p>Laudantium qui rerum vel fugit ea. Similique in et quaerat quos totam eaque assumenda. Distinctio non quia neque nesciunt in est. Sint amet tempora iste mollitia occaecati enim adipisci.</p><p>Eum aut voluptatum eos illo voluptas autem aut. Laborum ducimus dolores sequi quis eum eius sunt. Facilis dolor dolores magnam tempora commodi voluptas. Ullam suscipit ut quia earum assumenda magni. Aut eos quia aut culpa.</p><p>Voluptas eum qui id. Aliquam dolorem quas mollitia occaecati ut culpa et. Ad quae amet exercitationem atque repellat ipsam.</p><p>Et qui non sit delectus. Praesentium in nisi nihil et. Occaecati nobis dolorem vero fugiat voluptatem voluptates.</p><p>Distinctio nulla magni placeat rerum aut hic qui tempore. Earum at ullam reprehenderit itaque sed qui et. Sit aliquam ab illum. Illo nostrum voluptatem repellat et dolore.</p><p>Sed neque praesentium aut omnis quos consequatur rerum. Quas quae veniam voluptatem laboriosam. Et aut esse quis laboriosam quibusdam aut. Esse odit ducimus veniam voluptatem.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(14, 'Cumque hic quia.', 1, 1, 'voluptatem-quibusdam-voluptas-nobis-sapiente-voluptatem-tenetur-velit', NULL, 'Similique aperiam totam voluptatem et. Dignissimos eveniet maxime nemo laborum esse. Sequi quibusdam sit non blanditiis ut beatae. Aut labore ut dolor accusamus.', '<p>Sequi rem fugit odio amet. Fugiat incidunt quod numquam et aut. Itaque facere non neque. Pariatur qui voluptatem optio corrupti sequi.</p><p>Ullam sit culpa laboriosam et. Aut aliquam quisquam ut voluptas illo quasi. Consequatur quia ipsam non voluptatem.</p><p>Minima accusantium repellat sunt vitae. Et et id quibusdam culpa. Rem enim accusantium minima odit consequuntur autem reiciendis.</p><p>Nobis repellendus quo recusandae est. Hic dolor esse consequatur sint. Praesentium quo doloribus dolorum fugiat qui. Modi voluptatibus a sint ut amet voluptate.</p><p>Et vitae et alias. Maiores iusto cupiditate numquam et totam delectus. Quam quia eos impedit.</p><p>Voluptas voluptas ipsa corporis. Quaerat qui officia corrupti non iusto. Tempore quod velit neque explicabo. Facere perspiciatis impedit est.</p><p>Aperiam autem repudiandae pariatur sint. Sint aut odit iste commodi voluptas. Laboriosam perferendis iusto eos quo in cumque ex.</p><p>Laborum recusandae fugiat vero omnis. Praesentium ut quae neque in.</p><p>Quis iure ipsum reprehenderit veritatis accusantium. Nulla vero dignissimos amet iste nihil. Quo odio aut a.</p><p>Facere quis inventore et sint sit doloremque. Asperiores ipsum dolor ut. Tempora nam nesciunt nostrum unde. Quis aut dolorem voluptatem delectus quo et.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(15, 'Aliquam aut facilis veritatis ut quo nam libero.', 2, 3, 'reiciendis-at-ut-architecto-eveniet-nihil-fugit', NULL, 'Quae repellendus voluptatem ipsa unde unde. Doloremque eaque temporibus quibusdam est facilis corporis. Perspiciatis sed earum corrupti. Repellat recusandae sit et sapiente.', '<p>Esse debitis ex qui. Ex harum quia eos nulla perspiciatis perspiciatis quod. Ab sit quasi exercitationem. Veritatis eum nihil nisi sit et repellendus sint.</p><p>Natus tempore sapiente officia qui. Et magnam porro et ipsum autem omnis ad ad. Quos tenetur omnis voluptas cumque molestiae nihil. Ut nostrum nostrum aut quidem quia.</p><p>Quia dolorem autem sunt voluptas dolorem at. Eum debitis quia rerum. Officiis corporis eum laudantium eos. Eum mollitia neque et animi ipsam.</p><p>Ipsa iste nam iusto quia qui voluptatem provident aut. Cum maxime velit voluptates et. Veniam aut saepe quae esse.</p><p>Est necessitatibus inventore accusantium amet eius et odit veritatis. Pariatur in ipsam dolores. Nulla modi autem rerum non. Soluta nesciunt neque fugit non blanditiis nemo.</p><p>Eligendi ut doloremque earum quas vitae. Nemo repudiandae voluptates aut assumenda voluptas rerum.</p><p>Velit eos necessitatibus necessitatibus dolorem vitae numquam minima. Molestiae sed consequatur dicta itaque animi aliquam nihil. Dolor illo debitis ut voluptas debitis rerum. Hic consequatur quos dicta molestiae illo.</p><p>Sed doloribus sunt magni sint. Quisquam porro inventore accusantium vitae consectetur. Dolores corrupti in eum qui et et.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(16, 'Iusto ut vitae consequatur aut.', 1, 1, 'rerum-saepe-quos-assumenda-et', NULL, 'Atque et reiciendis molestias et consequatur occaecati. Qui id inventore rerum. Corrupti et illum nihil.', '<p>Hic sapiente architecto vel quidem. Dolor aut laboriosam qui eum minima quaerat qui voluptatem. Dolores id ratione rerum sunt et dignissimos sed error.</p><p>Reiciendis est beatae qui voluptas. Neque sint ea commodi ut. Eum eum quia sint in. Est odit architecto velit vitae soluta maxime et.</p><p>Alias maiores placeat eligendi aliquid deserunt nisi ea. Quam sit velit rerum at. Voluptates omnis ullam ad.</p><p>Quaerat iusto voluptatum ab dolorem alias suscipit. Itaque veniam expedita est sed. Non velit aspernatur amet. Odio velit ullam dignissimos occaecati sit sunt.</p><p>Voluptatum magnam blanditiis provident nihil distinctio modi rem. Debitis fuga quia vitae dolorem sit eveniet. Autem quisquam error necessitatibus sit ad eos quos sed. Ut inventore labore aut nemo ut enim nesciunt illo.</p><p>Porro quia cum cum iste. Quisquam omnis impedit laudantium cupiditate atque tempora. Eveniet incidunt temporibus ut quidem est. Laudantium doloribus deserunt eos alias odit.</p><p>Vel cupiditate sit necessitatibus quibusdam. Facilis similique voluptatibus repudiandae voluptas. Itaque molestias qui voluptatibus ipsum possimus repellendus. Esse accusamus maxime iure saepe excepturi consequatur corporis. Autem accusamus qui earum.</p><p>Id architecto sint sint aut. Autem iusto expedita exercitationem ex et enim qui. Asperiores est sit odit qui soluta maxime.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(17, 'Nemo nostrum qui consequatur.', 2, 3, 'doloremque-totam-dignissimos-ipsum-provident-est', NULL, 'Est non ut sint et veniam qui ut qui. Sint eius sit debitis tempora facere sequi. Delectus quaerat est suscipit.', '<p>Repudiandae culpa unde sed perspiciatis aut qui facilis eos. Maxime ullam dignissimos animi quasi.</p><p>Quo minus debitis quia voluptatem perferendis cumque qui. Architecto possimus voluptatem voluptatum natus. Nisi aut et a possimus ut consectetur ea.</p><p>Ut voluptas quas officiis. Quo soluta voluptatem minima qui voluptas. Totam nemo porro sunt sed odio ut saepe repudiandae. Similique perspiciatis sint similique accusamus.</p><p>Velit nam nostrum in rerum ea odit dolorem. In rerum distinctio neque libero laudantium. Tenetur dolorem quia non aut. Est ipsum vitae sunt ut facere quam.</p><p>Ab laboriosam aut magni veniam aut aliquam deserunt fugit. Molestias sunt blanditiis aut minima rerum. Quo optio quaerat sit sunt ut ut. Blanditiis sunt nam exercitationem.</p><p>Et praesentium dicta non placeat omnis reiciendis deleniti quisquam. Saepe non odit distinctio commodi. Asperiores quasi reiciendis expedita alias est. Culpa esse sequi et alias mollitia omnis quo.</p><p>Iste possimus ut est repellat. Nihil quos quisquam assumenda fuga quia corrupti. Ut maiores laborum tenetur doloremque neque qui. Repellat eos dolor vel voluptas illum.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(18, 'Ullam sunt eos in ut a dolor nesciunt distinctio.', 2, 3, 'vel-illo-aperiam-debitis-et-atque', NULL, 'Mollitia nam aut magnam dolores sit. Assumenda et at iure voluptatem. Qui sequi et architecto est quibusdam quo in rerum.', '<p>Soluta praesentium consequatur repudiandae laborum porro dignissimos aut. Assumenda aliquam autem ut earum. Quaerat sint est fuga fuga nesciunt assumenda.</p><p>Et nobis voluptas facere est est culpa cupiditate. Sint et ut quidem minus aperiam expedita veritatis.</p><p>Neque quos eligendi suscipit odit sit officia temporibus. Hic maiores sit dolor et officiis voluptates. Accusamus dolorem neque dolorum nemo qui incidunt doloremque. Et et molestiae ipsa vel eius tenetur et.</p><p>Voluptatum voluptas velit quaerat dolores ab voluptatibus voluptatem voluptas. Dolores et nobis inventore illum.</p><p>Et dolores quasi praesentium itaque dolor sed. Similique sit error ad. Ea beatae tempora aut perspiciatis magnam dignissimos.</p><p>Rerum est sit consequatur deleniti cumque quasi ea dolor. Earum quo magnam vero eum rerum commodi in. Ut ratione quam qui est porro ducimus a voluptatem.</p><p>Dolores quia et officia. Sint dolor et quia fugiat inventore atque.</p><p>Hic est et optio sed eos molestiae. Maiores eos nisi sint optio doloremque deserunt ad mollitia. Illum quia est saepe dolor odio.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(19, 'Aliquid est quo possimus quidem fugit minus ab autem ipsa natus.', 2, 2, 'temporibus-labore-explicabo-necessitatibus-vitae-placeat-sit', NULL, 'In magni ipsa pariatur incidunt id. Aspernatur id quam ut. Debitis facilis aut placeat dicta deleniti perspiciatis.', '<p>Repudiandae ipsam eos atque nostrum explicabo eius sequi id. Quia aut quia sed voluptas et ipsam excepturi. Ut expedita tempore qui reiciendis inventore illum saepe.</p><p>Fuga vel aperiam et voluptas non. Velit delectus autem voluptas vitae saepe voluptatem. A voluptatem perspiciatis laudantium suscipit dolor.</p><p>Voluptas et autem itaque magni. Ipsum recusandae iusto error voluptas sint ut nobis. Nobis sed libero sed placeat modi enim placeat.</p><p>Non sunt laudantium sed neque omnis rerum aut. Totam harum unde fuga sunt ipsa quia laboriosam quia. Nisi et et voluptatem minima ut esse.</p><p>Nisi nesciunt reprehenderit architecto qui. Minima ex aut nam mollitia sequi. Nam provident rem eum sed et omnis. Quia rerum inventore fugiat quia blanditiis voluptatem quod.</p><p>Est dolore illo nobis consequatur fuga et incidunt. Dolorum minus quam non magni consequatur. Eum ea consequatur eum voluptatem inventore.</p><p>Maxime nihil quidem iste. Consectetur amet odit et. Nihil voluptatum dolorem exercitationem voluptatibus perferendis.</p><p>Dolores vitae ex natus. Odio rem quasi minima. Repudiandae quam nobis placeat rerum at qui. Dolorem aut fugiat sit sequi illo.</p><p>Officia cumque libero officiis ut. Eligendi autem quaerat quidem. Facere cumque autem perspiciatis veritatis id vel ea. Dolorem harum incidunt non aut.</p><p>Beatae consequatur corrupti ullam consequatur modi. Architecto qui odio est nesciunt sequi quia sed. Et quia et sit odio sed quos. Est facere maiores dolorem sit sequi maxime tenetur.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44'),
(20, 'Voluptatem illo maxime.', 2, 2, 'dolorum-quas-labore-maiores-ullam-enim-soluta-adipisci', NULL, 'Sint sit porro distinctio facilis. Dolore quis a dolor sunt dolor. Et alias voluptatem illum provident autem et ipsam. Enim molestiae sint eum sunt ullam rerum ad.', '<p>Dolor expedita quisquam enim et enim sed. Pariatur aut neque quo vitae vel. In sed et facilis ut veniam autem rerum rem. Asperiores aliquid et magnam blanditiis similique sint enim voluptatibus.</p><p>Aut et illum quos quae iusto. Placeat harum praesentium non. Quia quia voluptatum exercitationem molestiae vel.</p><p>Vel aliquam quo eos. Nulla vero voluptatem rerum eaque est ut. Sunt nemo laudantium aut nihil qui.</p><p>Et doloribus vero necessitatibus totam. Non voluptatem fuga consequatur temporibus tempora temporibus eius. Earum delectus dolor natus qui veritatis. Sed consequatur sed et illum est dolores consequuntur.</p><p>Nostrum doloribus nostrum hic ducimus ut. Sed enim sed aut recusandae voluptas. Corporis consequuntur id ab numquam in ipsa eveniet.</p>', NULL, '2024-02-20 23:07:44', '2024-02-20 23:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Satriyo Rizkyansah', 'satriyorizkyansah', 'satriyorizkyansah@gmail.com', NULL, '$2y$12$NS5f7RLbaTtlQYStjFR6muTBbnqkE0Elh7RhTEz8wn7SnftvlXUfi', NULL, '2024-02-20 23:07:43', '2024-02-20 23:07:43', 1),
(2, 'Panji Manullang', 'galang95', 'siregar.silvia@example.org', '2024-02-20 23:07:44', '$2y$12$sCM6frobmqXrUN/m8Wdw6O8kdjkVqjZyYaGN33nUyL0mSJLDRdfVS', 'wdrE0wetOj0SFLYzzJVi3pe66XPiMI6gL6FnrqHRi3JgUTc0z2xzMK8yQXgE', '2024-02-20 23:07:44', '2024-02-20 23:07:44', 0),
(3, 'Artawan Siregar', 'hasta70', 'iriana17@example.org', '2024-02-20 23:07:44', '$2y$12$sCM6frobmqXrUN/m8Wdw6O8kdjkVqjZyYaGN33nUyL0mSJLDRdfVS', '5cc79sGzR2', '2024-02-20 23:07:44', '2024-02-20 23:07:44', 0),
(4, 'Tirtayasa Cahyanto Maulana', 'janet10', 'czulaika@example.net', '2024-02-20 23:07:44', '$2y$12$sCM6frobmqXrUN/m8Wdw6O8kdjkVqjZyYaGN33nUyL0mSJLDRdfVS', '4bqT1q0yjQ', '2024-02-20 23:07:44', '2024-02-20 23:07:44', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
