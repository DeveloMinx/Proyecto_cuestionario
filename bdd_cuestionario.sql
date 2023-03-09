-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2023 at 10:37 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdd_cuestionario`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_apps`
--

CREATE TABLE `t_apps` (
  `app_name` varchar(128) NOT NULL,
  `app_type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_apps`
--

INSERT INTO `t_apps` (`app_name`, `app_type`, `description`) VALUES
('form_t_categorias', 'form', ''),
('form_t_preguntas', 'form', ''),
('form_t_respuestas', 'form', ''),
('form_t_usuarios', 'form', ''),
('Menu', 'menu', ''),
('sec_change_pswd', 'contr', 'Security Application'),
('sec_form_add_users', 'form', 'Security Application'),
('sec_form_edit_users', 'form', 'Security Application'),
('sec_form_sec_apps', 'form', 'Security Application'),
('sec_form_sec_groups', 'form', 'Security Application'),
('sec_form_sec_groups_apps', 'form', 'Security Application'),
('sec_grid_sec_apps', 'cons', 'Security Application'),
('sec_grid_sec_groups', 'cons', 'Security Application'),
('sec_grid_sec_users', 'cons', 'Security Application'),
('sec_grid_sec_users_groups', 'form', 'Security Application'),
('sec_logged', 'contr', 'Security Application'),
('sec_logged_users', 'cons', 'Security Application'),
('sec_Login', 'contr', 'Security Application'),
('sec_retrieve_pswd', 'contr', 'Security Application'),
('sec_search_sec_groups', 'filter', 'Security Application'),
('sec_settings', 'contr', 'Security Application'),
('sec_sync_apps', 'contr', 'Security Application');

-- --------------------------------------------------------

--
-- Table structure for table `t_categorias`
--

CREATE TABLE `t_categorias` (
  `id_cat` int(11) NOT NULL,
  `nombre_cat` varchar(50) NOT NULL,
  `activo_cat` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_categorias`
--

INSERT INTO `t_categorias` (`id_cat`, `nombre_cat`, `activo_cat`) VALUES
(1, 'Razonamiento verbal ', 1),
(2, 'Razonamiento logico', 1),
(3, 'Atención y concentración ', 1),
(4, 'Razonamiento numérico ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_groups`
--

CREATE TABLE `t_groups` (
  `group_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_groups`
--

INSERT INTO `t_groups` (`group_id`, `description`) VALUES
(1, 'Administrador');

-- --------------------------------------------------------

--
-- Table structure for table `t_groups_apps`
--

CREATE TABLE `t_groups_apps` (
  `group_id` int(11) NOT NULL,
  `app_name` varchar(128) NOT NULL,
  `priv_access` varchar(1) DEFAULT NULL,
  `priv_insert` varchar(1) DEFAULT NULL,
  `priv_delete` varchar(1) DEFAULT NULL,
  `priv_update` varchar(1) DEFAULT NULL,
  `priv_export` varchar(1) DEFAULT NULL,
  `priv_print` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_groups_apps`
--

INSERT INTO `t_groups_apps` (`group_id`, `app_name`, `priv_access`, `priv_insert`, `priv_delete`, `priv_update`, `priv_export`, `priv_print`) VALUES
(1, 'form_t_categorias', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(1, 'form_t_preguntas', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(1, 'form_t_respuestas', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(1, 'form_t_usuarios', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(1, 'Menu', 'Y', 'N', 'N', 'N', 'N', 'N'),
(1, 'sec_change_pswd', 'Y', 'N', 'N', 'N', 'N', 'N'),
(1, 'sec_form_add_users', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(1, 'sec_form_edit_users', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(1, 'sec_form_sec_apps', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(1, 'sec_form_sec_groups', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(1, 'sec_form_sec_groups_apps', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(1, 'sec_grid_sec_apps', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
(1, 'sec_grid_sec_groups', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
(1, 'sec_grid_sec_users', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
(1, 'sec_grid_sec_users_groups', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(1, 'sec_logged', 'Y', 'N', 'N', 'N', 'N', 'N'),
(1, 'sec_logged_users', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
(1, 'sec_Login', 'Y', 'N', 'N', 'N', 'N', 'N'),
(1, 'sec_retrieve_pswd', 'Y', 'N', 'N', 'N', 'N', 'N'),
(1, 'sec_search_sec_groups', 'Y', 'N', 'N', 'N', 'N', 'N'),
(1, 'sec_settings', 'Y', 'N', 'N', 'N', 'N', 'N'),
(1, 'sec_sync_apps', 'Y', 'N', 'N', 'N', 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `t_logged`
--

CREATE TABLE `t_logged` (
  `login` varchar(190) NOT NULL,
  `date_login` varchar(128) DEFAULT NULL,
  `sc_session` varchar(32) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_preguntas`
--

CREATE TABLE `t_preguntas` (
  `id_pre` int(11) NOT NULL,
  `titulo_pre` varchar(300) NOT NULL,
  `descripcion_pre` varchar(300) NOT NULL,
  `valor_pre` int(11) NOT NULL DEFAULT '1',
  `t_categorias_id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_preguntas`
--

INSERT INTO `t_preguntas` (`id_pre`, `titulo_pre`, `descripcion_pre`, `valor_pre`, `t_categorias_id_cat`) VALUES
(1, 'Se basó en su PROLONGACIÓN', '', 1, 1),
(2, '4+9*7+2-6-6*11 = 4+9*7+6-2-6*11\r\n', '', 1, 3),
(3, 'da, fa, ha, ja, la,... ', '', 1, 2),
(4, 'Una persona tiene $280 en cinco cupones y cuatro de ellos son de $55 cada uno, ¿de cuánto es el otro cupón?\r\n', '', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `t_respuestas`
--

CREATE TABLE `t_respuestas` (
  `id_res` int(11) NOT NULL,
  `respuesta_res` varchar(300) NOT NULL,
  `detalle_res` varchar(300) NOT NULL,
  `correcta_res` int(11) NOT NULL DEFAULT '0',
  `t_preguntas_id_pre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_respuestas`
--

INSERT INTO `t_respuestas` (`id_res`, `respuesta_res`, `detalle_res`, `correcta_res`, `t_preguntas_id_pre`) VALUES
(1, 'Extensión', '', 1, 1),
(2, 'D', '', 0, 2),
(3, 'na', '', 0, 3),
(4, '$60', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `t_resultados`
--

CREATE TABLE `t_resultados` (
  `id_resu` int(11) NOT NULL,
  `detalle_resu` varchar(300) DEFAULT NULL,
  `valorpuntos_resu` int(11) DEFAULT NULL,
  `t_usuarios_id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_settings`
--

CREATE TABLE `t_settings` (
  `set_name` varchar(255) NOT NULL,
  `set_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_settings`
--

INSERT INTO `t_settings` (`set_name`, `set_value`) VALUES
('brute_force', 'Y'),
('brute_force_attempts', '6'),
('brute_force_time_block', '10'),
('cookie_expiration_time', '30'),
('enable_2fa', 'N'),
('enable_2fa_expiration_time', '300'),
('new_users', 'N'),
('remember_me', 'Y'),
('retrieve_password', 'Y'),
('session_expire', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `t_users`
--

CREATE TABLE `t_users` (
  `login` varchar(190) NOT NULL,
  `pswd` varchar(255) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` varchar(1) DEFAULT NULL,
  `activation_code` varchar(32) DEFAULT NULL,
  `priv_admin` varchar(1) DEFAULT NULL,
  `mfa` varchar(255) DEFAULT NULL,
  `picture` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_users`
--

INSERT INTO `t_users` (`login`, `pswd`, `name`, `email`, `active`, `activation_code`, `priv_admin`, `mfa`, `picture`) VALUES
('1715661250', '55fa6db96d1a533d7658c2eae5719f6f', 'Jimmy Torres', 'torresjimmy2002.12@gmail.com', 'Y', NULL, 'Y', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_users_groups`
--

CREATE TABLE `t_users_groups` (
  `login` varchar(190) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_users_groups`
--

INSERT INTO `t_users_groups` (`login`, `group_id`) VALUES
('1715661250', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_usuarios`
--

CREATE TABLE `t_usuarios` (
  `id_user` int(11) NOT NULL,
  `nombre_user` varchar(20) NOT NULL,
  `password_user` varchar(20) NOT NULL,
  `activo_user` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_usuarios`
--

INSERT INTO `t_usuarios` (`id_user`, `nombre_user`, `password_user`, `activo_user`) VALUES
(1, 'Juan', '1234', 1),
(2, 'Pedro', '4567', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pre_resp`
-- (See below for the actual view)
--
CREATE TABLE `v_pre_resp` (
`titulo_pre` varchar(300)
,`respuesta_res` varchar(300)
);

-- --------------------------------------------------------

--
-- Structure for view `v_pre_resp`
--
DROP TABLE IF EXISTS `v_pre_resp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pre_resp`  AS SELECT `preguntas`.`titulo_pre` AS `titulo_pre`, `respuestas`.`respuesta_res` AS `respuesta_res` FROM (`t_preguntas` `preguntas` join `t_respuestas` `respuestas` on((`preguntas`.`id_pre` = `respuestas`.`t_preguntas_id_pre`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_apps`
--
ALTER TABLE `t_apps`
  ADD PRIMARY KEY (`app_name`);

--
-- Indexes for table `t_categorias`
--
ALTER TABLE `t_categorias`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `t_groups`
--
ALTER TABLE `t_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `t_groups_apps`
--
ALTER TABLE `t_groups_apps`
  ADD PRIMARY KEY (`group_id`,`app_name`),
  ADD KEY `t_groups_apps_ibfk_2` (`app_name`);

--
-- Indexes for table `t_preguntas`
--
ALTER TABLE `t_preguntas`
  ADD PRIMARY KEY (`id_pre`),
  ADD KEY `fk_t_preguntas_t_categorias_idx` (`t_categorias_id_cat`);

--
-- Indexes for table `t_respuestas`
--
ALTER TABLE `t_respuestas`
  ADD PRIMARY KEY (`id_res`),
  ADD KEY `fk_t_respuestas_t_preguntas1_idx` (`t_preguntas_id_pre`);

--
-- Indexes for table `t_resultados`
--
ALTER TABLE `t_resultados`
  ADD PRIMARY KEY (`id_resu`),
  ADD KEY `fk_t_resultados_t_usuarios1_idx` (`t_usuarios_id_user`);

--
-- Indexes for table `t_settings`
--
ALTER TABLE `t_settings`
  ADD PRIMARY KEY (`set_name`);

--
-- Indexes for table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`login`);

--
-- Indexes for table `t_users_groups`
--
ALTER TABLE `t_users_groups`
  ADD PRIMARY KEY (`login`,`group_id`),
  ADD KEY `t_users_groups_ibfk_2` (`group_id`);

--
-- Indexes for table `t_usuarios`
--
ALTER TABLE `t_usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_categorias`
--
ALTER TABLE `t_categorias`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_groups`
--
ALTER TABLE `t_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_preguntas`
--
ALTER TABLE `t_preguntas`
  MODIFY `id_pre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_respuestas`
--
ALTER TABLE `t_respuestas`
  MODIFY `id_res` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `t_resultados`
--
ALTER TABLE `t_resultados`
  MODIFY `id_resu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_usuarios`
--
ALTER TABLE `t_usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_groups_apps`
--
ALTER TABLE `t_groups_apps`
  ADD CONSTRAINT `t_groups_apps_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `t_groups` (`group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_groups_apps_ibfk_2` FOREIGN KEY (`app_name`) REFERENCES `t_apps` (`app_name`) ON DELETE CASCADE;

--
-- Constraints for table `t_preguntas`
--
ALTER TABLE `t_preguntas`
  ADD CONSTRAINT `fk_t_preguntas_t_categorias` FOREIGN KEY (`t_categorias_id_cat`) REFERENCES `t_categorias` (`id_cat`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_respuestas`
--
ALTER TABLE `t_respuestas`
  ADD CONSTRAINT `fk_t_respuestas_t_preguntas1` FOREIGN KEY (`t_preguntas_id_pre`) REFERENCES `t_preguntas` (`id_pre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_resultados`
--
ALTER TABLE `t_resultados`
  ADD CONSTRAINT `fk_t_resultados_t_usuarios1` FOREIGN KEY (`t_usuarios_id_user`) REFERENCES `t_usuarios` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_users_groups`
--
ALTER TABLE `t_users_groups`
  ADD CONSTRAINT `t_users_groups_ibfk_1` FOREIGN KEY (`login`) REFERENCES `t_users` (`login`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_users_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `t_groups` (`group_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
