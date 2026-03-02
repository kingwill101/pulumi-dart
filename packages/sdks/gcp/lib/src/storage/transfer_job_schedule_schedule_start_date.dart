// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobScheduleScheduleStartDate {
  /// Day of month. Must be from 1 to 31 and valid for the year and month.
  final pulumi.Input<int> day;
  /// Month of year. Must be from 1 to 12.
  final pulumi.Input<int> month;
  /// Year of date. Must be from 1 to 9999.
  final pulumi.Input<int> year;

  /// Creates a new [TransferJobScheduleScheduleStartDate].
  /// [day] Day of month. Must be from 1 to 31 and valid for the year and month.
  /// [month] Month of year. Must be from 1 to 12.
  /// [year] Year of date. Must be from 1 to 9999.
  TransferJobScheduleScheduleStartDate({
    required this.day,
    required this.month,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'month': month,
      'year': year,
    };
  }

  factory TransferJobScheduleScheduleStartDate.fromMap(Map<String, dynamic> map) {
    return TransferJobScheduleScheduleStartDate(
      day: (map['day'] as int).input(),
      month: (map['month'] as int).input(),
      year: (map['year'] as int).input(),
    );
  }
}

