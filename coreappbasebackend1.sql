-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 06:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coreappbasebackend1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add branch_registration', 7, 'add_branch_registration'),
(26, 'Can change branch_registration', 7, 'change_branch_registration'),
(27, 'Can delete branch_registration', 7, 'delete_branch_registration'),
(28, 'Can view branch_registration', 7, 'view_branch_registration'),
(29, 'Can add create_team', 8, 'add_create_team'),
(30, 'Can change create_team', 8, 'change_create_team'),
(31, 'Can delete create_team', 8, 'delete_create_team'),
(32, 'Can view create_team', 8, 'view_create_team'),
(33, 'Can add department', 9, 'add_department'),
(34, 'Can change department', 9, 'change_department'),
(35, 'Can delete department', 9, 'delete_department'),
(36, 'Can view department', 9, 'view_department'),
(37, 'Can add designation', 10, 'add_designation'),
(38, 'Can change designation', 10, 'change_designation'),
(39, 'Can delete designation', 10, 'delete_designation'),
(40, 'Can view designation', 10, 'view_designation'),
(41, 'Can add project', 11, 'add_project'),
(42, 'Can change project', 11, 'change_project'),
(43, 'Can delete project', 11, 'delete_project'),
(44, 'Can view project', 11, 'view_project'),
(45, 'Can add project_taskassign', 12, 'add_project_taskassign'),
(46, 'Can change project_taskassign', 12, 'change_project_taskassign'),
(47, 'Can delete project_taskassign', 12, 'delete_project_taskassign'),
(48, 'Can view project_taskassign', 12, 'view_project_taskassign'),
(49, 'Can add user_registration', 13, 'add_user_registration'),
(50, 'Can change user_registration', 13, 'change_user_registration'),
(51, 'Can delete user_registration', 13, 'delete_user_registration'),
(52, 'Can view user_registration', 13, 'view_user_registration'),
(53, 'Can add trainer_task', 14, 'add_trainer_task'),
(54, 'Can change trainer_task', 14, 'change_trainer_task'),
(55, 'Can delete trainer_task', 14, 'delete_trainer_task'),
(56, 'Can view trainer_task', 14, 'view_trainer_task'),
(57, 'Can add topic', 15, 'add_topic'),
(58, 'Can change topic', 15, 'change_topic'),
(59, 'Can delete topic', 15, 'delete_topic'),
(60, 'Can view topic', 15, 'view_topic'),
(61, 'Can add tester_status', 16, 'add_tester_status'),
(62, 'Can change tester_status', 16, 'change_tester_status'),
(63, 'Can delete tester_status', 16, 'delete_tester_status'),
(64, 'Can view tester_status', 16, 'view_tester_status'),
(65, 'Can add test_status', 17, 'add_test_status'),
(66, 'Can change test_status', 17, 'change_test_status'),
(67, 'Can delete test_status', 17, 'delete_test_status'),
(68, 'Can view test_status', 17, 'view_test_status'),
(69, 'Can add tasks', 18, 'add_tasks'),
(70, 'Can change tasks', 18, 'change_tasks'),
(71, 'Can delete tasks', 18, 'delete_tasks'),
(72, 'Can view tasks', 18, 'view_tasks'),
(73, 'Can add reported_issue', 19, 'add_reported_issue'),
(74, 'Can change reported_issue', 19, 'change_reported_issue'),
(75, 'Can delete reported_issue', 19, 'delete_reported_issue'),
(76, 'Can view reported_issue', 19, 'view_reported_issue'),
(77, 'Can add qualification', 20, 'add_qualification'),
(78, 'Can change qualification', 20, 'change_qualification'),
(79, 'Can delete qualification', 20, 'delete_qualification'),
(80, 'Can view qualification', 20, 'view_qualification'),
(81, 'Can add leave', 21, 'add_leave'),
(82, 'Can change leave', 21, 'change_leave'),
(83, 'Can delete leave', 21, 'delete_leave'),
(84, 'Can view leave', 21, 'view_leave'),
(85, 'Can add internship', 22, 'add_internship'),
(86, 'Can change internship', 22, 'change_internship'),
(87, 'Can delete internship', 22, 'delete_internship'),
(88, 'Can view internship', 22, 'view_internship'),
(89, 'Can add extracurricular', 23, 'add_extracurricular'),
(90, 'Can change extracurricular', 23, 'change_extracurricular'),
(91, 'Can delete extracurricular', 23, 'delete_extracurricular'),
(92, 'Can view extracurricular', 23, 'view_extracurricular'),
(93, 'Can add attendance', 24, 'add_attendance'),
(94, 'Can change attendance', 24, 'change_attendance'),
(95, 'Can delete attendance', 24, 'delete_attendance'),
(96, 'Can view attendance', 24, 'view_attendance'),
(97, 'Can add acntexpensest', 25, 'add_acntexpensest'),
(98, 'Can change acntexpensest', 25, 'change_acntexpensest'),
(99, 'Can delete acntexpensest', 25, 'delete_acntexpensest'),
(100, 'Can view acntexpensest', 25, 'view_acntexpensest'),
(101, 'Can add course', 26, 'add_course'),
(102, 'Can change course', 26, 'change_course'),
(103, 'Can delete course', 26, 'delete_course'),
(104, 'Can view course', 26, 'view_course'),
(105, 'Can add paymentlist', 27, 'add_paymentlist'),
(106, 'Can change paymentlist', 27, 'change_paymentlist'),
(107, 'Can delete paymentlist', 27, 'delete_paymentlist'),
(108, 'Can view paymentlist', 27, 'view_paymentlist'),
(109, 'Can add acntspayslip', 28, 'add_acntspayslip'),
(110, 'Can change acntspayslip', 28, 'change_acntspayslip'),
(111, 'Can delete acntspayslip', 28, 'delete_acntspayslip'),
(112, 'Can view acntspayslip', 28, 'view_acntspayslip');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$T9WlKLvW4rHwCSu6NwnVO2$LidaVREplBF8Utq8h3TCfGvXUqWe5PvXLDEvr0etrVw=', NULL, 1, 'admin1', '', '', 'admin@gmail.com', 1, 1, '2022-03-08 06:47:32.526169');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_acntexpensest`
--

