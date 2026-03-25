-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2026 at 06:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egyptian_korean_college`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `hall_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `booking_date` date NOT NULL,
  `time_slot_id` int(11) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `student_count` int(11) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `request_notes` text DEFAULT NULL,
  `admin_notes` text DEFAULT NULL,
  `status` enum('pending','approved','rejected','cancelled','completed') DEFAULT 'pending',
  `approved_by` int(11) DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `hall_id`, `doctor_id`, `course_id`, `booking_date`, `time_slot_id`, `start_time`, `end_time`, `student_count`, `purpose`, `request_notes`, `admin_notes`, `status`, `approved_by`, `approved_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2026-02-25', 3, '10:00:00', '11:00:00', 30, 'Lecture', NULL, NULL, 'approved', NULL, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(2, 2, 2, 2, '2026-02-25', 4, '11:00:00', '12:00:00', 25, 'Lab', NULL, NULL, 'approved', NULL, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(3, 3, 3, 3, '2026-02-25', 5, '12:00:00', '13:00:00', 40, 'Lecture', NULL, NULL, 'approved', NULL, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(4, 4, 2, 4, '2026-02-26', 3, '10:00:00', '11:00:00', 35, 'Lecture', NULL, NULL, 'pending', NULL, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(5, 5, 3, 5, '2026-02-26', 4, '11:00:00', '12:00:00', 20, 'Lab', NULL, NULL, 'approved', NULL, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(6, 6, 2, 6, '2026-02-27', 2, '09:00:00', '10:00:00', 50, 'Exam', NULL, NULL, 'pending', NULL, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(7, 24, 7, 15, '2026-02-25', 2, '09:00:00', '10:00:00', 38, 'Lecture', 'thanks', NULL, 'pending', NULL, NULL, '2026-02-25 00:30:16', '2026-02-25 00:30:16'),
(8, 11, 7, 15, '2026-02-25', 2, '09:00:00', '10:00:00', 35, 'Lecture', 'no', NULL, 'pending', NULL, NULL, '2026-02-25 00:31:43', '2026-02-25 00:31:43'),
(10, 8, 7, 15, '2026-02-25', 2, '09:00:00', '10:00:00', 30, 'Lecture', '', NULL, 'pending', NULL, NULL, '2026-02-25 01:00:07', '2026-02-25 01:00:07'),
(11, 24, 7, 1, '2026-02-25', 1, '08:00:00', '09:00:00', 30, 'Lecture', '', NULL, 'pending', NULL, NULL, '2026-02-25 03:00:17', '2026-02-25 03:00:17'),
(12, 1, 7, 2, '2026-02-25', 5, '12:00:00', '13:00:00', 30, 'Lecture', '', NULL, 'pending', NULL, NULL, '2026-02-25 19:24:28', '2026-02-25 19:24:28'),
(13, 6, 7, 7, '2026-02-26', 6, '13:00:00', '14:00:00', 30, 'Lecture', '', NULL, 'pending', NULL, NULL, '2026-02-25 19:30:35', '2026-02-25 19:30:35'),
(14, 9, 7, 8, '2026-02-25', 2, '09:00:00', '10:00:00', 30, 'Lecture', '', NULL, 'cancelled', NULL, NULL, '2026-02-25 19:35:06', '2026-02-25 19:45:28'),
(15, 26, 7, 20, '2026-02-26', 5, '12:00:00', '13:00:00', 30, 'Lecture', '', NULL, 'pending', NULL, NULL, '2026-02-25 19:46:26', '2026-02-25 19:46:26'),
(16, 26, 7, 2, '2026-02-25', 6, '13:00:00', '14:00:00', 30, 'Lecture', '', NULL, 'pending', NULL, NULL, '2026-02-25 19:47:29', '2026-02-25 19:47:29'),
(17, 24, 7, 5, '2026-02-25', 4, '11:00:00', '12:00:00', 30, 'Exam', '', NULL, 'pending', NULL, NULL, '2026-02-25 19:58:23', '2026-02-25 19:58:23'),
(18, 24, 7, 10, '2026-02-25', 3, '10:00:00', '11:00:00', 30, 'Lecture', '', NULL, 'pending', NULL, NULL, '2026-02-25 19:58:59', '2026-02-25 19:58:59'),
(19, 23, 7, 15, '2026-02-28', 2, '09:00:00', '10:00:00', 30, 'Lecture', '', NULL, 'pending', NULL, NULL, '2026-02-25 20:00:30', '2026-02-25 20:00:30'),
(20, 23, 7, 15, '2026-02-28', 3, '10:00:00', '11:00:00', 30, 'Lecture', '', NULL, 'approved', NULL, NULL, '2026-02-25 20:02:18', '2026-02-25 20:02:18'),
(21, 23, 7, 15, '2026-02-25', 2, '09:00:00', '10:00:00', 30, 'Lecture', '', NULL, 'approved', NULL, NULL, '2026-02-25 20:04:44', '2026-02-25 20:04:44'),
(22, 27, 7, 2, '2026-02-25', 8, '15:00:00', '16:00:00', 30, 'Lecture', '', NULL, 'approved', NULL, NULL, '2026-02-25 21:42:55', '2026-02-25 21:42:55'),
(23, 25, 7, 8, '2026-02-25', 8, '15:00:00', '16:00:00', 30, 'Lecture', '', NULL, 'approved', NULL, NULL, '2026-02-25 21:49:29', '2026-02-25 21:49:29');

--
-- Triggers `bookings`
--
DELIMITER $$
CREATE TRIGGER `before_insert_bookings` BEFORE INSERT ON `bookings` FOR EACH ROW BEGIN
    DECLARE v_start_time TIME;
    DECLARE v_end_time TIME;
    
    SELECT start_time, end_time INTO v_start_time, v_end_time
    FROM time_slots WHERE id = NEW.time_slot_id;
    
    SET NEW.start_time = v_start_time;
    SET NEW.end_time = v_end_time;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_bookings` BEFORE UPDATE ON `bookings` FOR EACH ROW BEGIN
    DECLARE v_start_time TIME;
    DECLARE v_end_time TIME;
    
    IF NEW.time_slot_id != OLD.time_slot_id THEN
        SELECT start_time, end_time INTO v_start_time, v_end_time
        FROM time_slots WHERE id = NEW.time_slot_id;
        
        SET NEW.start_time = v_start_time;
        SET NEW.end_time = v_end_time;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `name_ar` varchar(100) NOT NULL,
  `program_id` int(11) NOT NULL,
  `level_id` int(11) DEFAULT NULL,
  `track_id` int(11) DEFAULT NULL,
  `credit_hours` int(11) DEFAULT 3,
  `lecture_hours` int(11) DEFAULT 2,
  `tutorial_hours` int(11) DEFAULT 1,
  `lab_hours` int(11) DEFAULT 0,
  `semester` enum('First','Second','Summer') DEFAULT 'First',
  `academic_year` varchar(20) DEFAULT '2025-2026',
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `level` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `code`, `name`, `name_en`, `name_ar`, `program_id`, `level_id`, `track_id`, `credit_hours`, `lecture_hours`, `tutorial_hours`, `lab_hours`, `semester`, `academic_year`, `description`, `is_active`, `created_at`, `level`) VALUES
(1, 'IT101', 'Cyber Security', 'Cyber Security', 'الأمن السيبراني', 1, 1, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(2, 'IT102', 'Physics', 'Physics', 'الفيزياء', 1, 1, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(3, 'IT103', 'IT Essentials', 'IT Essentials', 'أساسيات تكنولوجيا المعلومات', 1, 1, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(4, 'IT104', 'Technical English', 'Technical English', 'الإنجليزية الفنية', 1, 1, NULL, 2, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(5, 'IT105', 'Mathematics', 'Mathematics', 'الرياضيات', 1, 1, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(6, 'IT106', 'Python', 'Python', 'برمجة بايثون', 1, 1, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(7, 'IT107', 'English 1', 'English 1', 'اللغة الإنجليزية', 1, 1, NULL, 2, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(8, 'IT201', 'Digital Engineering', 'Digital Engineering', 'الهندسة الرقمية', 1, 2, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(9, 'IT202', 'Operating Systems', 'Operating Systems', 'نظم التشغيل', 1, 2, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(10, 'IT203', 'Database', 'Database', 'قواعد البيانات', 1, 2, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(11, 'IT204', 'Web Programming', 'Web Programming', 'برمجة الويب', 1, 2, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(12, 'IT205', 'Linux', 'Linux', 'لينكس', 1, 2, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(13, 'IT206', 'C++', 'C++', 'برمجة C++', 1, 2, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(14, 'MEC101', 'Thermodynamics', 'Thermodynamics', 'الديناميكا الحرارية', 2, 5, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(15, 'MEC102', 'Mechanics', 'Mechanics', 'الميكانيكا', 2, 5, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(16, 'MEC103', 'Robotics', 'Robotics', 'الروبوتات', 2, 6, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(17, 'MEC104', 'Control Systems', 'Control Systems', 'نظم التحكم', 2, 6, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(18, 'REN101', 'Solar Energy', 'Solar Energy', 'الطاقة الشمسية', 3, 9, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(19, 'REN102', 'Wind Energy', 'Wind Energy', 'طاقة الرياح', 3, 9, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1),
(20, 'REN103', 'Energy Storage', 'Energy Storage', 'تخزين الطاقة', 3, 10, NULL, 3, 2, 1, 0, 'First', '2025-2026', NULL, 1, '2026-02-25 00:19:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(11) NOT NULL,
  `name_en` varchar(20) NOT NULL,
  `name_ar` varchar(20) NOT NULL,
  `order_num` int(11) NOT NULL,
  `is_weekend` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `name_en`, `name_ar`, `order_num`, `is_weekend`) VALUES
(1, 'Saturday', 'السبت', 1, 0),
(2, 'Sunday', 'الأحد', 2, 0),
(3, 'Monday', 'الإثنين', 3, 0),
(4, 'Tuesday', 'الثلاثاء', 4, 0),
(5, 'Wednesday', 'الأربعاء', 5, 0),
(6, 'Thursday', 'الخميس', 6, 0),
(7, 'Friday', 'الجمعة', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_courses`
--

CREATE TABLE `doctor_courses` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `academic_year` varchar(20) DEFAULT NULL,
  `semester` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `name_ar` varchar(50) DEFAULT NULL,
  `building` varchar(50) DEFAULT NULL,
  `floor` varchar(20) DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT 50,
  `hall_type` enum('Lecture Hall','Lab','Tutorial Room','Workshop','Auditorium') DEFAULT 'Lecture Hall',
  `equipment` text DEFAULT NULL,
  `has_projector` tinyint(1) DEFAULT 1,
  `has_whiteboard` tinyint(1) DEFAULT 1,
  `has_ac` tinyint(1) DEFAULT 1,
  `location` varchar(255) DEFAULT NULL,
  `location_details` text DEFAULT NULL,
  `status` enum('active','maintenance','closed') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`id`, `name`, `name_ar`, `building`, `floor`, `capacity`, `hall_type`, `equipment`, `has_projector`, `has_whiteboard`, `has_ac`, `location`, `location_details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A101', NULL, 'Main Building', 'First Floor', 100, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - First Floor - Room 101', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(2, 'A104', NULL, 'Main Building', 'First Floor', 40, 'Lab', NULL, 1, 1, 1, 'Main Building - First Floor - Lab 104', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(3, 'A105', NULL, 'Main Building', 'First Floor', 40, 'Lab', NULL, 1, 1, 1, 'Main Building - First Floor - Lab 105', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(4, 'A106', NULL, 'Main Building', 'First Floor', 40, 'Lab', NULL, 1, 1, 1, 'Main Building - First Floor - Lab 106', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(5, 'A107', NULL, 'Main Building', 'First Floor', 80, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - First Floor - Hall 107', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(6, 'A110', NULL, 'Main Building', 'First Floor', 50, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - First Floor - Hall 110', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(7, 'A112', NULL, 'Main Building', 'First Floor', 40, 'Tutorial Room', NULL, 1, 1, 1, 'Main Building - First Floor - Room 112', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(8, 'A113', NULL, 'Main Building', 'First Floor', 40, 'Lab', NULL, 1, 1, 1, 'Main Building - First Floor - Lab 113', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(9, 'A115', NULL, 'Main Building', 'First Floor', 120, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - First Floor - Auditorium 115', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(10, 'A204', NULL, 'Main Building', 'Second Floor', 50, 'Lab', NULL, 1, 1, 1, 'Main Building - Second Floor - Lab 204', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(11, 'A205', NULL, 'Main Building', 'Second Floor', 50, 'Lab', NULL, 1, 1, 1, 'Main Building - Second Floor - Lab 205', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(12, 'A208', NULL, 'Main Building', 'Second Floor', 60, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - Second Floor - Hall 208', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(13, 'A209', NULL, 'Main Building', 'Second Floor', 60, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - Second Floor - Hall 209', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(14, 'A210', NULL, 'Main Building', 'Second Floor', 60, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - Second Floor - Hall 210', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(15, 'A213', NULL, 'Main Building', 'Second Floor', 40, 'Lab', NULL, 1, 1, 1, 'Main Building - Second Floor - Lab 213', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(16, 'A214', NULL, 'Main Building', 'Second Floor', 40, 'Lab', NULL, 1, 1, 1, 'Main Building - Second Floor - Lab 214', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(17, 'A216', NULL, 'Main Building', 'Second Floor', 50, 'Lab', NULL, 1, 1, 1, 'Main Building - Second Floor - Lab 216', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(18, 'A302', NULL, 'Main Building', 'Third Floor', 70, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - Third Floor - Hall 302', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(19, 'A313', NULL, 'Main Building', 'Third Floor', 90, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - Third Floor - Hall 313', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(20, 'A325', NULL, 'Main Building', 'Third Floor', 150, 'Auditorium', NULL, 1, 1, 1, 'Main Building - Third Floor - Auditorium 325', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(21, 'A326', NULL, 'Main Building', 'Third Floor', 80, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - Third Floor - Hall 326', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(22, 'A327', NULL, 'Main Building', 'Third Floor', 80, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - Third Floor - Hall 327', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(23, 'A329', NULL, 'Main Building', 'Third Floor', 80, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - Third Floor - Hall 329', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(24, 'A1-04', NULL, 'Main Building', 'First Floor Annex', 30, 'Lab', NULL, 1, 1, 1, 'Main Building - First Floor Annex - Lab A1-04', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(25, 'A1-05', NULL, 'Main Building', 'First Floor Annex', 30, 'Lab', NULL, 1, 1, 1, 'Main Building - First Floor Annex - Lab A1-05', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(26, 'A1-06', NULL, 'Main Building', 'First Floor Annex', 30, 'Lab', NULL, 1, 1, 1, 'Main Building - First Floor Annex - Lab A1-06', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(27, 'A1-13', NULL, 'Main Building', 'First Floor Annex', 30, 'Lab', NULL, 1, 1, 1, 'Main Building - First Floor Annex - Lab A1-13', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(28, 'A1-15', NULL, 'Main Building', 'First Floor Annex', 30, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - First Floor Annex - Hall A1-15', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(29, 'A2-05', NULL, 'Main Building', 'Second Floor Annex', 30, 'Lab', NULL, 1, 1, 1, 'Main Building - Second Floor Annex - Lab A2-05', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(30, 'A2-13', NULL, 'Main Building', 'Second Floor Annex', 30, 'Lab', NULL, 1, 1, 1, 'Main Building - Second Floor Annex - Lab A2-13', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(31, 'A2-14', NULL, 'Main Building', 'Second Floor Annex', 30, 'Lab', NULL, 1, 1, 1, 'Main Building - Second Floor Annex - Lab A2-14', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(32, 'A2-15', NULL, 'Main Building', 'Second Floor Annex', 30, 'Lab', NULL, 1, 1, 1, 'Main Building - Second Floor Annex - Lab A2-15', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(33, 'A3-25', NULL, 'Main Building', 'Third Floor Annex', 40, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - Third Floor Annex - Hall A3-25', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(34, 'A3-27', NULL, 'Main Building', 'Third Floor Annex', 40, 'Lecture Hall', NULL, 1, 1, 1, 'Main Building - Third Floor Annex - Hall A3-27', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(35, 'E1', NULL, 'Beni Suef University', 'Ground Floor', 200, 'Auditorium', NULL, 1, 1, 1, 'Beni Suef University - East Nile - Engineering Faculty - Auditorium E1', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(36, 'E2', NULL, 'Beni Suef University', 'Ground Floor', 200, 'Auditorium', NULL, 1, 1, 1, 'Beni Suef University - East Nile - Engineering Faculty - Auditorium E2', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(37, 'F-018', NULL, 'Silicon Oasis', 'Ground Floor', 30, 'Lab', NULL, 1, 1, 1, 'Silicon Oasis Building - Ground Floor - Lab F-018', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(38, 'F-020', NULL, 'Silicon Oasis', 'Ground Floor', 50, 'Lecture Hall', NULL, 1, 1, 1, 'Silicon Oasis Building - Ground Floor - Hall F-020', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(39, 'F-021', NULL, 'Silicon Oasis', 'Ground Floor', 30, 'Lab', NULL, 1, 1, 1, 'Silicon Oasis Building - Ground Floor - Lab F-021', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(40, 'F-022', NULL, 'Silicon Oasis', 'Ground Floor', 40, 'Lecture Hall', NULL, 1, 1, 1, 'Silicon Oasis Building - Ground Floor - Hall F-022', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(41, 'F-023', NULL, 'Silicon Oasis', 'Ground Floor', 40, 'Lab', NULL, 1, 1, 1, 'Silicon Oasis Building - Ground Floor - Lab F-023', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(42, 'F-07', NULL, 'Silicon Oasis', 'Ground Floor', 30, 'Tutorial Room', NULL, 1, 1, 1, 'Silicon Oasis Building - Ground Floor - Room F-07', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(43, 'F-15', NULL, 'Silicon Oasis', 'First Floor', 40, 'Lecture Hall', NULL, 1, 1, 1, 'Silicon Oasis Building - First Floor - Hall F-15', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(44, 'F20', NULL, 'Silicon Oasis', 'First Floor', 60, 'Lecture Hall', NULL, 1, 1, 1, 'Silicon Oasis Building - First Floor - Hall F20', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(45, 'F22', NULL, 'Silicon Oasis', 'First Floor', 60, 'Lecture Hall', NULL, 1, 1, 1, 'Silicon Oasis Building - First Floor - Hall F22', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(46, 'G-01', NULL, 'Silicon Oasis', 'Ground Floor', 80, 'Lecture Hall', NULL, 1, 1, 1, 'Silicon Oasis Building - Ground Floor - Hall G-01', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(47, 'G-014', NULL, 'Silicon Oasis', 'Ground Floor', 50, 'Lecture Hall', NULL, 1, 1, 1, 'Silicon Oasis Building - Ground Floor - Hall G-014', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(48, 'G-015', NULL, 'Silicon Oasis', 'Ground Floor', 40, 'Lecture Hall', NULL, 1, 1, 1, 'Silicon Oasis Building - Ground Floor - Hall G-015', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(49, 'G-02', NULL, 'Silicon Oasis', 'Ground Floor', 80, 'Lecture Hall', NULL, 1, 1, 1, 'Silicon Oasis Building - Ground Floor - Hall G-02', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(50, 'G-04A', NULL, 'Silicon Oasis', 'Ground Floor', 40, 'Tutorial Room', NULL, 1, 1, 1, 'Silicon Oasis Building - Ground Floor - Room G-04A', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(51, 'G-04C', NULL, 'Silicon Oasis', 'Ground Floor', 50, 'Lecture Hall', NULL, 1, 1, 1, 'Silicon Oasis Building - Ground Floor - Hall G-04C', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(52, 'G-14', NULL, 'Silicon Oasis', 'First Floor', 50, 'Lecture Hall', NULL, 1, 1, 1, 'Silicon Oasis Building - First Floor - Hall G-14', NULL, 'active', '2026-02-25 00:19:14', '2026-02-25 00:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name_en` varchar(100) NOT NULL,
  `name_ar` varchar(100) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `is_external` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `user_id`, `name_en`, `name_ar`, `title`, `email`, `phone`, `specialization`, `department`, `is_external`, `created_at`) VALUES
(1, NULL, '', 'د. عمرو عماد', 'د.', NULL, NULL, 'Cyber Security', 'IT', 0, '2026-02-25 00:19:14'),
(2, NULL, '', 'د. مصطفى رشاد', 'د.', NULL, NULL, 'Physics', 'Science', 0, '2026-02-25 00:19:14'),
(3, NULL, '', 'د. اسامة مختار', 'د.', NULL, NULL, 'IT Essentials', 'IT', 0, '2026-02-25 00:19:14'),
(4, NULL, '', 'م. امينة', 'م.', NULL, NULL, 'Technical English', 'Languages', 0, '2026-02-25 00:19:14'),
(5, NULL, '', 'م. نورهان عمر', 'م.', NULL, NULL, 'Physics', 'Science', 0, '2026-02-25 00:19:14'),
(6, NULL, '', 'د. أيمن زين', 'د.', NULL, NULL, 'Mathematics', 'Mathematics', 0, '2026-02-25 00:19:14'),
(7, NULL, '', 'د. غادة', 'د.', NULL, NULL, 'English', 'Languages', 0, '2026-02-25 00:19:14'),
(8, NULL, '', 'م. نجلاء فتحى', 'م.', NULL, NULL, 'IT Labs', 'IT', 0, '2026-02-25 00:19:14'),
(9, NULL, '', 'م. ربيع مسعود', 'م.', NULL, NULL, 'Programming', 'IT', 0, '2026-02-25 00:19:14'),
(10, NULL, '', 'د. أشراف عبدالمنعم', 'د.', NULL, NULL, 'Digital Engineering', 'IT', 0, '2026-02-25 00:19:14'),
(11, NULL, '', 'د. مى محمود', 'د.', NULL, NULL, 'Operating Systems', 'IT', 0, '2026-02-25 00:19:14'),
(12, NULL, '', 'م. منى عبدالعزيز', 'م.', NULL, NULL, 'Web Programming', 'IT', 0, '2026-02-25 00:19:14'),
(13, NULL, '', 'م. إسراء حاتم', 'م.', NULL, NULL, 'Programming', 'IT', 0, '2026-02-25 00:19:14'),
(14, NULL, '', 'د. سارة محمد', 'د.', NULL, NULL, 'Linux & Java', 'IT', 0, '2026-02-25 00:19:14'),
(15, NULL, '', 'م. زينب عقل', 'م.', NULL, NULL, 'Linux Labs', 'IT', 0, '2026-02-25 00:19:14'),
(16, NULL, '', 'م. بسمة رمضان', 'م.', NULL, NULL, 'Microprocessor', 'IT', 0, '2026-02-25 00:19:14'),
(17, NULL, '', 'د. م. محمد', 'د.', NULL, NULL, 'Computer Graphics', 'IT', 0, '2026-02-25 00:19:14'),
(18, NULL, '', 'م. اسلام علام', 'م.', NULL, NULL, 'Java Programming', 'IT', 0, '2026-02-25 00:19:14'),
(19, NULL, '', 'م. طه احمد', 'م.', NULL, NULL, 'Advanced Programming', 'IT', 0, '2026-02-25 00:19:14'),
(20, NULL, '', 'د. جرجس', 'د.', NULL, NULL, 'Data Communication', 'IT', 0, '2026-02-25 00:19:14'),
(21, NULL, '', 'د. عمر عمان', 'د.', NULL, NULL, 'Computer Architecture', 'IT', 0, '2026-02-25 00:19:14'),
(22, NULL, '', 'م. أحمد فتحى', 'م.', NULL, NULL, 'Java Labs', 'IT', 0, '2026-02-25 00:19:14'),
(23, NULL, '', 'م. فرح هشام', 'م.', NULL, NULL, 'Network Administration', 'IT', 0, '2026-02-25 00:19:14'),
(24, NULL, '', 'د. عادل السيد', 'د.', NULL, NULL, 'CCNA', 'IT', 0, '2026-02-25 00:19:14'),
(25, NULL, '', 'د. عادل', 'د.', NULL, NULL, 'IoT', 'IT', 0, '2026-02-25 00:19:14'),
(26, NULL, '', 'د. سها تيبل', 'د.', NULL, NULL, 'Safety', 'Engineering', 0, '2026-02-25 00:19:14'),
(27, NULL, '', 'د. سميحة رفعت', 'د.', NULL, NULL, 'Applied Mathematics', 'Mathematics', 0, '2026-02-25 00:19:14'),
(28, NULL, '', 'م. ساره شعبان', 'م.', NULL, NULL, 'Safety Labs', 'Engineering', 0, '2026-02-25 00:19:14'),
(29, NULL, '', 'د. محمد جابر', 'د.', NULL, NULL, 'Applications', 'Engineering', 0, '2026-02-25 00:19:14'),
(30, NULL, '', 'م. شيرين علا', 'م.', NULL, NULL, 'Communication Skills', 'Languages', 0, '2026-02-25 00:19:14'),
(31, NULL, '', 'د. سها', 'د.', NULL, NULL, 'Technical English', 'Languages', 0, '2026-02-25 00:19:14'),
(32, NULL, '', 'د. الصادق حسن', 'د.', NULL, NULL, 'Sensors', 'Engineering', 0, '2026-02-25 00:19:14'),
(33, NULL, '', 'م. يحيى الحسيني', 'م.', NULL, NULL, 'Robotics', 'Engineering', 0, '2026-02-25 00:19:14'),
(34, NULL, '', 'د. بهاء مصطفي', 'د.', NULL, NULL, 'Pneumatics', 'Engineering', 0, '2026-02-25 00:19:14'),
(35, NULL, '', 'د. عماد جميل', 'د.', NULL, NULL, 'PLC', 'Engineering', 0, '2026-02-25 00:19:14'),
(36, NULL, '', 'م. خالد نادي', 'م.', NULL, NULL, 'PLC Labs', 'Engineering', 0, '2026-02-25 00:19:14'),
(37, NULL, '', 'م. الحسين اسامة', 'م.', NULL, NULL, 'Programming', 'Engineering', 0, '2026-02-25 00:19:14'),
(38, NULL, '', 'م. اميره محمد', 'م.', NULL, NULL, 'Hydraulics', 'Engineering', 0, '2026-02-25 00:19:14'),
(39, NULL, '', 'د. شريف كمال', 'د.', NULL, NULL, 'Embedded Systems', 'Engineering', 0, '2026-02-25 00:19:14'),
(40, NULL, '', 'د. غادة طوسون', 'د.', NULL, NULL, 'Business', 'Business', 0, '2026-02-25 00:19:14'),
(41, NULL, '', 'د. محمد نافع', 'د.', NULL, NULL, 'Metrology', 'Engineering', 0, '2026-02-25 00:19:14'),
(42, NULL, '', 'م. رفيده شحاته', 'م.', NULL, NULL, 'Dynamic Systems', 'Engineering', 0, '2026-02-25 00:19:14'),
(43, NULL, '', 'م. احمد شعبان', 'م.', NULL, NULL, 'PC Based', 'Engineering', 0, '2026-02-25 00:19:14'),
(44, NULL, '', 'د. حسير عبدالغفار', 'د.', NULL, NULL, 'Electrical', 'Engineering', 0, '2026-02-25 00:19:14'),
(45, NULL, '', 'م. دعاء سيد', 'م.', NULL, NULL, 'Electrical Labs', 'Engineering', 0, '2026-02-25 00:19:14'),
(46, NULL, '', 'م. ميرا امير', 'م.', NULL, NULL, 'Matlab', 'Engineering', 0, '2026-02-25 00:19:14'),
(47, NULL, '', 'م. احمد جمال', 'م.', NULL, NULL, 'CAD', 'Engineering', 0, '2026-02-25 00:19:14'),
(48, NULL, '', 'د. محمد عبدالير', 'د.', NULL, NULL, 'Renewable Energy', 'Energy', 0, '2026-02-25 00:19:14'),
(49, NULL, '', 'د. مصطفى وجيه', 'د.', NULL, NULL, 'Matlab', 'Engineering', 0, '2026-02-25 00:19:14'),
(50, NULL, '', 'م. منار', 'م.', NULL, NULL, 'Solar Energy', 'Energy', 0, '2026-02-25 00:19:14'),
(51, NULL, '', 'د. عمر مكرم', 'د.', NULL, NULL, 'Modeling', 'Energy', 0, '2026-02-25 00:19:14'),
(52, NULL, '', 'د. هبه', 'د.', NULL, NULL, 'Mathematics', 'Mathematics', 0, '2026-02-25 00:19:14'),
(53, NULL, '', 'د. فايزه', 'د.', NULL, NULL, 'PV Maintenance', 'Energy', 0, '2026-02-25 00:19:14'),
(54, NULL, '', 'م. عماد وهبه', 'م.', NULL, NULL, 'PV Technology', 'Energy', 0, '2026-02-25 00:19:14'),
(55, NULL, '', 'د. أحمد معاذ', 'د.', NULL, NULL, 'Occupational Safety', 'Safety', 0, '2026-02-25 00:19:14'),
(56, NULL, '', 'د. آمنة', 'د.', NULL, NULL, 'Physics', 'Science', 0, '2026-02-25 00:19:14'),
(57, NULL, '', 'د. فاطمة', 'د.', NULL, NULL, 'Railway Engineering', 'Engineering', 0, '2026-02-25 00:19:14'),
(58, NULL, '', 'د. شيرين', 'د.', NULL, NULL, 'Workshop', 'Engineering', 0, '2026-02-25 00:19:14'),
(59, NULL, '', 'م. امال', 'م.', NULL, NULL, 'Mathematics', 'Mathematics', 0, '2026-02-25 00:19:14'),
(60, NULL, '', 'د. ماجده', 'د.', NULL, NULL, 'English', 'Languages', 0, '2026-02-25 00:19:14'),
(61, NULL, '', 'د. مرفت حسين', 'د.', NULL, NULL, 'Financial Services', 'Business', 0, '2026-02-25 00:19:14'),
(62, NULL, '', 'م. نجلاء', 'م.', NULL, NULL, 'Financial Tutorial', 'Business', 0, '2026-02-25 00:19:14'),
(63, NULL, '', 'م. محمد حسن', 'م.', NULL, NULL, 'Management', 'Business', 0, '2026-02-25 00:19:14'),
(64, NULL, '', 'د. فاطمة محمد', 'د.', NULL, NULL, 'Electronics', 'Engineering', 0, '2026-02-25 00:19:14'),
(65, NULL, '', 'د. اسماء كساب', 'د.', NULL, NULL, 'Technical Drawing', 'Engineering', 0, '2026-02-25 00:19:14'),
(66, NULL, '', 'د. عبد الجواد', 'د.', NULL, NULL, 'Computer Science', 'IT', 0, '2026-02-25 00:19:14'),
(67, NULL, '', 'م. ميرفت', 'م.', NULL, NULL, 'Mathematics', 'Mathematics', 0, '2026-02-25 00:19:14'),
(68, NULL, '', 'م. شروق خالد', 'م.', NULL, NULL, 'English', 'Languages', 0, '2026-02-25 00:19:14'),
(69, NULL, '', 'د. ايناس احمد', 'د.', NULL, NULL, 'Thermodynamics', 'Engineering', 0, '2026-02-25 00:19:14'),
(70, NULL, '', 'د. سها', 'د.', NULL, NULL, 'Safety Management', 'Safety', 0, '2026-02-25 00:19:14'),
(71, NULL, '', 'د. احمد عبدالمنعم', 'د.', NULL, NULL, 'Prosthetics', 'Medical', 0, '2026-02-25 00:19:14'),
(72, NULL, '', 'م. شيرين عالء', 'م.', NULL, NULL, 'Clinical Placement', 'Medical', 0, '2026-02-25 00:19:14'),
(73, NULL, '', 'م. داليا حسام', 'م.', NULL, NULL, 'English', 'Languages', 0, '2026-02-25 00:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `level_number` int(11) NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `name_ar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `program_id`, `level_number`, `name_en`, `name_ar`, `created_at`) VALUES
(1, 4, 1, 'Level 1', 'الفرقة الأولى', '2026-02-25 00:19:14'),
(2, 6, 1, 'Level 1', 'الفرقة الأولى', '2026-02-25 00:19:14'),
(3, 5, 1, 'Level 1', 'الفرقة الأولى', '2026-02-25 00:19:14'),
(4, 1, 1, 'Level 1', 'الفرقة الأولى', '2026-02-25 00:19:14'),
(5, 2, 1, 'Level 1', 'الفرقة الأولى', '2026-02-25 00:19:14'),
(6, 9, 1, 'Level 1', 'الفرقة الأولى', '2026-02-25 00:19:14'),
(7, 8, 1, 'Level 1', 'الفرقة الأولى', '2026-02-25 00:19:14'),
(8, 7, 1, 'Level 1', 'الفرقة الأولى', '2026-02-25 00:19:14'),
(9, 3, 1, 'Level 1', 'الفرقة الأولى', '2026-02-25 00:19:14'),
(10, 4, 2, 'Level 2', 'الفرقة الثانية', '2026-02-25 00:19:14'),
(11, 6, 2, 'Level 2', 'الفرقة الثانية', '2026-02-25 00:19:14'),
(12, 5, 2, 'Level 2', 'الفرقة الثانية', '2026-02-25 00:19:14'),
(13, 1, 2, 'Level 2', 'الفرقة الثانية', '2026-02-25 00:19:14'),
(14, 2, 2, 'Level 2', 'الفرقة الثانية', '2026-02-25 00:19:14'),
(15, 9, 2, 'Level 2', 'الفرقة الثانية', '2026-02-25 00:19:14'),
(16, 8, 2, 'Level 2', 'الفرقة الثانية', '2026-02-25 00:19:14'),
(17, 7, 2, 'Level 2', 'الفرقة الثانية', '2026-02-25 00:19:14'),
(18, 3, 2, 'Level 2', 'الفرقة الثانية', '2026-02-25 00:19:14'),
(19, 4, 3, 'Level 3', 'الفرقة الثالثة', '2026-02-25 00:19:14'),
(20, 6, 3, 'Level 3', 'الفرقة الثالثة', '2026-02-25 00:19:14'),
(21, 5, 3, 'Level 3', 'الفرقة الثالثة', '2026-02-25 00:19:14'),
(22, 1, 3, 'Level 3', 'الفرقة الثالثة', '2026-02-25 00:19:14'),
(23, 2, 3, 'Level 3', 'الفرقة الثالثة', '2026-02-25 00:19:14'),
(24, 9, 3, 'Level 3', 'الفرقة الثالثة', '2026-02-25 00:19:14'),
(25, 8, 3, 'Level 3', 'الفرقة الثالثة', '2026-02-25 00:19:14'),
(26, 7, 3, 'Level 3', 'الفرقة الثالثة', '2026-02-25 00:19:14'),
(27, 3, 3, 'Level 3', 'الفرقة الثالثة', '2026-02-25 00:19:14'),
(28, 4, 4, 'Level 4', 'الفرقة الرابعة', '2026-02-25 00:19:14'),
(29, 6, 4, 'Level 4', 'الفرقة الرابعة', '2026-02-25 00:19:14'),
(30, 5, 4, 'Level 4', 'الفرقة الرابعة', '2026-02-25 00:19:14'),
(31, 1, 4, 'Level 4', 'الفرقة الرابعة', '2026-02-25 00:19:14'),
(32, 2, 4, 'Level 4', 'الفرقة الرابعة', '2026-02-25 00:19:14'),
(33, 9, 4, 'Level 4', 'الفرقة الرابعة', '2026-02-25 00:19:14'),
(34, 8, 4, 'Level 4', 'الفرقة الرابعة', '2026-02-25 00:19:14'),
(35, 7, 4, 'Level 4', 'الفرقة الرابعة', '2026-02-25 00:19:14'),
(36, 3, 4, 'Level 4', 'الفرقة الرابعة', '2026-02-25 00:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `name_ar` varchar(100) NOT NULL,
  `duration_years` int(11) DEFAULT 4,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `code`, `name_en`, `name_ar`, `duration_years`, `description`, `is_active`, `created_at`) VALUES
(1, 'IT', 'Information Technology', 'تكنولوجيا المعلومات', 4, NULL, 1, '2026-02-25 00:19:14'),
(2, 'Mechatronics', 'Mechatronics', 'الميكاترونيات', 4, NULL, 1, '2026-02-25 00:19:14'),
(3, 'Renewable Energy', 'Renewable Energy', 'الطاقة المتجددة', 4, NULL, 1, '2026-02-25 00:19:14'),
(4, 'Autotronics', 'Autotronics', 'الأوتوترونكس', 4, NULL, 1, '2026-02-25 00:19:14'),
(5, 'Industrial Control', 'Industrial Control Systems', 'نظم التحكم الصناعي', 4, NULL, 1, '2026-02-25 00:19:14'),
(6, 'Financial Services', 'Financial and Insurance Services Marketing Technology', 'تسويق الخدمات المالية والتأمينية', 4, NULL, 1, '2026-02-25 00:19:14'),
(7, 'Refrigeration', 'Refrigeration and Air Conditioning', 'التبريد والتكييف', 4, NULL, 1, '2026-02-25 00:19:14'),
(8, 'Railway', 'Railway', 'السكك الحديدية', 4, NULL, 1, '2026-02-25 00:19:14'),
(9, 'Prosthetics', 'Prosthetics & Orthotics Technology', 'تكنولوجيا الأطراف الصناعية والأجهزة التقويمية', 4, NULL, 1, '2026-02-25 00:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `track_id` int(11) DEFAULT NULL,
  `day_id` int(11) NOT NULL,
  `time_slot_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `hall_id` int(11) NOT NULL,
  `group_name` varchar(50) DEFAULT NULL,
  `session_type` enum('Lecture','Tutorial','Lab','Practical','Section') DEFAULT 'Lecture',
  `academic_year` varchar(20) DEFAULT '2025-2026',
  `semester` enum('First','Second','Summer') DEFAULT 'First',
  `is_active` tinyint(1) DEFAULT 1,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `program_id`, `level_id`, `track_id`, `day_id`, `time_slot_id`, `course_id`, `instructor_id`, `hall_id`, `group_name`, `session_type`, `academic_year`, `semester`, `is_active`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 2, 1, 1, 1, 1, NULL, 'Lecture', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(2, 1, 1, NULL, 2, 2, 2, 2, 5, NULL, 'Lecture', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(3, 1, 1, NULL, 2, 3, 3, 3, 20, NULL, 'Lecture', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(4, 1, 1, NULL, 2, 4, 4, 4, 22, 'Group (2)', 'Tutorial', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(5, 1, 1, NULL, 2, 5, 4, 4, 23, 'Group (1)', 'Tutorial', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(6, 1, 1, NULL, 3, 1, 2, 5, 18, 'Group (1)', 'Tutorial', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(7, 1, 1, NULL, 3, 2, 2, 5, 18, 'Group (2)', 'Tutorial', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(8, 1, 1, NULL, 3, 3, 5, 6, 9, NULL, 'Lecture', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(9, 1, 1, NULL, 3, 4, 6, 3, 1, NULL, 'Lecture', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(10, 1, 1, NULL, 3, 5, 7, 7, 9, NULL, 'Lecture', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(11, 1, 1, NULL, 3, 6, 5, 5, 20, 'Group (2)', 'Tutorial', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(12, 1, 1, NULL, 3, 7, 5, 5, 19, 'Group (1)', 'Tutorial', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(13, 1, 1, NULL, 3, 8, 3, 8, 24, 'Group (A)', 'Lab', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(14, 1, 1, NULL, 1, 4, 6, 9, 32, 'Group (C)', 'Lab', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(15, 1, 1, NULL, 1, 5, 3, 8, 24, 'Group (C)', 'Lab', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(16, 1, 1, NULL, 1, 6, 3, 8, 24, 'Group (B)', 'Lab', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(17, 1, 1, NULL, 1, 7, 6, 9, 32, 'Group (B)', 'Lab', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(18, 1, 1, NULL, 1, 8, 6, 9, 32, 'Group (A)', 'Lab', '2025-2026', 'First', 1, NULL, '2026-02-25 00:19:14', '2026-02-25 00:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` int(11) NOT NULL,
  `slot_code` varchar(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `start_hour` int(11) DEFAULT NULL,
  `end_hour` int(11) DEFAULT NULL,
  `period` enum('AM','PM','Mixed') DEFAULT 'Mixed',
  `order_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `slot_code`, `start_time`, `end_time`, `start_hour`, `end_hour`, `period`, `order_num`) VALUES
(1, '8-9', '08:00:00', '09:00:00', 8, 9, 'Mixed', 1),
(2, '9-10', '09:00:00', '10:00:00', 9, 10, 'Mixed', 2),
(3, '10-11', '10:00:00', '11:00:00', 10, 11, 'Mixed', 3),
(4, '11-12', '11:00:00', '12:00:00', 11, 12, 'Mixed', 4),
(5, '12-1', '12:00:00', '13:00:00', 12, 13, 'Mixed', 5),
(6, '1-2', '13:00:00', '14:00:00', 13, 14, 'Mixed', 6),
(7, '2-3', '14:00:00', '15:00:00', 14, 15, 'Mixed', 7),
(8, '3-4', '15:00:00', '16:00:00', 15, 16, 'Mixed', 8),
(9, '4-5', '16:00:00', '17:00:00', 16, 17, 'Mixed', 9),
(10, '5-6', '17:00:00', '18:00:00', 17, 18, 'Mixed', 10),
(11, '6-7', '18:00:00', '19:00:00', 18, 19, 'Mixed', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `name_ar` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `program_id`, `name_en`, `name_ar`, `description`, `is_active`, `created_at`) VALUES
(1, 1, 'Software', 'مسار البرمجيات', NULL, 1, '2026-02-25 00:19:14'),
(2, 1, 'Network', 'مسار الشبكات', NULL, 1, '2026-02-25 00:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `full_name_ar` varchar(100) DEFAULT NULL,
  `user_type` enum('admin','doctor','student','staff') DEFAULT 'student',
  `phone` varchar(20) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `full_name`, `full_name_ar`, `user_type`, `phone`, `department`, `profile_image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@ekc.edu.eg', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'System Administrator', NULL, 'admin', NULL, 'Administration', NULL, 1, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(2, 'doctor1', 'doctor1@ekc.edu.eg', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dr. Ahmed Mohamed', NULL, 'doctor', NULL, 'Computer Science', NULL, 1, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(3, 'doctor2', 'doctor2@ekc.edu.eg', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dr. Sarah Ali', NULL, 'doctor', NULL, 'Engineering', NULL, 1, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(4, 'doctor3', 'doctor3@ekc.edu.eg', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dr. Mahmoud Hassan', NULL, 'doctor', NULL, 'Physics', NULL, 1, '2026-02-25 00:19:14', '2026-02-25 00:19:14'),
(7, 'ashraf@gmail.com', 'ashraf55@gmail.com', '$2y$10$LYuq3fOLFgBxeNk7Ws9rEugW5biOGbY7Ofs7OJ6ZRL8EIDlmHfGKG', 'ashraf', NULL, 'doctor', NULL, 'it', NULL, 1, '2026-02-25 00:24:53', '2026-02-25 00:24:53'),
(8, 'malak@gmail.com', 'yehyam357@gmail.com', '$2y$10$gtAGK/uq0lBynzYQ5biMAey9RcoPqXMgIcFNCBt0..OoqwCYJAu3K', 'Malak Yehya', NULL, 'student', NULL, NULL, NULL, 1, '2026-02-25 04:05:55', '2026-02-25 04:05:55'),
(9, 'mariam@gmail.com', 'mariam@gmail.com', '$2y$10$mVZkzFGHn/tjomd84XajyeiWCIleSrxAymzceeSPEniaeAskxP4MO', 'Mariam shrief', NULL, 'student', NULL, NULL, NULL, 1, '2026-02-25 04:13:35', '2026-02-25 04:13:35'),
(10, 'farah@gmail.com', 'farah777@gmail.com', '$2y$10$bYvCd8B3vomkdWvcuO/.reARqddSvCyJemdDBW1fs3gB/bjkaDwFC', 'farah Hesham', NULL, 'doctor', NULL, 'IT', NULL, 1, '2026-02-25 21:12:06', '2026-02-25 21:12:06');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_current_occupancy`
-- (See below for the actual view)
--
CREATE TABLE `vw_current_occupancy` (
`id` int(11)
,`name` varchar(20)
,`building` varchar(50)
,`floor` varchar(20)
,`capacity` int(11)
,`location` varchar(255)
,`status` varchar(11)
,`course` varchar(100)
,`instructor` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_doctor_bookings`
-- (See below for the actual view)
--
CREATE TABLE `vw_doctor_bookings` (
`id` int(11)
,`hall_id` int(11)
,`doctor_id` int(11)
,`course_id` int(11)
,`booking_date` date
,`time_slot_id` int(11)
,`start_time` time
,`end_time` time
,`student_count` int(11)
,`purpose` varchar(255)
,`request_notes` text
,`admin_notes` text
,`status` enum('pending','approved','rejected','cancelled','completed')
,`approved_by` int(11)
,`approved_at` timestamp
,`created_at` timestamp
,`updated_at` timestamp
,`hall_name` varchar(20)
,`building` varchar(50)
,`floor` varchar(20)
,`location` varchar(255)
,`course_name` varchar(100)
,`doctor_name` varchar(100)
,`slot_code` varchar(10)
,`slot_start` time
,`slot_end` time
);

-- --------------------------------------------------------

--
-- Structure for view `vw_current_occupancy`
--
DROP TABLE IF EXISTS `vw_current_occupancy`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_current_occupancy`  AS SELECT `h`.`id` AS `id`, `h`.`name` AS `name`, `h`.`building` AS `building`, `h`.`floor` AS `floor`, `h`.`capacity` AS `capacity`, `h`.`location` AS `location`, CASE WHEN `h`.`status` = 'maintenance' THEN 'maintenance' WHEN `b`.`id` is not null AND curtime() between `b`.`start_time` and `b`.`end_time` THEN 'occupied' WHEN `s`.`id` is not null AND curtime() between `ts`.`start_time` and `ts`.`end_time` THEN 'occupied' ELSE 'available' END AS `status`, coalesce(`c`.`name_ar`,'No class') AS `course`, coalesce(`i`.`name_ar`,'N/A') AS `instructor` FROM (((((`halls` `h` left join `bookings` `b` on(`h`.`id` = `b`.`hall_id` and `b`.`booking_date` = curdate() and `b`.`status` = 'approved')) left join `schedule` `s` on(`h`.`id` = `s`.`hall_id` and `s`.`day_id` = (select `days`.`id` from `days` where `days`.`name_en` = dayname(curdate())))) left join `time_slots` `ts` on(`s`.`time_slot_id` = `ts`.`id`)) left join `courses` `c` on(coalesce(`b`.`course_id`,`s`.`course_id`) = `c`.`id`)) left join `instructors` `i` on(coalesce(`b`.`doctor_id`,`s`.`instructor_id`) = `i`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_doctor_bookings`
--
DROP TABLE IF EXISTS `vw_doctor_bookings`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_doctor_bookings`  AS SELECT `b`.`id` AS `id`, `b`.`hall_id` AS `hall_id`, `b`.`doctor_id` AS `doctor_id`, `b`.`course_id` AS `course_id`, `b`.`booking_date` AS `booking_date`, `b`.`time_slot_id` AS `time_slot_id`, `b`.`start_time` AS `start_time`, `b`.`end_time` AS `end_time`, `b`.`student_count` AS `student_count`, `b`.`purpose` AS `purpose`, `b`.`request_notes` AS `request_notes`, `b`.`admin_notes` AS `admin_notes`, `b`.`status` AS `status`, `b`.`approved_by` AS `approved_by`, `b`.`approved_at` AS `approved_at`, `b`.`created_at` AS `created_at`, `b`.`updated_at` AS `updated_at`, `h`.`name` AS `hall_name`, `h`.`building` AS `building`, `h`.`floor` AS `floor`, `h`.`location` AS `location`, `c`.`name` AS `course_name`, `u`.`full_name` AS `doctor_name`, `ts`.`slot_code` AS `slot_code`, `ts`.`start_time` AS `slot_start`, `ts`.`end_time` AS `slot_end` FROM ((((`bookings` `b` left join `halls` `h` on(`b`.`hall_id` = `h`.`id`)) left join `courses` `c` on(`b`.`course_id` = `c`.`id`)) left join `users` `u` on(`b`.`doctor_id` = `u`.`id`)) left join `time_slots` `ts` on(`b`.`time_slot_id` = `ts`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_booking` (`hall_id`,`booking_date`,`time_slot_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `time_slot_id` (`time_slot_id`),
  ADD KEY `approved_by` (`approved_by`),
  ADD KEY `idx_doctor` (`doctor_id`),
  ADD KEY `idx_date` (`booking_date`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `unique_course_program` (`code`,`program_id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `level_id` (`level_id`),
  ADD KEY `track_id` (`track_id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_en` (`name_en`);

--
-- Indexes for table `doctor_courses`
--
ALTER TABLE `doctor_courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_doctor_course` (`doctor_id`,`course_id`,`semester`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `halls`
--
ALTER TABLE `halls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_program_level` (`program_id`,`level_number`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_hall_time` (`hall_id`,`day_id`,`time_slot_id`,`semester`,`academic_year`),
  ADD KEY `level_id` (`level_id`),
  ADD KEY `track_id` (`track_id`),
  ADD KEY `time_slot_id` (`time_slot_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `instructor_id` (`instructor_id`),
  ADD KEY `idx_program_level` (`program_id`,`level_id`),
  ADD KEY `idx_day_time` (`day_id`,`time_slot_id`),
  ADD KEY `idx_hall` (`hall_id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slot_code` (`slot_code`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctor_courses`
--
ALTER TABLE `doctor_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `halls`
--
ALTER TABLE `halls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`hall_id`) REFERENCES `halls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bookings_ibfk_4` FOREIGN KEY (`time_slot_id`) REFERENCES `time_slots` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_5` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `courses_ibfk_3` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `doctor_courses`
--
ALTER TABLE `doctor_courses`
  ADD CONSTRAINT `doctor_courses_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctor_courses_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instructors`
--
ALTER TABLE `instructors`
  ADD CONSTRAINT `instructors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `levels`
--
ALTER TABLE `levels`
  ADD CONSTRAINT `levels_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_3` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `schedule_ibfk_4` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_5` FOREIGN KEY (`time_slot_id`) REFERENCES `time_slots` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_6` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_7` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_8` FOREIGN KEY (`hall_id`) REFERENCES `halls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tracks`
--
ALTER TABLE `tracks`
  ADD CONSTRAINT `tracks_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
