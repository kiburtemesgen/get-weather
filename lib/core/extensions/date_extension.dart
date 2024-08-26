import 'package:intl/intl.dart';

extension DateEx on DateTime {
    String get ymdFormat => DateFormat('yyyy-MM-dd').format(this);
    String get weatherFormat => DateFormat('EEE MMMM d, yyyy h:mm a').format(this);

}