-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-09-2024 a las 04:31:00
-- Versión del servidor: 11.5.2-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restauranteryr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Administrador'),
(3, 'Operador'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add content type', 1, 'add_contenttype'),
(2, 'Can change content type', 1, 'change_contenttype'),
(3, 'Can delete content type', 1, 'delete_contenttype'),
(4, 'Can view content type', 1, 'view_contenttype'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add auth group', 7, 'add_authgroup'),
(26, 'Can change auth group', 7, 'change_authgroup'),
(27, 'Can delete auth group', 7, 'delete_authgroup'),
(28, 'Can view auth group', 7, 'view_authgroup'),
(29, 'Can add auth group permissions', 8, 'add_authgrouppermissions'),
(30, 'Can change auth group permissions', 8, 'change_authgrouppermissions'),
(31, 'Can delete auth group permissions', 8, 'delete_authgrouppermissions'),
(32, 'Can view auth group permissions', 8, 'view_authgrouppermissions'),
(33, 'Can add auth permission', 9, 'add_authpermission'),
(34, 'Can change auth permission', 9, 'change_authpermission'),
(35, 'Can delete auth permission', 9, 'delete_authpermission'),
(36, 'Can view auth permission', 9, 'view_authpermission'),
(37, 'Can add auth user', 10, 'add_authuser'),
(38, 'Can change auth user', 10, 'change_authuser'),
(39, 'Can delete auth user', 10, 'delete_authuser'),
(40, 'Can view auth user', 10, 'view_authuser'),
(41, 'Can add auth user groups', 11, 'add_authusergroups'),
(42, 'Can change auth user groups', 11, 'change_authusergroups'),
(43, 'Can delete auth user groups', 11, 'delete_authusergroups'),
(44, 'Can view auth user groups', 11, 'view_authusergroups'),
(45, 'Can add auth user user permissions', 12, 'add_authuseruserpermissions'),
(46, 'Can change auth user user permissions', 12, 'change_authuseruserpermissions'),
(47, 'Can delete auth user user permissions', 12, 'delete_authuseruserpermissions'),
(48, 'Can view auth user user permissions', 12, 'view_authuseruserpermissions'),
(49, 'Can add django admin log', 13, 'add_djangoadminlog'),
(50, 'Can change django admin log', 13, 'change_djangoadminlog'),
(51, 'Can delete django admin log', 13, 'delete_djangoadminlog'),
(52, 'Can view django admin log', 13, 'view_djangoadminlog'),
(53, 'Can add django content type', 14, 'add_djangocontenttype'),
(54, 'Can change django content type', 14, 'change_djangocontenttype'),
(55, 'Can delete django content type', 14, 'delete_djangocontenttype'),
(56, 'Can view django content type', 14, 'view_djangocontenttype'),
(57, 'Can add django migrations', 15, 'add_djangomigrations'),
(58, 'Can change django migrations', 15, 'change_djangomigrations'),
(59, 'Can delete django migrations', 15, 'delete_djangomigrations'),
(60, 'Can view django migrations', 15, 'view_djangomigrations'),
(61, 'Can add django session', 16, 'add_djangosession'),
(62, 'Can change django session', 16, 'change_djangosession'),
(63, 'Can delete django session', 16, 'delete_djangosession'),
(64, 'Can view django session', 16, 'view_djangosession'),
(65, 'Can add cajas', 17, 'add_cajas'),
(66, 'Can change cajas', 17, 'change_cajas'),
(67, 'Can delete cajas', 17, 'delete_cajas'),
(68, 'Can view cajas', 17, 'view_cajas'),
(69, 'Can add clientes', 18, 'add_clientes'),
(70, 'Can change clientes', 18, 'change_clientes'),
(71, 'Can delete clientes', 18, 'delete_clientes'),
(72, 'Can view clientes', 18, 'view_clientes'),
(73, 'Can add comprobantes', 19, 'add_comprobantes'),
(74, 'Can change comprobantes', 19, 'change_comprobantes'),
(75, 'Can delete comprobantes', 19, 'delete_comprobantes'),
(76, 'Can view comprobantes', 19, 'view_comprobantes'),
(77, 'Can add empleados', 20, 'add_empleados'),
(78, 'Can change empleados', 20, 'change_empleados'),
(79, 'Can delete empleados', 20, 'delete_empleados'),
(80, 'Can view empleados', 20, 'view_empleados'),
(81, 'Can add mesas', 21, 'add_mesas'),
(82, 'Can change mesas', 21, 'change_mesas'),
(83, 'Can delete mesas', 21, 'delete_mesas'),
(84, 'Can view mesas', 21, 'view_mesas'),
(85, 'Can add sucursales', 22, 'add_sucursales'),
(86, 'Can change sucursales', 22, 'change_sucursales'),
(87, 'Can delete sucursales', 22, 'delete_sucursales'),
(88, 'Can view sucursales', 22, 'view_sucursales'),
(89, 'Can add tipo comprobante', 23, 'add_tipocomprobante'),
(90, 'Can change tipo comprobante', 23, 'change_tipocomprobante'),
(91, 'Can delete tipo comprobante', 23, 'delete_tipocomprobante'),
(92, 'Can view tipo comprobante', 23, 'view_tipocomprobante'),
(93, 'Can add tipo empleado', 24, 'add_tipoempleado'),
(94, 'Can change tipo empleado', 24, 'change_tipoempleado'),
(95, 'Can delete tipo empleado', 24, 'delete_tipoempleado'),
(96, 'Can view tipo empleado', 24, 'view_tipoempleado'),
(97, 'Can add tipo movimiento', 25, 'add_tipomovimiento'),
(98, 'Can change tipo movimiento', 25, 'change_tipomovimiento'),
(99, 'Can delete tipo movimiento', 25, 'delete_tipomovimiento'),
(100, 'Can view tipo movimiento', 25, 'view_tipomovimiento'),
(101, 'Can add tipo pedidos', 26, 'add_tipopedidos'),
(102, 'Can change tipo pedidos', 26, 'change_tipopedidos'),
(103, 'Can delete tipo pedidos', 26, 'delete_tipopedidos'),
(104, 'Can view tipo pedidos', 26, 'view_tipopedidos'),
(105, 'Can add tipo productos', 27, 'add_tipoproductos'),
(106, 'Can change tipo productos', 27, 'change_tipoproductos'),
(107, 'Can delete tipo productos', 27, 'delete_tipoproductos'),
(108, 'Can view tipo productos', 27, 'view_tipoproductos'),
(109, 'Can add ventas', 28, 'add_ventas'),
(110, 'Can change ventas', 28, 'change_ventas'),
(111, 'Can delete ventas', 28, 'delete_ventas'),
(112, 'Can view ventas', 28, 'view_ventas'),
(113, 'Can add productos', 29, 'add_productos'),
(114, 'Can change productos', 29, 'change_productos'),
(115, 'Can delete productos', 29, 'delete_productos'),
(116, 'Can view productos', 29, 'view_productos'),
(117, 'Can add pedidos', 30, 'add_pedidos'),
(118, 'Can change pedidos', 30, 'change_pedidos'),
(119, 'Can delete pedidos', 30, 'delete_pedidos'),
(120, 'Can view pedidos', 30, 'view_pedidos'),
(121, 'Can add detalle pedidos', 31, 'add_detallepedidos'),
(122, 'Can change detalle pedidos', 31, 'change_detallepedidos'),
(123, 'Can delete detalle pedidos', 31, 'delete_detallepedidos'),
(124, 'Can view detalle pedidos', 31, 'view_detallepedidos'),
(125, 'Can add comprobante ventas', 32, 'add_comprobanteventas'),
(126, 'Can change comprobante ventas', 32, 'change_comprobanteventas'),
(127, 'Can delete comprobante ventas', 32, 'delete_comprobanteventas'),
(128, 'Can view comprobante ventas', 32, 'view_comprobanteventas'),
(129, 'Can add tipo cliente', 33, 'add_tipocliente'),
(130, 'Can change tipo cliente', 33, 'change_tipocliente'),
(131, 'Can delete tipo cliente', 33, 'delete_tipocliente'),
(132, 'Can view tipo cliente', 33, 'view_tipocliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$ToRSeAr45QhEFIf0LiBXhU$MFFfhOQOMuN3AqmYUJNrOEbaBHVwBcTiVp56ziA4mVk=', '2024-09-08 13:57:46.303110', 1, 'pilar', '', '', 'pilarcayo33@gmail.com', 1, 1, '2023-10-29 19:21:20.000000'),
(2, 'pbkdf2_sha256$600000$7rs7Pu0C8sHZXxf21qbPof$RrAAQYFrk0MXWxkV2EtDYFWOliahSO/OFKWYsH/wVKY=', '2023-11-02 00:45:50.980746', 0, 'userEmpleado', 'Manuel', 'Escalante', 'administrator@brackets.sk', 0, 1, '2023-11-02 00:45:49.968899'),
(3, 'pbkdf2_sha256$600000$72zDSKnMYnf1W2bJqpQ0jk$yzKZB1cTq9CH/TOfDibqi3q84t9HLShFzDc8eVcvjKo=', NULL, 0, 'userRegister', 'pilar', 'cayo', 'administrator@brackets.sk23', 0, 1, '2023-11-11 21:12:26.619143'),
(4, 'pbkdf2_sha256$600000$gA1LBDywTI0U9VaaJN9uo4$LRru2wvjMk9qtvnpbWIS2pkseftHG7/2YcmJbGwDBBc=', '2023-11-11 21:15:42.485893', 0, 'userClaudia', 'pili', 'pililiu', 'isdmzoom10@gmail.com', 0, 1, '2023-11-11 21:15:41.497222');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `iIdCaja` bigint(20) NOT NULL,
  `iNroCaja` int(11) NOT NULL,
  `dFechaApertura` datetime(6) NOT NULL,
  `dFechaCierre` datetime(6) DEFAULT NULL,
  `fMontoApertura` decimal(8,2) NOT NULL,
  `fMontoCierre` decimal(8,2) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `sObservaciones` varchar(2000) NOT NULL,
  `iIdEmpleado` bigint(20) NOT NULL,
  `iIdSucursal` bigint(20) NOT NULL,
  `iIdTipoMovimiento` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `cajas`
--

INSERT INTO `cajas` (`iIdCaja`, `iNroCaja`, `dFechaApertura`, `dFechaCierre`, `fMontoApertura`, `fMontoCierre`, `created_at`, `updated_at`, `sObservaciones`, `iIdEmpleado`, `iIdSucursal`, `iIdTipoMovimiento`) VALUES
(1, 1, '2023-10-30 22:36:53.177894', NULL, '1000.00', NULL, '2023-10-30 22:36:53.177894', '2023-10-30 22:36:53.177894', 'no hubo moneda extranjera', 1, 1, 1),
(2, 2, '2023-10-31 20:11:39.094837', NULL, '2300.00', NULL, '2023-10-31 20:11:39.094837', '2023-10-31 20:11:39.094837', 'no hubo moneda extranjera', 1, 1, 1),
(3, 3, '2023-11-01 23:30:09.338171', NULL, '234.00', NULL, '2023-11-01 23:30:09.338171', '2023-11-01 23:30:09.338171', 'no hubo moneda extranjera', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `iIdCliente` bigint(20) NOT NULL,
  `sNombreCliente` varchar(191) NOT NULL,
  `sApellidoCliente` varchar(191) NOT NULL,
  `iDNI` int(11) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `sEmail` varchar(50) NOT NULL,
  `sTelefono` varchar(15) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `iIdTipoCliente` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`iIdCliente`, `sNombreCliente`, `sApellidoCliente`, `iDNI`, `iIdEstado`, `sEmail`, `sTelefono`, `created_at`, `updated_at`, `iIdTipoCliente`, `user_id`) VALUES
(1, 'pili', 'pililiu', 45567754, 1, '', '', NULL, NULL, 2, 4),
(2, 'Eugenia', 'taza', 3234234, 1, '', '', NULL, NULL, NULL, NULL),
(3, 'Claudia', 'Mendoza', 45343, 1, '', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobantes`
--

CREATE TABLE `comprobantes` (
  `iIdComprobante` bigint(20) NOT NULL,
  `sNombreComprobante` varchar(191) NOT NULL,
  `sDescripcion` varchar(191) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `iIdTipoComprobante` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante_ventas`
--

CREATE TABLE `comprobante_ventas` (
  `iIdComprobanteVenta` bigint(20) NOT NULL,
  `dFechaEmision` datetime(6) NOT NULL,
  `fImporte` decimal(8,2) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `iIdComprobante` bigint(20) NOT NULL,
  `iIdVenta` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedidos`
--

CREATE TABLE `detallepedidos` (
  `iIdDetallePedido` bigint(20) NOT NULL,
  `iCantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `iIdPedido` bigint(20) DEFAULT NULL,
  `iIdProducto` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `detallepedidos`
--

INSERT INTO `detallepedidos` (`iIdDetallePedido`, `iCantidad`, `precio_unitario`, `iIdPedido`, `iIdProducto`) VALUES
(1, 1, '1000.00', 3, 1),
(2, 1, '3500.00', 3, 2),
(3, 1, '1000.00', 4, 1),
(4, 1, '1000.00', 5, 1),
(5, 1, '2900.00', 5, 3),
(6, 1, '1000.00', 6, 1),
(7, 1, '2900.00', 6, 3),
(8, 1, '1000.00', 7, 1),
(9, 1, '2900.00', 7, 3),
(10, 1, '1000.00', 8, 1),
(11, 1, '2900.00', 8, 3),
(12, 1, '1000.00', 9, 1),
(13, 1, '2900.00', 9, 3),
(14, 1, '1000.00', 10, 1),
(15, 1, '3500.00', 10, 2),
(16, 1, '1000.00', 11, 1),
(17, 1, '3500.00', 11, 2),
(18, 1, '3500.00', 12, 2),
(19, 1, '1000.00', 13, 1),
(20, 1, '3500.00', 14, 2),
(21, 1, '2700.00', 15, 4),
(22, 1, '2900.00', 16, 3),
(23, 1, '1000.00', 17, 1),
(24, 1, '3500.00', 18, 2),
(25, 1, '1000.00', 18, 1),
(26, 1, '3500.00', 19, 2),
(27, 1, '2700.00', 19, 4),
(28, 1, '1000.00', 20, 1),
(29, 1, '2700.00', 21, 4),
(30, 1, '1000.00', 22, 1),
(31, 1, '3500.00', 23, 2),
(32, 1, '3500.00', 24, 2),
(33, 1, '1000.00', 25, 1),
(34, 1, '3500.00', 26, 2),
(35, 1, '1000.00', 26, 1),
(36, 1, '3500.00', 27, 2),
(37, 1, '3500.00', 28, 2),
(38, 1, '1000.00', 28, 1),
(39, 1, '2700.00', 28, 4),
(40, 1, '2900.00', 29, 3),
(41, 1, '3500.00', 29, 2),
(42, 1, '3500.00', 30, 2),
(43, 1, '1000.00', 30, 1),
(44, 1, '2700.00', 30, 4),
(45, 1, '3500.00', 31, 2),
(46, 1, '3500.00', 32, 2),
(47, 1, '1000.00', 34, 1),
(48, 1, '1000.00', 35, 1),
(49, 2, '7000.00', 36, 2),
(50, 1, '1000.00', 36, 1),
(51, 1, '3500.00', 37, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-29 19:23:55.394188', '1', 'Administrador', 1, '[{\"added\": {}}]', 4, 1),
(2, '2023-10-29 19:24:05.776934', '2', 'Usuario', 1, '[{\"added\": {}}]', 4, 1),
(3, '2023-10-29 19:24:12.473196', '3', 'Operador', 1, '[{\"added\": {}}]', 4, 1),
(4, '2023-10-29 19:25:02.176882', '1', 'pilar', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(5, '2023-10-29 19:25:47.006990', '1', 'TipoProductos object (1)', 1, '[{\"added\": {}}]', 27, 1),
(6, '2023-10-29 19:30:55.633399', '2', 'TipoProductos object (2)', 1, '[{\"added\": {}}]', 27, 1),
(7, '2023-10-29 19:34:20.936656', '1', 'Productos object (1)', 1, '[{\"added\": {}}]', 29, 1),
(8, '2023-10-29 19:34:55.648353', '2', 'Productos object (2)', 1, '[{\"added\": {}}]', 29, 1),
(9, '2023-10-29 19:35:29.498228', '3', 'Productos object (3)', 1, '[{\"added\": {}}]', 29, 1),
(10, '2023-10-29 19:35:57.144873', '4', 'Productos object (4)', 1, '[{\"added\": {}}]', 29, 1),
(11, '2023-10-29 20:22:18.176265', '1', 'Empleados object (1)', 1, '[{\"added\": {}}]', 20, 1),
(12, '2023-10-30 22:32:19.244668', '1', 'Apertura', 1, '[{\"added\": {}}]', 25, 1),
(13, '2023-10-30 22:32:44.168622', '2', 'Salida', 1, '[{\"added\": {}}]', 25, 1),
(14, '2023-10-30 22:32:59.140632', '3', 'Cierre', 1, '[{\"added\": {}}]', 25, 1),
(15, '2023-10-30 22:33:17.908266', '1', 'Centro', 1, '[{\"added\": {}}]', 22, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(7, 'CarritoApp', 'authgroup'),
(8, 'CarritoApp', 'authgrouppermissions'),
(9, 'CarritoApp', 'authpermission'),
(10, 'CarritoApp', 'authuser'),
(11, 'CarritoApp', 'authusergroups'),
(12, 'CarritoApp', 'authuseruserpermissions'),
(17, 'CarritoApp', 'cajas'),
(18, 'CarritoApp', 'clientes'),
(19, 'CarritoApp', 'comprobantes'),
(32, 'CarritoApp', 'comprobanteventas'),
(31, 'CarritoApp', 'detallepedidos'),
(13, 'CarritoApp', 'djangoadminlog'),
(14, 'CarritoApp', 'djangocontenttype'),
(15, 'CarritoApp', 'djangomigrations'),
(16, 'CarritoApp', 'djangosession'),
(20, 'CarritoApp', 'empleados'),
(21, 'CarritoApp', 'mesas'),
(30, 'CarritoApp', 'pedidos'),
(29, 'CarritoApp', 'productos'),
(22, 'CarritoApp', 'sucursales'),
(33, 'CarritoApp', 'tipocliente'),
(23, 'CarritoApp', 'tipocomprobante'),
(24, 'CarritoApp', 'tipoempleado'),
(25, 'CarritoApp', 'tipomovimiento'),
(26, 'CarritoApp', 'tipopedidos'),
(27, 'CarritoApp', 'tipoproductos'),
(28, 'CarritoApp', 'ventas'),
(1, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-29 19:19:00.423881'),
(2, 'auth', '0001_initial', '2023-10-29 19:19:01.340426'),
(3, 'CarritoApp', '0001_initial', '2023-10-29 19:19:03.410503'),
(4, 'admin', '0001_initial', '2023-10-29 19:19:03.618110'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-10-29 19:19:03.633731'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-29 19:19:03.658859'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-10-29 19:19:03.788151'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-10-29 19:19:03.988066'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-10-29 19:19:04.097741'),
(10, 'auth', '0004_alter_user_username_opts', '2023-10-29 19:19:04.107464'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-10-29 19:19:04.201479'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-10-29 19:19:04.209492'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-10-29 19:19:04.241161'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-10-29 19:19:04.291472'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-10-29 19:19:04.310195'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-10-29 19:19:04.410668'),
(17, 'auth', '0011_update_proxy_permissions', '2023-10-29 19:19:04.444669'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-10-29 19:19:04.477883'),
(19, 'sessions', '0001_initial', '2023-10-29 19:19:04.545032'),
(20, 'CarritoApp', '0002_alter_pedidos_options', '2023-10-29 19:19:36.104774'),
(21, 'CarritoApp', '0003_alter_cajas_options_alter_clientes_options_and_more', '2023-10-30 22:35:39.350408'),
(22, 'CarritoApp', '0004_alter_cajas_options', '2023-10-30 22:35:39.366408'),
(23, 'CarritoApp', '0005_alter_detallepedidos_options_and_more', '2023-10-31 21:42:26.928698'),
(24, 'CarritoApp', '0006_tipocliente_alter_detallepedidos_options', '2023-11-11 20:23:29.403016'),
(25, 'CarritoApp', '0007_alter_clientes_options_alter_tipocliente_options', '2023-11-11 20:34:37.348485'),
(26, 'CarritoApp', '0008_clientes_iidtipocliente', '2023-11-11 20:36:10.773446'),
(27, 'CarritoApp', '0009_clientes_user', '2023-11-11 20:38:08.280072');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('enxh7xti7twvdiwn5x2yzw1kcswm26ox', '.eJxVjDsOgzAQBe_iOrL8WbM4ZXrOgHbxEkgiW8JQRbl7QKJI2jcz76162tap36os_ZzUVVl1-d2YhqfkA6QH5XvRQ8nrMrM-FH3SqruS5HU73b-Dieq014DtOEQM0Tkj1NgUiRKjQ7biAWywiCMHhgDOgzHt7jeSGkOAHoXU5wvJRjcY:1shIVu:fln_j-aVVgR8haZK3w_tCzKmvSC_n2BPN_oL19Rrwp0', '2024-09-06 00:50:50.197260'),
('pwbj40qz1eho33ab8058nqojtaxinalt', '.eJxVjDsOgzAQBe_iOrL8WbM4ZXrOgHbxEkgiW8JQRbl7QKJI2jcz76162tap36os_ZzUVVl1-d2YhqfkA6QH5XvRQ8nrMrM-FH3SqruS5HU73b-Dieq014DtOEQM0Tkj1NgUiRKjQ7biAWywiCMHhgDOgzHt7jeSGkOAHoXU5wvJRjcY:1snIQE:FuZ2fPeybmG3MIzYdnyJ0y1zIqxpP0chAFTzDlWiIl8', '2024-09-22 13:57:46.303110'),
('zoi0xmvh9e1gxe9ae9djnwd51m8n1s10', '.eJxVjDsOwyAQRO9CHSFYsFlSpvcZEMsnOIlAMnYV5e6xJRdJOfPezJs5v63FbT0tbo7syjS7_HbkwzPVA8SHr_fGQ6vrMhM_FH7SzqcW0-t2un8Hxfeyr5GMxRhIgwYCOWaFox8UWmtyEll6HYwlBGXlEAhEjAJIiT0AEqBhny_PqTcX:1r1vKQ:33CgY9Tb-_J4jPP8LSgbs3oIb0dwkJj_NzNdnORvmmo', '2023-11-25 21:15:42.485893');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `iIdEmpleado` bigint(20) NOT NULL,
  `sNombre` varchar(191) NOT NULL,
  `sApellido` varchar(191) NOT NULL,
  `iDNI` int(11) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `iIdTipoEmpleado` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`iIdEmpleado`, `sNombre`, `sApellido`, `iDNI`, `iIdEstado`, `created_at`, `updated_at`, `iIdTipoEmpleado`, `user_id`) VALUES
(1, 'Laura', 'Lopez', 4356782, 1, '2023-10-29 20:22:13.000000', '2023-10-29 20:22:15.000000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `iIdMesa` bigint(20) NOT NULL,
  `iNroMesa` int(11) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `iIdSucursal` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `iIdPedido` bigint(20) NOT NULL,
  `iNroPedido` int(11) NOT NULL,
  `dFechaPedido` datetime(6) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `iTotal` int(11) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `iIdCliente` bigint(20) DEFAULT NULL,
  `iIdEmpleado` bigint(20) DEFAULT NULL,
  `iIdMesa` bigint(20) DEFAULT NULL,
  `iIdTipoPedido` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`iIdPedido`, `iNroPedido`, `dFechaPedido`, `iIdEstado`, `iTotal`, `created_at`, `updated_at`, `iIdCliente`, `iIdEmpleado`, `iIdMesa`, `iIdTipoPedido`) VALUES
(1, 1, '2023-10-29 03:00:00.000000', 1, 0, NULL, NULL, NULL, 1, NULL, 2),
(2, 2, '2023-10-29 03:00:00.000000', 1, 0, NULL, NULL, NULL, 1, NULL, 2),
(3, 3, '2023-10-29 03:00:00.000000', 1, 4500, NULL, NULL, NULL, 1, NULL, 2),
(4, 4, '2023-10-29 03:00:00.000000', 1, 1000, NULL, NULL, NULL, 1, NULL, 2),
(5, 5, '2023-10-29 03:00:00.000000', 1, 3900, NULL, NULL, NULL, 1, NULL, 2),
(6, 6, '2023-10-29 03:00:00.000000', 1, 3900, NULL, NULL, NULL, 1, NULL, 2),
(7, 7, '2023-10-29 03:00:00.000000', 1, 3900, NULL, NULL, NULL, 1, NULL, 2),
(8, 8, '2023-10-29 03:00:00.000000', 1, 3900, NULL, NULL, NULL, 1, NULL, 2),
(9, 9, '2023-10-29 03:00:00.000000', 1, 3900, NULL, NULL, NULL, 1, NULL, 2),
(10, 10, '2023-10-31 03:00:00.000000', 1, 4500, NULL, NULL, NULL, 1, NULL, 2),
(11, 11, '2023-10-31 03:00:00.000000', 1, 4500, NULL, NULL, NULL, 1, NULL, 2),
(12, 12, '2023-10-31 03:00:00.000000', 1, 3500, NULL, NULL, NULL, 1, NULL, 2),
(13, 13, '2023-10-31 03:00:00.000000', 1, 1000, NULL, NULL, NULL, 1, NULL, 2),
(14, 14, '2023-10-31 03:00:00.000000', 1, 3500, NULL, NULL, NULL, 1, NULL, 2),
(15, 15, '2023-10-31 03:00:00.000000', 1, 2700, NULL, NULL, NULL, 1, NULL, 2),
(16, 16, '2023-10-31 03:00:00.000000', 1, 2900, NULL, NULL, NULL, 1, NULL, 2),
(17, 17, '2023-10-31 03:00:00.000000', 1, 1000, NULL, NULL, NULL, 1, NULL, 2),
(18, 18, '2023-10-31 03:00:00.000000', 1, 4500, NULL, NULL, NULL, 1, NULL, 2),
(19, 19, '2023-10-31 03:00:00.000000', 1, 6200, NULL, NULL, NULL, 1, NULL, 2),
(20, 20, '2023-10-31 03:00:00.000000', 1, 1000, NULL, NULL, NULL, 1, NULL, 2),
(21, 21, '2023-10-31 03:00:00.000000', 1, 2700, NULL, NULL, NULL, 1, NULL, 2),
(22, 22, '2023-10-31 03:00:00.000000', 1, 1000, NULL, NULL, NULL, 1, NULL, 2),
(23, 23, '2023-10-31 03:00:00.000000', 1, 3500, NULL, NULL, NULL, 1, NULL, 2),
(24, 24, '2023-10-31 03:00:00.000000', 1, 3500, NULL, NULL, NULL, 1, NULL, 2),
(25, 25, '2023-10-31 03:00:00.000000', 1, 1000, NULL, NULL, NULL, 1, NULL, 2),
(26, 26, '2023-10-31 03:00:00.000000', 1, 4500, NULL, NULL, NULL, 1, NULL, 2),
(27, 27, '2023-10-31 03:00:00.000000', 1, 3500, NULL, NULL, NULL, 1, NULL, 2),
(28, 28, '2023-10-31 03:00:00.000000', 1, 7200, NULL, NULL, NULL, 1, NULL, 2),
(29, 29, '2023-10-31 03:00:00.000000', 1, 6400, NULL, NULL, NULL, 1, NULL, 2),
(30, 30, '2023-10-31 03:00:00.000000', 1, 7200, NULL, NULL, NULL, 1, NULL, 2),
(31, 31, '2023-10-31 03:00:00.000000', 1, 3500, NULL, NULL, NULL, 1, NULL, 2),
(32, 32, '2023-10-31 03:00:00.000000', 1, 3500, NULL, NULL, NULL, 1, NULL, 2),
(33, 33, '2023-10-31 03:00:00.000000', 1, 0, NULL, NULL, NULL, 1, NULL, 2),
(34, 34, '2023-10-31 03:00:00.000000', 1, 1000, NULL, NULL, NULL, 1, NULL, 2),
(35, 35, '2023-10-31 03:00:00.000000', 1, 1000, NULL, NULL, NULL, 1, NULL, 2),
(36, 36, '2023-10-31 03:00:00.000000', 1, 8000, NULL, NULL, NULL, 1, NULL, 2),
(37, 37, '2023-11-01 03:00:00.000000', 1, 3500, NULL, NULL, NULL, 1, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `iIdProducto` bigint(20) NOT NULL,
  `sNombreProducto` varchar(191) NOT NULL,
  `sDescripcion` varchar(191) NOT NULL,
  `iStock` int(11) NOT NULL,
  `dPrecio` int(11) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `sUrl` varchar(250) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `iIdTipoProducto` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`iIdProducto`, `sNombreProducto`, `sDescripcion`, `iStock`, `dPrecio`, `iIdEstado`, `sUrl`, `created_at`, `updated_at`, `iIdTipoProducto`) VALUES
(1, 'Desayuno', 'Desayuno saludable con frutos secos', 10, 1000, 1, 'img/desayunoSaludable.jpg', '2023-10-29 19:34:18.000000', '2023-10-29 19:34:19.000000', 2),
(2, 'Pizza especial', 'Pizza especial con la mejor selección de hierbas, especias y condimentos Alicante', 12, 3500, 1, 'img/pizza.jpg', '2023-10-29 19:34:53.000000', '2023-10-29 19:34:54.000000', 1),
(3, 'Frutos rojos', 'Bol de cereales y frutos rojos', 34, 2900, 1, 'img/frutosRojos.jpg', '2023-10-29 19:35:27.000000', '2023-10-29 19:35:28.000000', 2),
(4, 'Desayuno proteico', 'Desayuno saludable con huevos y palta', 23, 2700, 1, 'img/break.jpg', '2023-10-29 19:35:55.000000', '2023-10-29 19:35:56.000000', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `iIdSucursal` bigint(20) NOT NULL,
  `sNombre` varchar(191) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`iIdSucursal`, `sNombre`, `iIdEstado`, `created_at`, `updated_at`) VALUES
(1, 'Centro', 1, '2023-10-30 22:33:14.000000', '2023-10-30 22:33:17.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cliente`
--

CREATE TABLE `tipo_cliente` (
  `iIdTipoCliente` bigint(20) NOT NULL,
  `sTipoCliente` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `tipo_cliente`
--

INSERT INTO `tipo_cliente` (`iIdTipoCliente`, `sTipoCliente`) VALUES
(1, 'simple'),
(2, 'premium');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_comprobante`
--

CREATE TABLE `tipo_comprobante` (
  `iIdTipoComprobante` bigint(20) NOT NULL,
  `sNombreTipoComprobante` varchar(191) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empleado`
--

CREATE TABLE `tipo_empleado` (
  `iIdTipoEmpleado` bigint(20) NOT NULL,
  `sTipoEmpleado` varchar(191) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `tipo_empleado`
--

INSERT INTO `tipo_empleado` (`iIdTipoEmpleado`, `sTipoEmpleado`, `created_at`, `updated_at`) VALUES
(1, 'Gerente', '2023-10-29 17:20:55.000000', '2023-10-29 17:20:55.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_movimiento`
--

CREATE TABLE `tipo_movimiento` (
  `iIdTipoMovimiento` bigint(20) NOT NULL,
  `sTipoMovimiento` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `tipo_movimiento`
--

INSERT INTO `tipo_movimiento` (`iIdTipoMovimiento`, `sTipoMovimiento`) VALUES
(1, 'Apertura'),
(2, 'Salida'),
(3, 'Cierre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pedidos`
--

CREATE TABLE `tipo_pedidos` (
  `iIdTipoPedido` bigint(20) NOT NULL,
  `sTipo` varchar(191) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `tipo_pedidos`
--

INSERT INTO `tipo_pedidos` (`iIdTipoPedido`, `sTipo`, `iIdEstado`, `created_at`, `updated_at`) VALUES
(1, 'InSitu', 1, NULL, NULL),
(2, 'Online', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_productos`
--

CREATE TABLE `tipo_productos` (
  `iIdTipoProducto` bigint(20) NOT NULL,
  `sNombreTipoProducto` varchar(191) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `tipo_productos`
--

INSERT INTO `tipo_productos` (`iIdTipoProducto`, `sNombreTipoProducto`, `iIdEstado`, `created_at`, `updated_at`) VALUES
(1, 'Pastas', 1, '2023-10-29 19:25:45.000000', '2023-10-29 19:25:46.000000'),
(2, 'Saludable', 1, '2023-10-29 19:30:53.000000', '2023-10-29 19:30:54.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `iIdVenta` bigint(20) NOT NULL,
  `iNroVenta` int(11) NOT NULL,
  `dFechaVenta` datetime(6) NOT NULL,
  `fMontoVenta` decimal(8,2) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `iIdCaja` bigint(20) NOT NULL,
  `iIdEmpleado` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`iIdCaja`),
  ADD KEY `cajas_iIdEmpleado_cec70c6e_fk_empleados_iIdEmpleado` (`iIdEmpleado`),
  ADD KEY `cajas_iIdSucursal_98ce61ac_fk_sucursales_iIdSucursal` (`iIdSucursal`),
  ADD KEY `cajas_iIdTipoMovimiento_a636b679_fk_tipo_movi` (`iIdTipoMovimiento`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`iIdCliente`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `clientes_iIdTipoCliente_c76f3857_fk_tipo_cliente_iIdTipoCliente` (`iIdTipoCliente`);

--
-- Indices de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`iIdComprobante`),
  ADD KEY `comprobantes_iIdTipoComprobante_2541201e_fk_tipo_comp` (`iIdTipoComprobante`);

--
-- Indices de la tabla `comprobante_ventas`
--
ALTER TABLE `comprobante_ventas`
  ADD PRIMARY KEY (`iIdComprobanteVenta`),
  ADD KEY `comprobante_ventas_iIdComprobante_ece15b11_fk_comproban` (`iIdComprobante`),
  ADD KEY `comprobante_ventas_iIdVenta_1269f5cb_fk_ventas_iIdVenta` (`iIdVenta`);

--
-- Indices de la tabla `detallepedidos`
--
ALTER TABLE `detallepedidos`
  ADD PRIMARY KEY (`iIdDetallePedido`),
  ADD KEY `detallepedidos_iIdPedido_a3684dac_fk_pedidos_iIdPedido` (`iIdPedido`),
  ADD KEY `detallepedidos_iIdProducto_fad082a6_fk_productos_iIdProducto` (`iIdProducto`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`iIdEmpleado`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `empleados_iIdTipoEmpleado_fd710ebb_fk_tipo_empl` (`iIdTipoEmpleado`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`iIdMesa`),
  ADD KEY `mesas_iIdSucursal_ff7c3954_fk_sucursales_iIdSucursal` (`iIdSucursal`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`iIdPedido`),
  ADD KEY `pedidos_iIdCliente_9340b32d_fk_clientes_iIdCliente` (`iIdCliente`),
  ADD KEY `pedidos_iIdEmpleado_0bd663ce_fk_empleados_iIdEmpleado` (`iIdEmpleado`),
  ADD KEY `pedidos_iIdMesa_53d383a6_fk_mesas_iIdMesa` (`iIdMesa`),
  ADD KEY `pedidos_iIdTipoPedido_92a39193_fk_tipo_pedidos_iIdTipoPedido` (`iIdTipoPedido`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`iIdProducto`),
  ADD KEY `productos_iIdTipoProducto_536e6d05_fk_tipo_prod` (`iIdTipoProducto`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`iIdSucursal`);

--
-- Indices de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  ADD PRIMARY KEY (`iIdTipoCliente`);

--
-- Indices de la tabla `tipo_comprobante`
--
ALTER TABLE `tipo_comprobante`
  ADD PRIMARY KEY (`iIdTipoComprobante`);

--
-- Indices de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  ADD PRIMARY KEY (`iIdTipoEmpleado`);

--
-- Indices de la tabla `tipo_movimiento`
--
ALTER TABLE `tipo_movimiento`
  ADD PRIMARY KEY (`iIdTipoMovimiento`);

--
-- Indices de la tabla `tipo_pedidos`
--
ALTER TABLE `tipo_pedidos`
  ADD PRIMARY KEY (`iIdTipoPedido`);

--
-- Indices de la tabla `tipo_productos`
--
ALTER TABLE `tipo_productos`
  ADD PRIMARY KEY (`iIdTipoProducto`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`iIdVenta`),
  ADD KEY `ventas_iIdCaja_7e9bf3bc_fk_cajas_iIdCaja` (`iIdCaja`),
  ADD KEY `ventas_iIdEmpleado_85d764ee_fk_empleados_iIdEmpleado` (`iIdEmpleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `iIdCaja` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `iIdCliente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  MODIFY `iIdComprobante` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comprobante_ventas`
--
ALTER TABLE `comprobante_ventas`
  MODIFY `iIdComprobanteVenta` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallepedidos`
--
ALTER TABLE `detallepedidos`
  MODIFY `iIdDetallePedido` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `iIdEmpleado` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `iIdMesa` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `iIdPedido` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `iIdProducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `iIdSucursal` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  MODIFY `iIdTipoCliente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_comprobante`
--
ALTER TABLE `tipo_comprobante`
  MODIFY `iIdTipoComprobante` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  MODIFY `iIdTipoEmpleado` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_movimiento`
--
ALTER TABLE `tipo_movimiento`
  MODIFY `iIdTipoMovimiento` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_pedidos`
--
ALTER TABLE `tipo_pedidos`
  MODIFY `iIdTipoPedido` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_productos`
--
ALTER TABLE `tipo_productos`
  MODIFY `iIdTipoProducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `iIdVenta` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD CONSTRAINT `cajas_iIdEmpleado_cec70c6e_fk_empleados_iIdEmpleado` FOREIGN KEY (`iIdEmpleado`) REFERENCES `empleados` (`iIdEmpleado`),
  ADD CONSTRAINT `cajas_iIdSucursal_98ce61ac_fk_sucursales_iIdSucursal` FOREIGN KEY (`iIdSucursal`) REFERENCES `sucursales` (`iIdSucursal`),
  ADD CONSTRAINT `cajas_iIdTipoMovimiento_a636b679_fk_tipo_movi` FOREIGN KEY (`iIdTipoMovimiento`) REFERENCES `tipo_movimiento` (`iIdTipoMovimiento`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_iIdTipoCliente_c76f3857_fk_tipo_cliente_iIdTipoCliente` FOREIGN KEY (`iIdTipoCliente`) REFERENCES `tipo_cliente` (`iIdTipoCliente`),
  ADD CONSTRAINT `clientes_user_id_2e92d62d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD CONSTRAINT `comprobantes_iIdTipoComprobante_2541201e_fk_tipo_comp` FOREIGN KEY (`iIdTipoComprobante`) REFERENCES `tipo_comprobante` (`iIdTipoComprobante`);

--
-- Filtros para la tabla `comprobante_ventas`
--
ALTER TABLE `comprobante_ventas`
  ADD CONSTRAINT `comprobante_ventas_iIdComprobante_ece15b11_fk_comproban` FOREIGN KEY (`iIdComprobante`) REFERENCES `comprobantes` (`iIdComprobante`),
  ADD CONSTRAINT `comprobante_ventas_iIdVenta_1269f5cb_fk_ventas_iIdVenta` FOREIGN KEY (`iIdVenta`) REFERENCES `ventas` (`iIdVenta`);

--
-- Filtros para la tabla `detallepedidos`
--
ALTER TABLE `detallepedidos`
  ADD CONSTRAINT `detallepedidos_iIdPedido_a3684dac_fk_pedidos_iIdPedido` FOREIGN KEY (`iIdPedido`) REFERENCES `pedidos` (`iIdPedido`),
  ADD CONSTRAINT `detallepedidos_iIdProducto_fad082a6_fk_productos_iIdProducto` FOREIGN KEY (`iIdProducto`) REFERENCES `productos` (`iIdProducto`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_iIdTipoEmpleado_fd710ebb_fk_tipo_empl` FOREIGN KEY (`iIdTipoEmpleado`) REFERENCES `tipo_empleado` (`iIdTipoEmpleado`),
  ADD CONSTRAINT `empleados_user_id_bab8bc25_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD CONSTRAINT `mesas_iIdSucursal_ff7c3954_fk_sucursales_iIdSucursal` FOREIGN KEY (`iIdSucursal`) REFERENCES `sucursales` (`iIdSucursal`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_iIdCliente_9340b32d_fk_clientes_iIdCliente` FOREIGN KEY (`iIdCliente`) REFERENCES `clientes` (`iIdCliente`),
  ADD CONSTRAINT `pedidos_iIdEmpleado_0bd663ce_fk_empleados_iIdEmpleado` FOREIGN KEY (`iIdEmpleado`) REFERENCES `empleados` (`iIdEmpleado`),
  ADD CONSTRAINT `pedidos_iIdMesa_53d383a6_fk_mesas_iIdMesa` FOREIGN KEY (`iIdMesa`) REFERENCES `mesas` (`iIdMesa`),
  ADD CONSTRAINT `pedidos_iIdTipoPedido_92a39193_fk_tipo_pedidos_iIdTipoPedido` FOREIGN KEY (`iIdTipoPedido`) REFERENCES `tipo_pedidos` (`iIdTipoPedido`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_iIdTipoProducto_536e6d05_fk_tipo_prod` FOREIGN KEY (`iIdTipoProducto`) REFERENCES `tipo_productos` (`iIdTipoProducto`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_iIdCaja_7e9bf3bc_fk_cajas_iIdCaja` FOREIGN KEY (`iIdCaja`) REFERENCES `cajas` (`iIdCaja`),
  ADD CONSTRAINT `ventas_iIdEmpleado_85d764ee_fk_empleados_iIdEmpleado` FOREIGN KEY (`iIdEmpleado`) REFERENCES `empleados` (`iIdEmpleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