CREATE TABLE `base_app_acntexpensest` (
  `id` bigint(20) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `payacnt` varchar(200) NOT NULL,
  `paymethod` varchar(100) NOT NULL,
  `paydate` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_acntexpensest`
--

INSERT INTO `base_app_acntexpensest` (`id`, `payee`, `payacnt`, `paymethod`, `paydate`, `refno`, `amount`, `tax`, `total`, `category`, `description`) VALUES
(1, 'Emil', '6774356816', 'online', '2022-03-05', '036575', 15000, 12366, 27366, 'Develpoer', 'hai '),
(2, 'Kripa', '14879522', 'online', '2022-03-05', '458796325', 22009, 200, 22209, 'trainer', 'hello   '),
(3, 'maria', 'abc666', 'online', '2022-03-09', '123', 124, 22, 146, 'vvv', 'bbbbb '),
(4, 'maria', '11', 'online', '2022-03-04', '111', 11, 22, 33, 'ww', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `base_app_acntspayslip`
--

CREATE TABLE `base_app_acntspayslip` (
  `id` bigint(20) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `eno` varchar(100) NOT NULL,
  `hra` int(11) NOT NULL,
  `conveyns` varchar(100) NOT NULL,
  `tax` int(11) NOT NULL,
  `incentives` int(11) NOT NULL,
  `fromdate` date DEFAULT NULL,
  `todate` date DEFAULT NULL,
  `taxengine` varchar(100) NOT NULL,
  `incometax` int(11) NOT NULL,
  `uan` varchar(100) NOT NULL,
  `pf` int(11) NOT NULL,
  `esi` varchar(100) NOT NULL,
  `pro` varchar(100) NOT NULL,
  `leavesno` int(11) NOT NULL,
  `pf_tax` int(11) NOT NULL,
  `delay` int(11) NOT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `basictype` varchar(255) NOT NULL,
  `contype` varchar(255) NOT NULL,
  `deltype` varchar(255) NOT NULL,
  `hratype` varchar(255) NOT NULL,
  `instype` varchar(255) NOT NULL,
  `leatype` varchar(255) NOT NULL,
  `protype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_acntspayslip`
--

INSERT INTO `base_app_acntspayslip` (`id`, `basic_salary`, `eno`, `hra`, `conveyns`, `tax`, `incentives`, `fromdate`, `todate`, `taxengine`, `incometax`, `uan`, `pf`, `esi`, `pro`, `leavesno`, `pf_tax`, `delay`, `department_id`, `designation_id`, `user_id_id`, `basictype`, `contype`, `deltype`, `hratype`, `instype`, `leatype`, `protype`) VALUES
(1, 1, '125', 1, '1', 0, 1, '2022-03-03', '2022-03-08', '', 0, '', 0, '', '', 1, 1, 1, 1, 4, 13, 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee'),
(2, 12, '45', 100, '22', 0, 22, '2022-03-10', '2022-03-18', '', 0, '', 0, '', '', 22, 22, 22, 1, 4, 11, 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee'),
(4, 10000, '', 1200, '1000', 0, 120, '2022-03-09', NULL, '', 0, '', 0, '', '', 2, 120, 4, 1, 4, 14, 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Earning for Employee');

-- --------------------------------------------------------

--
-- Table structure for table `base_app_attendance`
--

CREATE TABLE `base_app_attendance` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `attendance_status` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_branch_registration`
--

CREATE TABLE `base_app_branch_registration` (
  `id` bigint(20) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `branch_admin` varchar(100) NOT NULL,
  `branch_type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_branch_registration`
--

INSERT INTO `base_app_branch_registration` (`id`, `branch_name`, `location`, `branch_admin`, `branch_type`, `status`) VALUES
(1, 'Infox', 'kochi', 'anand', 'head', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `base_app_course`
--

CREATE TABLE `base_app_course` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `total_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_course`
--

INSERT INTO `base_app_course` (`id`, `name`, `total_fee`) VALUES
(6, 'Perl', 20000),
(7, 'django', 10000),
(9, 'React', 1233),
(12, 'c', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_create_team`
--

CREATE TABLE `base_app_create_team` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `trainer` varchar(200) NOT NULL,
  `progress` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `team_count` int(11) NOT NULL,
  `team_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_create_team`
--

INSERT INTO `base_app_create_team` (`id`, `name`, `trainer`, `progress`, `status`, `team_count`, `team_status`) VALUES
(4, 'team1', 'mariya', 0, '', 0, '1'),
(7, 'team5', 'mariya', 100, '', 0, '1'),
(8, 'team10', 'mariya', 90, '', 0, '1'),
(10, 'team6', 'mariya', 0, '', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `base_app_department`
--

CREATE TABLE `base_app_department` (
  `id` bigint(20) NOT NULL,
  `department` varchar(100) NOT NULL,
  `files` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_department`
--

INSERT INTO `base_app_department` (`id`, `department`, `files`, `status`, `branch_id`) VALUES
(1, 'software', 'face1.jpg', '', NULL),
(3, 'java', 'face1.jpg', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_designation`
--

CREATE TABLE `base_app_designation` (
  `id` bigint(20) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `files` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_designation`
--

INSERT INTO `base_app_designation` (`id`, `designation`, `files`, `status`, `branch_id`, `department_id`) VALUES
(1, 'trainingmanager', 'face2.jpg', '', NULL, 1),
(2, 'trainer', 'face2.jpg', '', NULL, 1),
(4, 'trainee', 'face2.jpg', '', NULL, 1),
(5, 'manager', 'face2.jpg', '', NULL, 1),
(6, 'admin', 'face2.jpg', '', NULL, NULL),
(7, 'project manager', 'face2.jpg', '', NULL, 1),
(8, 'team leader', 'face2.jpg', '', NULL, 1),
(9, 'developer', 'face2.jpg', '', NULL, 1),
(10, 'hr manager', 'face2.jpg', '', NULL, NULL),
(11, 'tester', 'face2.jpg', '', NULL, 1),
(12, 'account', NULL, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_extracurricular`
--

CREATE TABLE `base_app_extracurricular` (
  `id` bigint(20) NOT NULL,
  `internshipdetails` varchar(240) DEFAULT NULL,
  `internshipduration` varchar(240) DEFAULT NULL,
  `internshipcertificate` varchar(100) DEFAULT NULL,
  `onlinetrainingdetails` varchar(240) DEFAULT NULL,
  `onlinetrainingduration` varchar(240) DEFAULT NULL,
  `onlinetrainingcertificate` varchar(100) DEFAULT NULL,
  `projecttitle` varchar(240) DEFAULT NULL,
  `projectduration` varchar(240) DEFAULT NULL,
  `projectdescription` longtext DEFAULT NULL,
  `projecturl` varchar(240) DEFAULT NULL,
  `skill1` varchar(240) DEFAULT NULL,
  `skill2` varchar(240) DEFAULT NULL,
  `skill3` varchar(240) DEFAULT NULL,
  `status` varchar(240) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_extracurricular`
--

INSERT INTO `base_app_extracurricular` (`id`, `internshipdetails`, `internshipduration`, `internshipcertificate`, `onlinetrainingdetails`, `onlinetrainingduration`, `onlinetrainingcertificate`, `projecttitle`, `projectduration`, `projectdescription`, `projecturl`, `skill1`, `skill2`, `skill3`, `status`, `user_id`) VALUES
(1, 'sdaf', 'dsfa', 'fdvzc', 'xc vdx', 'dcv s', 'dv f', 'dvfax', ' vdv ', 'v cxs', 'dv cfx', 'cv dcx', 'v cxd ', 'dcvx', '', 16);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_internship`
--

CREATE TABLE `base_app_internship` (
  `id` bigint(20) NOT NULL,
  `reg_date` date DEFAULT NULL,
  `fullname` varchar(200) NOT NULL,
  `collegename` varchar(200) NOT NULL,
  `reg_no` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  `stream` varchar(200) NOT NULL,
  `platform` varchar(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `alternative_no` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `attach_file` varchar(100) DEFAULT NULL,
  `rating` varchar(200) NOT NULL,
  `hrmanager` varchar(200) NOT NULL,
  `guide` varchar(200) NOT NULL,
  `qr` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_internship`
--

INSERT INTO `base_app_internship` (`id`, `reg_date`, `fullname`, `collegename`, `reg_no`, `course`, `stream`, `platform`, `start_date`, `end_date`, `mobile`, `alternative_no`, `email`, `profile_pic`, `attach_file`, `rating`, `hrmanager`, `guide`, `qr`, `status`, `branch_id`) VALUES
(1, NULL, 'chris', 'chris', 'chris', 'M.TECH', 'chris', 'chris', '03/06/2022', '03/18/2022', '1232321', '123132123', 'chris@gmail', 'images/face2.jpg', 'images/face3_PO6D2z4.jpg', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media\\1.png', '', 1),
(2, NULL, 'chris1', 'chris1', 'chris1', 'BCA', 'chris1', 'chris1', '03/15/2022', '03/17/2022', '324234', '23424243', 'chris1@gmail', 'images/face6_dN68fnG.jpg', 'images/face7.jpg', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media\\2.png', '', 1),
(3, NULL, 'chris3', 'chris3', 'chris3', 'B.TECH', 'chris3', 'chris3', '03/08/2022', '03/18/2022', '235', '234', 'chris3@gmail', 'images/face6_gF1y432.jpg', 'images/face7_yeSRG47.jpg', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media\\3.png', '', 1),
(4, '2022-03-05', 'chris4', 'chris4', 'chris4', 'B.TECH', 'chris4', 'chris4', '03/08/2022', '03/11/2022', '4', '324', 'chris4@gmail', 'images/face5_NwSEsXI.jpg', 'images/face7_nupFXgk.jpg', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media\\4.png', '', 1),
(5, '2022-03-05', 'chris5', 'chris5', 'chris5', 'B.COM', 'chris5', 'chris5', '03/08/2022', '03/11/2022', '32', '213', 'chris5@gmail', 'images/face6_fAOoCwP.jpg', 'images/face7_Nl1f7pD.jpg', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media\\5.png', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_leave`
--

CREATE TABLE `base_app_leave` (
  `id` bigint(20) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `reason` longtext NOT NULL,
  `leave_status` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `designation_id` varchar(200) NOT NULL,
  `leaveapprovedstatus` varchar(200) NOT NULL,
  `leave_rejected_reason` varchar(300) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_leave`
--

INSERT INTO `base_app_leave` (`id`, `from_date`, `to_date`, `reason`, `leave_status`, `status`, `designation_id`, `leaveapprovedstatus`, `leave_rejected_reason`, `user_id`) VALUES
(1, '2022-02-22', '2022-02-22', 'sebin', 'half Day', '', '3', '1', '', 4),
(2, '2022-02-22', '2022-02-22', 'sick leave', 'half Day', '', '1', '0', '', 1),
(3, '2022-02-21', '2022-02-23', 'marriage', 'full Day', '', '2', '0', '', 2),
(4, '2022-02-21', '2022-02-23', 'sick', 'full Day', '', '2', '0', '', 9),
(5, '2022-02-18', NULL, 'marriage', 'full Day', '', '2', '1', '', 10),
(6, '2022-02-21', '2022-02-22', 'sick', 'full Day', '', '3', '0', '', 4),
(7, '2022-02-21', '2022-02-22', 'sick', 'full Day', '', '3', '1', '', 5),
(8, '2022-02-22', '2022-02-22', 'sick', 'full Day', '', '2', '0', '', 2),
(9, '2022-02-23', '2022-02-23', 'sick', 'half Day', '', '', '', '', 4),
(10, '2022-02-23', '2022-02-23', 'sick', 'half Day', '', '3', '2', 'gbkjg', 4),
(11, '2022-02-23', '2022-02-23', 'sick leave', 'full Day', '', '3', '2', 'hai', 4),
(12, '2022-02-23', '2022-02-23', 'sick leave', 'full Day', '', '2', '0', '', 2),
(13, '2022-02-23', '2022-02-23', 'sick leave', 'full Day', '', '3', '2', 'not valid reason', 4),
(14, '2022-02-10', '2022-02-10', 'due to severe headache.', 'half Day', '', '1', '0', '', 1),
(15, '2022-02-24', '2022-02-25', 'coronaaaaaaa', 'full Day', '', '1', '0', '', 1),
(16, '2022-02-24', '2022-02-27', 'szdxfgbhnm,.', 'full Day', '', '1', '0', '', 1),
(17, '2022-02-24', '2022-02-26', 'ertfyhjmkl,;ctybjmkl', 'full Day', '', '2', '', '', 2),
(18, '2022-02-25', '2022-02-28', 'sdtfhjmklarsztrdybhjl,/', 'full Day', '', '3', '1', '', 4),
(19, '2022-02-25', '2022-02-28', 'oafdashfiagfishg', 'full Day', '', '2', '2', 'not valid', 2),
(20, '2022-02-25', '2022-03-03', 'serdtfhujlk,;.srdcghbjn,rf7tgujk,q24etvhbjn,', 'full Day', '', '2', '1', '', 2),
(21, '2022-02-25', '2022-02-26', 'dfgadjfdgjkl,', 'full Day', '', '2', '1', '', 2),
(22, '2022-02-26', '2022-02-26', 'sick', 'half Day', '', '1', '0', '', 1),
(23, '2022-02-27', '2022-02-28', 'fever', 'full Day', '', '1', '0', '', 1),
(24, '2022-03-05', '2022-03-13', 'asgdf', 'full Day', '', '2', '1', '', 2),
(25, '2022-02-26', '2022-02-26', 'nht', 'half Day', '', '3', '2', 'hai', 4);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_paymentlist`
--

CREATE TABLE `base_app_paymentlist` (
  `id` bigint(20) NOT NULL,
  `amount_pay` int(11) NOT NULL,
  `amount_date` date DEFAULT NULL,
  `current_date` date DEFAULT NULL,
  `amount_status` varchar(200) DEFAULT NULL,
  `amount_downlod` varchar(100) DEFAULT NULL,
  `balance_amt` int(11) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_paymentlist`
--

INSERT INTO `base_app_paymentlist` (`id`, `amount_pay`, `amount_date`, `current_date`, `amount_status`, `amount_downlod`, `balance_amt`, `course_id`, `user_id_id`) VALUES
(1, 2000, '2022-03-03', '2022-03-09', '0', 'images/Screenshot_9.png', 0, NULL, 11),
(2, 5666, '2022-03-03', '2022-03-09', '0', 'images/Screenshot_9_pUDzmZS.png', 0, NULL, 11),
(3, 1000, '2022-03-03', '2022-03-09', '0', 'images/Screenshot_10_7JXExUx.png', 0, NULL, 13),
(4, 1000, '2022-03-02', '2022-03-09', '0', 'images/Screenshot_10_vwPeJ87.png', 0, NULL, 13),
(5, 1000, '2022-03-04', '2022-03-09', '0', 'images/Screenshot_10_0qLLwqW.png', 0, NULL, 13),
(6, 500, '2022-03-06', '2022-03-09', '1', 'images/26_WhatsApp_-_Google_Chrome_08-02-2022_12_42_17.png', 0, NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_project`
--

CREATE TABLE `base_app_project` (
  `id` bigint(20) NOT NULL,
  `project` varchar(100) DEFAULT NULL,
  `rejectdate` date DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `progress` varchar(100) NOT NULL,
  `user_reason` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `projectmanager_id` bigint(20) DEFAULT NULL,
  `tester_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_project_taskassign`
--

CREATE TABLE `base_app_project_taskassign` (
  `id` bigint(20) NOT NULL,
  `description` longtext NOT NULL,
  `task` varchar(200) DEFAULT NULL,
  `subtask` varchar(200) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `extension` int(11) DEFAULT NULL,
  `reason` longtext DEFAULT NULL,
  `extension_status` varchar(200) DEFAULT NULL,
  `extension_date` date DEFAULT NULL,
  `tl_description` varchar(200) DEFAULT NULL,
  `submitted_date` date DEFAULT NULL,
  `employee_files` varchar(100) DEFAULT NULL,
  `employee_description` longtext DEFAULT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `progress` int(11) DEFAULT NULL,
  `projectstatus` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `developer_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `tester_id` bigint(20) DEFAULT NULL,
  `tl_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_qualification`
--

CREATE TABLE `base_app_qualification` (
  `id` bigint(20) NOT NULL,
  `plustwo` varchar(240) DEFAULT NULL,
  `schoolaggregate` varchar(240) DEFAULT NULL,
  `schoolcertificate` varchar(100) DEFAULT NULL,
  `ugdegree` varchar(240) DEFAULT NULL,
  `ugstream` varchar(240) DEFAULT NULL,
  `ugpassoutyr` varchar(240) DEFAULT NULL,
  `ugaggregrate` varchar(240) DEFAULT NULL,
  `backlogs` varchar(240) DEFAULT NULL,
  `ugcertificate` varchar(100) DEFAULT NULL,
  `pg` varchar(240) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_qualification`
--

INSERT INTO `base_app_qualification` (`id`, `plustwo`, `schoolaggregate`, `schoolcertificate`, `ugdegree`, `ugstream`, `ugpassoutyr`, `ugaggregrate`, `backlogs`, `ugcertificate`, `pg`, `status`, `user_id`) VALUES
(1, 'central', 'dcsa', 'images/face6_qJRyWAc.jpg', 'dcas', 'DWC', 'dsa', 'DC', 'no', 'images/face7_zGq6oBv.jpg', 'dcas', '', 16);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_reported_issue`
--

CREATE TABLE `base_app_reported_issue` (
  `id` bigint(20) NOT NULL,
  `issue` longtext NOT NULL,
  `reported_date` date DEFAULT NULL,
  `reply` longtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `issuestatus` varchar(200) NOT NULL,
  `designation_id` varchar(200) NOT NULL,
  `reported_to_id` bigint(20) DEFAULT NULL,
  `reporter_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_reported_issue`
--

INSERT INTO `base_app_reported_issue` (`id`, `issue`, `reported_date`, `reply`, `status`, `issuestatus`, `designation_id`, `reported_to_id`, `reporter_id`) VALUES
(3, 'Net Issue, voice issue, Health issue', '2022-03-06', '', '', '0', '', NULL, 15),
(4, 'Net issue', '2022-03-06', 'sorry', '', '1', '', NULL, 15),
(5, 'efvklm', '2022-03-07', '', '', '0', '', NULL, 15);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_tasks`
--

CREATE TABLE `base_app_tasks` (
  `id` bigint(20) NOT NULL,
  `tasks` varchar(240) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_tester_status`
--

CREATE TABLE `base_app_tester_status` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `workdone` longtext DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `progress` int(11) NOT NULL,
  `status` varchar(200) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `subtask_id` bigint(20) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `tester_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_test_status`
--

CREATE TABLE `base_app_test_status` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `workdone` longtext DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `subtask_id` bigint(20) DEFAULT NULL,
  `taskname_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_topic`
--

CREATE TABLE `base_app_topic` (
  `id` bigint(20) NOT NULL,
  `topic` varchar(240) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `review` longtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `topic_status` varchar(200) NOT NULL,
  `team_id` bigint(20) DEFAULT NULL,
  `trainee_id` bigint(20) DEFAULT NULL,
  `trainer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_topic`
--

INSERT INTO `base_app_topic` (`id`, `topic`, `startdate`, `enddate`, `files`, `description`, `review`, `status`, `topic_status`, `team_id`, `trainee_id`, `trainer_id`) VALUES
(2, 'Corebackend', '2022-03-05', '2022-03-13', '', '', '', '', '0', 10, NULL, NULL),
(3, 'accounts', '2022-03-05', '2022-03-15', '', '', '', '', '0', 8, NULL, NULL),
(4, 'aaaaaaaaaaaaaaa', '2022-03-05', '2022-03-13', '', '', '', '', '0', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_trainer_task`
--

CREATE TABLE `base_app_trainer_task` (
  `id` bigint(20) NOT NULL,
  `taskname` varchar(240) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `submitteddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `user_description` longtext NOT NULL,
  `user_files` varchar(100) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `task_status` varchar(200) NOT NULL,
  `team_name_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_trainer_task`
--

INSERT INTO `base_app_trainer_task` (`id`, `taskname`, `startdate`, `enddate`, `submitteddate`, `files`, `description`, `user_description`, `user_files`, `status`, `task_status`, `team_name_id`, `user_id`) VALUES
(1, 'hai', '2022-03-18', '2022-03-19', '2022-03-06', 'images/lesly-juarez-RukI4qZGlQs-unsplash.jpg', 'hello', 'haaaa', 'images/WhatsApp_Image_2021-08-20_at_8.01.19_PM.jpeg', '', '1', 10, 11),
(2, 'aaasdd', '2022-03-12', '2022-03-24', NULL, 'images/WhatsApp_Image_2022-01-03_at_9.52.16_PM_1.jpeg', 'ss', '', '', '', '0', 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_user_registration`
--

CREATE TABLE `base_app_user_registration` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(240) DEFAULT NULL,
  `fathername` varchar(240) DEFAULT NULL,
  `mothername` varchar(240) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `gender` varchar(240) DEFAULT NULL,
  `presentaddress1` varchar(240) DEFAULT NULL,
  `presentaddress2` varchar(240) DEFAULT NULL,
  `presentaddress3` varchar(240) DEFAULT NULL,
  `pincode` varchar(240) DEFAULT NULL,
  `district` varchar(240) DEFAULT NULL,
  `state` varchar(240) DEFAULT NULL,
  `country` varchar(240) DEFAULT NULL,
  `permanentaddress1` varchar(240) DEFAULT NULL,
  `permanentaddress2` varchar(240) DEFAULT NULL,
  `permanentaddress3` varchar(240) DEFAULT NULL,
  `permanentpincode` varchar(240) DEFAULT NULL,
  `permanentdistrict` varchar(240) DEFAULT NULL,
  `permanentstate` varchar(240) DEFAULT NULL,
  `permanentcountry` varchar(240) DEFAULT NULL,
  `mobile` varchar(240) DEFAULT NULL,
  `alternativeno` varchar(240) DEFAULT NULL,
  `employee_id` varchar(240) DEFAULT NULL,
  `email` varchar(240) DEFAULT NULL,
  `password` varchar(240) DEFAULT NULL,
  `idproof` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `attitude` int(11) NOT NULL,
  `creativity` int(11) NOT NULL,
  `workperformance` int(11) NOT NULL,
  `joiningdate` date DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `status` varchar(240) DEFAULT NULL,
  `tl_id` int(11) DEFAULT NULL,
  `projectmanager_id` int(11) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `team_id` bigint(20) DEFAULT NULL,
  `account_no` varchar(200) DEFAULT NULL,
  `bank_branch` varchar(240) DEFAULT NULL,
  `bank_name` varchar(240) DEFAULT NULL,
  `ifsc` varchar(200) DEFAULT NULL,
  `payment_status` varchar(200) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `total_pay` int(11) NOT NULL,
  `payment_balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_user_registration`
--

INSERT INTO `base_app_user_registration` (`id`, `fullname`, `fathername`, `mothername`, `dateofbirth`, `gender`, `presentaddress1`, `presentaddress2`, `presentaddress3`, `pincode`, `district`, `state`, `country`, `permanentaddress1`, `permanentaddress2`, `permanentaddress3`, `permanentpincode`, `permanentdistrict`, `permanentstate`, `permanentcountry`, `mobile`, `alternativeno`, `employee_id`, `email`, `password`, `idproof`, `photo`, `attitude`, `creativity`, `workperformance`, `joiningdate`, `startdate`, `enddate`, `status`, `tl_id`, `projectmanager_id`, `branch_id`, `department_id`, `designation_id`, `team_id`, `account_no`, `bank_branch`, `bank_name`, `ifsc`, `payment_status`, `course_id`, `total_pay`, `payment_balance`) VALUES
(1, 'maria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kottayam', 'kerala', 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', NULL, '1', 'maria@gmail.com', '123', '', 'images/mateo-avila-chinchilla-x_8oJhYU31k-unsplash.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(2, 'mariya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kottayam', 'kerala', 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', NULL, '2', 'mariya@gmail.com', '123', '', 'images/face10.jpg', 0, 0, 0, '2022-03-02', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(4, 'amal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kottayam', 'kerala', 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', NULL, '4', 'amal@gmail.com', '123', NULL, 'face1.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5, 'amal cs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kottayam', 'kerala', 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', NULL, '5', 'amalcs@gmail.com', '123', NULL, 'face1.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(6, 'anandhu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kottayam', 'kerala', 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', NULL, '6', 'anandhu@gmail.com', '123', '', 'images/face5_fyPVBlI.jpg', 0, 0, 0, '2022-03-03', NULL, NULL, NULL, NULL, NULL, NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(7, 'anandhu s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kottayam', 'kerala', 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', NULL, '7', 'anandhus@gmail.com', '123', NULL, 'face1.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, 7, 6, NULL, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(8, 'anandhu ss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kottayam', 'kerala', 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', NULL, '8', 'anandhuss@gmail.com', '123', NULL, 'face1.jpg', 0, 0, 0, '2022-02-02', NULL, NULL, NULL, 7, NULL, NULL, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9, 'anandhusss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kottayam', 'kerala', 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', NULL, '9', 'anandhusss@gmail.com', '123', NULL, 'face1.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, 7, NULL, NULL, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10, 'anandhu a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kottayam', 'kerala', 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', NULL, '10', 'anandhua@gmail.com', '123', NULL, 'face1.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(11, 'kripa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kottayam', 'kerala', 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', NULL, '11', 'kripa@gmail.com', '123', '', 'images/face3.jpg', 30, 40, 30, '2022-02-04', NULL, '2022-02-10', 'Resign', NULL, NULL, NULL, 1, 4, 10, '12345', 'kottayam', 'sbi', '786', '1', 7, 8166, 1834),
(12, 'kripa m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kottayam', 'kerala', 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000000000', NULL, '11', 'kr@gmail.com', '123', '', 'face1.jpg', 70, 80, 90, '2022-02-16', NULL, NULL, 'Working', NULL, NULL, NULL, 1, 4, 10, NULL, NULL, NULL, NULL, '1', 6, 0, 0),
(13, 'emil', NULL, NULL, '2022-03-01', 'male', 'asdfghjk', 'asdfghj', NULL, '74185', 'qwerty', 'kerala', 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'emil@gmail.com', '123', '', 'face15.jpg', 0, 0, 0, '2022-03-02', NULL, NULL, NULL, NULL, NULL, 1, 1, 4, 10, NULL, NULL, NULL, NULL, NULL, 7, 3000, 7000),
(14, 'fuad', NULL, NULL, '2022-03-02', 'male', 'wsxc efvbtghbn', 'qsxedfcvtgb', NULL, '741852', 'qwertyuijhgvc', 'kerala', 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '?', 0, 0, 0, '2022-03-02', NULL, NULL, NULL, NULL, NULL, 1, 1, 4, 10, '123', 'kottayam', 'sbi', '44', NULL, 7, 0, 0),
(15, 'Accounts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'accounts@gmail.com', '123', '', 'images/face6_tXK1s93.jpg', 0, 0, 0, '2022-03-01', NULL, NULL, NULL, NULL, NULL, 1, 1, 12, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(16, 'Maria Susan Abraham', 'jose', 'rincy', '2022-03-05', 'Female', 'Chappamattathil(h)', 'dca', 'dsfva', '686516', 'fcdvsa', 'Kerala', 'India', 'Chappamattathil(h)', 'dca', 'dsfva', '686516', 'fcdvsa', 'Kerala', 'India', '+919072947053', 'dcsf', 'INF0322B16', 'susanmariaabraham98@gmail.com', '123', 'images/face10_r2f6RBm.jpg', 'images/face7_RqZC5Wh.jpg', 0, 0, 0, NULL, NULL, NULL, '', 0, 0, 1, NULL, NULL, NULL, '0', '', '', '', '', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(25, 'base_app', 'acntexpensest'),
(28, 'base_app', 'acntspayslip'),
(24, 'base_app', 'attendance'),
(7, 'base_app', 'branch_registration'),
(26, 'base_app', 'course'),
(8, 'base_app', 'create_team'),
(9, 'base_app', 'department'),
(10, 'base_app', 'designation'),
(23, 'base_app', 'extracurricular'),
(22, 'base_app', 'internship'),
(21, 'base_app', 'leave'),
(27, 'base_app', 'paymentlist'),
(11, 'base_app', 'project'),
(12, 'base_app', 'project_taskassign'),
(20, 'base_app', 'qualification'),
(19, 'base_app', 'reported_issue'),
(18, 'base_app', 'tasks'),
(16, 'base_app', 'tester_status'),
(17, 'base_app', 'test_status'),
(15, 'base_app', 'topic'),
(14, 'base_app', 'trainer_task'),
(13, 'base_app', 'user_registration'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-06 03:44:02.285338'),
(2, 'auth', '0001_initial', '2022-03-06 03:44:03.187818'),
(3, 'admin', '0001_initial', '2022-03-06 03:44:03.452111'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-06 03:44:03.475051'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-06 03:44:03.508116'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-06 03:44:03.686345'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-06 03:44:03.782228'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-06 03:44:03.824115'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-06 03:44:03.851042'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-06 03:44:03.993661'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-06 03:44:04.004631'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-06 03:44:04.028567'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-06 03:44:04.075443'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-06 03:44:04.128302'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-06 03:44:04.171698'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-06 03:44:04.194636'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-06 03:44:04.239517'),
(18, 'base_app', '0001_initial', '2022-03-06 03:44:08.957563'),
(19, 'base_app', '0002_auto_20220305_1311', '2022-03-06 03:44:09.088729'),
(20, 'base_app', '0003_acntexpensest_course_user_registration_account_no_and_more', '2022-03-06 03:44:10.623248'),
(21, 'sessions', '0001_initial', '2022-03-06 03:44:10.703063'),
(22, 'base_app', '0004_alter_paymentlist_course_and_more', '2022-03-07 04:34:28.470524'),
(23, 'base_app', '0005_alter_user_registration_account_no', '2022-03-07 11:14:38.985585'),
(24, 'base_app', '0006_acntspayslip_basictype_acntspayslip_contype_and_more', '2022-03-08 04:43:31.292472'),
(25, 'base_app', '0007_user_registration_total_pay', '2022-03-09 03:28:24.532008'),
(26, 'base_app', '0008_user_registration_payment_balance', '2022-03-09 08:10:38.075345');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3z4sms1v1xtd1eg12l2fee1ng9h25tpb', '.eJyrViotTi3KS8xNTUzOK1GyMjTSQRExVLJSckxOzi_NKylWQpUyAqo2rQUA9rMWjQ:1nS07Z:UY4AIsZkp5M-YcsQuaewdk-IyfrpJrOQvi1zTsCod2s', '2022-03-23 17:29:09.826362'),
('8calc6l2mf07i41jq18w9fh9xfn7qplg', '.eJyrViotTi3KS8xNTUzOK1GyMjTSQRExVLJSckxOzi_NKylWQpUyAqo2RQiVFOUVK1mZoAqAtGcXZRYkKqGKg_QaogoZA4UMagE25zG5:1nRv9w:lq6WMNKQOjIA6a27pcolc3Dfw24hgASht89wFIZT9ng', '2022-03-23 12:11:16.990984'),
('ahc83167ihwtg9n5lu60h2k2jvk65k6l', '.eJyrViotTi3KS8xNLclVsjLUQeIaKlkppeZm5ighCxqhKirKK1ayMkYVACoxQRUxRtdUpGRlhCoAsiy7KLMgUQlV3AhdZTFIZU5qZaJSLQATnkEx:1nMjPa:9RfKXcTRMYNC8gH8C1bdLhGG7laX-g5H-BOGVIWbuxo', '2022-03-09 04:37:58.811018'),
('ivxjch2vnmy15t4fyi241xjultw83k0l', '.eJyrViotTi3KS8xNLSnKK1ayMtFBETBUslJKzc3MUUIVNlKyMjRGFTIGChkghBKT80qAIkaoIiDjHJOT80vzSoqVUKVARprWAgAQFjFL:1nRrl9:0G1V1oDQ63nad5br-h1ZWC-0tGqoGbxMc6zS5r36CQM', '2022-03-23 08:33:27.487517'),
('m0gtt971pua6hw22ek2mvd4buu3qd6qt', '.eJyrViotTi3KS8xNLclVsjLUQeIaKlkppeZm5ighCxqhKirKK1KyMkIVAOnLLsosSFRCFTdCV1msZGWMKgBUYoIqYoxuXzHI-JzUykSlWgAWCEEx:1nMyEX:m3v7gFpcxLxG0WX4KHyAIU_TEADT3yNu082P8RHyJv4', '2022-03-09 20:27:33.403084'),
('qonwpf02n5fy6mkpe2t0b7u2b8nma4sp', '.eJyrViotTi3KS8xNTUzOK1GyMjTSQRExVLJSckxOzi_NKylWQpUyAqo2rQUA9rMWjQ:1nRsXS:rI62RSkw9ksMsqmKiWLOx4-qOW2vDQOIMeoUJlr6rEY', '2022-03-23 09:23:22.168097'),
('tdrrikjete3f562abb36gqsyiht0bq9g', '.eJyrViotTi3KS8xNLclVsjLUQeIaKlkp5SYWZSYqIYsaoaoqyitSsjJCFYBprETRCZQwQldarGRlgioA0ptdlFmAprUYZC2qvcXGSlYWtQAsf0Ki:1nQiVz:NWLpbjSdwE6s7i0WQsXeEsBDQsnMuBhzZrC7Iuz4JqY', '2022-03-20 04:29:03.297672'),
('vfgjw8ctpcg5lg12gl4jb3zmclehi9ep', '.eJxdjTEOgCAMRe_S2UGqLt08CiEMxFBNgcEY7y4MRsvY9__7vaAkL2yjt44zkMFBEQMEq3N74ZxAR1jby4eysAChBk2PVsJpQQeoq7Fu_c_XU1pE3RJOQLMGTdwkHN2_1NTOnSoa7wfguliL:1nQbmI:xPPXsQiko3iZBR8QGW2fuEAoTKbUQG4-cFLell4UU3o', '2022-03-19 21:17:26.850430'),
('yhbh4fli2j70odplt8lsocfgos4vtxi4', '.eJyrViotTi3KS8xNTUzOK1GyMjTSQRExVLJSckxOzi_NKylWQpUyAqo2rQUA9rMWjQ:1nRsQ3:7h-OtjRqi6D3yqquiNPSOf36361fDpWtS9UP7PvCuj0', '2022-03-23 09:15:43.283753'),
('zuxnmgn86h018iqbkvnt9a8u4s2k9gn6', '.eJyrViotTi3KS8xNTUzOK1GyMjTSQRExVLJSckxOzi_NKylWQpUyAqo2rQUA9rMWjQ:1nRtDW:Bp6v1LMOQRlnQ6kqbcXK9J3RNBGYDi4iEuvYFo_pb8c', '2022-03-23 10:06:50.825048');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `base_app_acntexpensest`
--
ALTER TABLE `base_app_acntexpensest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_app_acntspayslip`
--
ALTER TABLE `base_app_acntspayslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_acntspaysli_department_id_21ada824_fk_base_app_` (`department_id`),
  ADD KEY `base_app_acntspaysli_designation_id_00bcb706_fk_base_app_` (`designation_id`),
  ADD KEY `base_app_acntspaysli_user_id_id_fce5649e_fk_base_app_` (`user_id_id`);

--
-- Indexes for table `base_app_attendance`
--
ALTER TABLE `base_app_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_attendance_user_id_430c8040_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_branch_registration`
--
ALTER TABLE `base_app_branch_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_app_course`
--
ALTER TABLE `base_app_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_app_create_team`
--
ALTER TABLE `base_app_create_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_app_department`
--
ALTER TABLE `base_app_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_department_branch_id_eabcf909_fk_base_app_` (`branch_id`);

--
-- Indexes for table `base_app_designation`
--
ALTER TABLE `base_app_designation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_designation_branch_id_1fc335cd_fk_base_app_` (`branch_id`),
  ADD KEY `base_app_designation_department_id_ea1e17c4_fk_base_app_` (`department_id`);

--
-- Indexes for table `base_app_extracurricular`
--
ALTER TABLE `base_app_extracurricular`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_extracurric_user_id_75f4c404_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_internship`
--
ALTER TABLE `base_app_internship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_internship_branch_id_8aeb0fa1_fk_base_app_` (`branch_id`);

--
-- Indexes for table `base_app_leave`
--
ALTER TABLE `base_app_leave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_leave_user_id_864afd43_fk_base_app_user_registration_id` (`user_id`);

--
-- Indexes for table `base_app_paymentlist`
--
ALTER TABLE `base_app_paymentlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_paymentlist_course_id_8d28f5e6_fk_base_app_course_id` (`course_id`),
  ADD KEY `base_app_paymentlist_user_id_id_671cce29_fk_base_app_` (`user_id_id`);

--
-- Indexes for table `base_app_project`
--
ALTER TABLE `base_app_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_project_projectmanager_id_25eb49b5_fk_base_app_` (`projectmanager_id`),
  ADD KEY `base_app_project_tester_id_681675aa_fk_base_app_` (`tester_id`),
  ADD KEY `base_app_project_department_id_ab5a9426_fk_base_app_` (`department_id`),
  ADD KEY `base_app_project_designation_id_b5dff45f_fk_base_app_` (`designation_id`);

--
-- Indexes for table `base_app_project_taskassign`
--
ALTER TABLE `base_app_project_taskassign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_project_tas_developer_id_edc30710_fk_base_app_` (`developer_id`),
  ADD KEY `base_app_project_tas_project_id_11045022_fk_base_app_` (`project_id`),
  ADD KEY `base_app_project_tas_tester_id_7758f59d_fk_base_app_` (`tester_id`),
  ADD KEY `base_app_project_tas_tl_id_7d2cff4b_fk_base_app_` (`tl_id`);

--
-- Indexes for table `base_app_qualification`
--
ALTER TABLE `base_app_qualification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_qualificati_user_id_28baad2d_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_reported_issue`
--
ALTER TABLE `base_app_reported_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_reported_is_reported_to_id_071dd663_fk_base_app_` (`reported_to_id`),
  ADD KEY `base_app_reported_is_reporter_id_ecf00692_fk_base_app_` (`reporter_id`);

--
-- Indexes for table `base_app_tasks`
--
ALTER TABLE `base_app_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_tasks_department_id_2002c7b1_fk_base_app_department_id` (`department_id`),
  ADD KEY `base_app_tasks_designation_id_5a0cbfdc_fk_base_app_` (`designation_id`),
  ADD KEY `base_app_tasks_user_id_727f88c7_fk_base_app_user_registration_id` (`user_id`);

--
-- Indexes for table `base_app_tester_status`
--
ALTER TABLE `base_app_tester_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_tester_stat_project_id_95868a63_fk_base_app_` (`project_id`),
  ADD KEY `base_app_tester_stat_subtask_id_c145ec1d_fk_base_app_` (`subtask_id`),
  ADD KEY `base_app_tester_stat_task_id_4e683dd3_fk_base_app_` (`task_id`),
  ADD KEY `base_app_tester_stat_tester_id_da5cd3da_fk_base_app_` (`tester_id`),
  ADD KEY `base_app_tester_stat_user_id_c8214431_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_test_status`
--
ALTER TABLE `base_app_test_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_test_status_project_id_8790b454_fk_base_app_project_id` (`project_id`),
  ADD KEY `base_app_test_status_subtask_id_f2f2d90f_fk_base_app_` (`subtask_id`),
  ADD KEY `base_app_test_status_taskname_id_6f61b503_fk_base_app_` (`taskname_id`),
  ADD KEY `base_app_test_status_user_id_84ffa638_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_topic`
--
ALTER TABLE `base_app_topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_topic_team_id_a0c5e7a1_fk_base_app_create_team_id` (`team_id`),
  ADD KEY `base_app_topic_trainee_id_1cdbdb38_fk_base_app_` (`trainee_id`),
  ADD KEY `base_app_topic_trainer_id_eb6a13e5_fk_base_app_` (`trainer_id`);

--
-- Indexes for table `base_app_trainer_task`
--
ALTER TABLE `base_app_trainer_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_trainer_tas_team_name_id_d201e56b_fk_base_app_` (`team_name_id`),
  ADD KEY `base_app_trainer_tas_user_id_d13a5c2d_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_user_registration`
--
ALTER TABLE `base_app_user_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_user_regist_branch_id_14a07e3d_fk_base_app_` (`branch_id`),
  ADD KEY `base_app_user_regist_department_id_f8ffba2f_fk_base_app_` (`department_id`),
  ADD KEY `base_app_user_regist_designation_id_1a35907e_fk_base_app_` (`designation_id`),
  ADD KEY `base_app_user_regist_team_id_82d71bbf_fk_base_app_` (`team_id`),
  ADD KEY `base_app_user_regist_course_id_5a1e7dc3_fk_base_app_` (`course_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_acntexpensest`
--
ALTER TABLE `base_app_acntexpensest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `base_app_acntspayslip`
--
ALTER TABLE `base_app_acntspayslip`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `base_app_attendance`
--
ALTER TABLE `base_app_attendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_branch_registration`
--
ALTER TABLE `base_app_branch_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `base_app_course`
--
ALTER TABLE `base_app_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `base_app_create_team`
--
ALTER TABLE `base_app_create_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `base_app_department`
--
ALTER TABLE `base_app_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_app_designation`
--
ALTER TABLE `base_app_designation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `base_app_extracurricular`
--
ALTER TABLE `base_app_extracurricular`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `base_app_internship`
--
ALTER TABLE `base_app_internship`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `base_app_leave`
--
ALTER TABLE `base_app_leave`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `base_app_paymentlist`
--
ALTER TABLE `base_app_paymentlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `base_app_project`
--
ALTER TABLE `base_app_project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_project_taskassign`
--
ALTER TABLE `base_app_project_taskassign`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_qualification`
--
ALTER TABLE `base_app_qualification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `base_app_reported_issue`
--
ALTER TABLE `base_app_reported_issue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `base_app_tasks`
--
ALTER TABLE `base_app_tasks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_tester_status`
--
ALTER TABLE `base_app_tester_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_test_status`
--
ALTER TABLE `base_app_test_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_topic`
--
ALTER TABLE `base_app_topic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `base_app_trainer_task`
--
ALTER TABLE `base_app_trainer_task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `base_app_user_registration`
--
ALTER TABLE `base_app_user_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_app_acntspayslip`
--
ALTER TABLE `base_app_acntspayslip`
  ADD CONSTRAINT `base_app_acntspaysli_department_id_21ada824_fk_base_app_` FOREIGN KEY (`department_id`) REFERENCES `base_app_department` (`id`),
  ADD CONSTRAINT `base_app_acntspaysli_designation_id_00bcb706_fk_base_app_` FOREIGN KEY (`designation_id`) REFERENCES `base_app_designation` (`id`),
  ADD CONSTRAINT `base_app_acntspaysli_user_id_id_fce5649e_fk_base_app_` FOREIGN KEY (`user_id_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_attendance`
--
ALTER TABLE `base_app_attendance`
  ADD CONSTRAINT `base_app_attendance_user_id_430c8040_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_department`
--
ALTER TABLE `base_app_department`
  ADD CONSTRAINT `base_app_department_branch_id_eabcf909_fk_base_app_` FOREIGN KEY (`branch_id`) REFERENCES `base_app_branch_registration` (`id`);

--
-- Constraints for table `base_app_designation`
--
ALTER TABLE `base_app_designation`
  ADD CONSTRAINT `base_app_designation_branch_id_1fc335cd_fk_base_app_` FOREIGN KEY (`branch_id`) REFERENCES `base_app_branch_registration` (`id`),
  ADD CONSTRAINT `base_app_designation_department_id_ea1e17c4_fk_base_app_` FOREIGN KEY (`department_id`) REFERENCES `base_app_department` (`id`);

--
-- Constraints for table `base_app_extracurricular`
--
ALTER TABLE `base_app_extracurricular`
  ADD CONSTRAINT `base_app_extracurric_user_id_75f4c404_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_internship`
--
ALTER TABLE `base_app_internship`
  ADD CONSTRAINT `base_app_internship_branch_id_8aeb0fa1_fk_base_app_` FOREIGN KEY (`branch_id`) REFERENCES `base_app_branch_registration` (`id`);

--
-- Constraints for table `base_app_leave`
--
ALTER TABLE `base_app_leave`
  ADD CONSTRAINT `base_app_leave_user_id_864afd43_fk_base_app_user_registration_id` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_paymentlist`
--
ALTER TABLE `base_app_paymentlist`
  ADD CONSTRAINT `base_app_paymentlist_course_id_8d28f5e6_fk_base_app_course_id` FOREIGN KEY (`course_id`) REFERENCES `base_app_course` (`id`),
  ADD CONSTRAINT `base_app_paymentlist_user_id_id_671cce29_fk_base_app_` FOREIGN KEY (`user_id_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_project`
--
ALTER TABLE `base_app_project`
  ADD CONSTRAINT `base_app_project_department_id_ab5a9426_fk_base_app_` FOREIGN KEY (`department_id`) REFERENCES `base_app_department` (`id`),
  ADD CONSTRAINT `base_app_project_designation_id_b5dff45f_fk_base_app_` FOREIGN KEY (`designation_id`) REFERENCES `base_app_designation` (`id`),
  ADD CONSTRAINT `base_app_project_projectmanager_id_25eb49b5_fk_base_app_` FOREIGN KEY (`projectmanager_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_project_tester_id_681675aa_fk_base_app_` FOREIGN KEY (`tester_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_project_taskassign`
--
ALTER TABLE `base_app_project_taskassign`
  ADD CONSTRAINT `base_app_project_tas_developer_id_edc30710_fk_base_app_` FOREIGN KEY (`developer_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_project_tas_project_id_11045022_fk_base_app_` FOREIGN KEY (`project_id`) REFERENCES `base_app_project` (`id`),
  ADD CONSTRAINT `base_app_project_tas_tester_id_7758f59d_fk_base_app_` FOREIGN KEY (`tester_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_project_tas_tl_id_7d2cff4b_fk_base_app_` FOREIGN KEY (`tl_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_qualification`
--
ALTER TABLE `base_app_qualification`
  ADD CONSTRAINT `base_app_qualificati_user_id_28baad2d_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_reported_issue`
--
ALTER TABLE `base_app_reported_issue`
  ADD CONSTRAINT `base_app_reported_is_reported_to_id_071dd663_fk_base_app_` FOREIGN KEY (`reported_to_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_reported_is_reporter_id_ecf00692_fk_base_app_` FOREIGN KEY (`reporter_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_tasks`
--
ALTER TABLE `base_app_tasks`
  ADD CONSTRAINT `base_app_tasks_department_id_2002c7b1_fk_base_app_department_id` FOREIGN KEY (`department_id`) REFERENCES `base_app_department` (`id`),
  ADD CONSTRAINT `base_app_tasks_designation_id_5a0cbfdc_fk_base_app_` FOREIGN KEY (`designation_id`) REFERENCES `base_app_designation` (`id`),
  ADD CONSTRAINT `base_app_tasks_user_id_727f88c7_fk_base_app_user_registration_id` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_tester_status`
--
ALTER TABLE `base_app_tester_status`
  ADD CONSTRAINT `base_app_tester_stat_project_id_95868a63_fk_base_app_` FOREIGN KEY (`project_id`) REFERENCES `base_app_project` (`id`),
  ADD CONSTRAINT `base_app_tester_stat_subtask_id_c145ec1d_fk_base_app_` FOREIGN KEY (`subtask_id`) REFERENCES `base_app_project_taskassign` (`id`),
  ADD CONSTRAINT `base_app_tester_stat_task_id_4e683dd3_fk_base_app_` FOREIGN KEY (`task_id`) REFERENCES `base_app_project_taskassign` (`id`),
  ADD CONSTRAINT `base_app_tester_stat_tester_id_da5cd3da_fk_base_app_` FOREIGN KEY (`tester_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_tester_stat_user_id_c8214431_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_test_status`
--
ALTER TABLE `base_app_test_status`
  ADD CONSTRAINT `base_app_test_status_project_id_8790b454_fk_base_app_project_id` FOREIGN KEY (`project_id`) REFERENCES `base_app_project` (`id`),
  ADD CONSTRAINT `base_app_test_status_subtask_id_f2f2d90f_fk_base_app_` FOREIGN KEY (`subtask_id`) REFERENCES `base_app_project_taskassign` (`id`),
  ADD CONSTRAINT `base_app_test_status_taskname_id_6f61b503_fk_base_app_` FOREIGN KEY (`taskname_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_test_status_user_id_84ffa638_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_topic`
--
ALTER TABLE `base_app_topic`
  ADD CONSTRAINT `base_app_topic_team_id_a0c5e7a1_fk_base_app_create_team_id` FOREIGN KEY (`team_id`) REFERENCES `base_app_create_team` (`id`),
  ADD CONSTRAINT `base_app_topic_trainee_id_1cdbdb38_fk_base_app_` FOREIGN KEY (`trainee_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_topic_trainer_id_eb6a13e5_fk_base_app_` FOREIGN KEY (`trainer_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_trainer_task`
--
ALTER TABLE `base_app_trainer_task`
  ADD CONSTRAINT `base_app_trainer_tas_team_name_id_d201e56b_fk_base_app_` FOREIGN KEY (`team_name_id`) REFERENCES `base_app_create_team` (`id`),
  ADD CONSTRAINT `base_app_trainer_tas_user_id_d13a5c2d_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_user_registration`
--
ALTER TABLE `base_app_user_registration`
  ADD CONSTRAINT `base_app_user_regist_branch_id_14a07e3d_fk_base_app_` FOREIGN KEY (`branch_id`) REFERENCES `base_app_branch_registration` (`id`),
  ADD CONSTRAINT `base_app_user_regist_course_id_5a1e7dc3_fk_base_app_` FOREIGN KEY (`course_id`) REFERENCES `base_app_course` (`id`),
  ADD CONSTRAINT `base_app_user_regist_department_id_f8ffba2f_fk_base_app_` FOREIGN KEY (`department_id`) REFERENCES `base_app_department` (`id`),
  ADD CONSTRAINT `base_app_user_regist_designation_id_1a35907e_fk_base_app_` FOREIGN KEY (`designation_id`) REFERENCES `base_app_designation` (`id`),
  ADD CONSTRAINT `base_app_user_regist_team_id_82d71bbf_fk_base_app_` FOREIGN KEY (`team_id`) REFERENCES `base_app_create_team` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
