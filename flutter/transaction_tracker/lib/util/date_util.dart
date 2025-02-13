// import 'package:intl/intl.dart';
//
// class MyDate {
//
//   static String formatDate(String dateString) {
//     DateTime date = DateTime.parse(dateString);
//
//     DateTime now = DateTime.now();
//     DateTime startOfWeek = now.subtract(Duration(days: now.weekday - 1));
//     DateTime endOfWeek = startOfWeek.add(const Duration(days: 6));
//
//     if (date.year == now.year && date.month == now.month && date.day == now.day) {
//       // If date is for today, return time
//       return DateFormat('h:mm a').format(date);
//     } else if (date.isAfter(startOfWeek) && date.isBefore(endOfWeek)) {
//       // If date is within current week, return day of week
//       return DateFormat('EEE').format(date);
//     } else if (date.year == now.year) {
//       // If date is within current year, return day and month
//       return DateFormat('d MMM').format(date);
//     } else if (date.year == now.year - 1) {
//       // If date is from previous year, return full date
//       return DateFormat('d MMM y').format(date);
//     } else {
//       // If date is older than previous year, return empty string
//       return DateFormat('d MMM y').format(date);
//     }
//   }
//
// }