// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'date.dart';
import 'time_of_day.dart';

/// Specifies the maintenance denial period.
class DenyMaintenancePeriod {
  /// End date of the deny maintenance period.
  final pulumi.Input<Date> endDate;
  /// Start date of the deny maintenance period.
  final pulumi.Input<Date> startDate;
  /// Time in UTC when the period starts and ends.
  final pulumi.Input<TimeOfDay> time;

  /// Creates a new [DenyMaintenancePeriod].
  /// [endDate] End date of the deny maintenance period.
  /// [startDate] Start date of the deny maintenance period.
  /// [time] Time in UTC when the period starts and ends.
  DenyMaintenancePeriod({
    required this.endDate,
    required this.startDate,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': pulumi.Input.mapInputValue<Date, Map<String, dynamic>>(endDate, (value) => value.toMap()),
      'startDate': pulumi.Input.mapInputValue<Date, Map<String, dynamic>>(startDate, (value) => value.toMap()),
      'time': pulumi.Input.mapInputValue<TimeOfDay, Map<String, dynamic>>(time, (value) => value.toMap()),
    };
  }

  factory DenyMaintenancePeriod.fromMap(Map<String, dynamic> map) {
    return DenyMaintenancePeriod(
      endDate: (Date.fromMap((map['endDate'] as Map).cast<String, dynamic>())).input(),
      startDate: (Date.fromMap((map['startDate'] as Map).cast<String, dynamic>())).input(),
      time: (TimeOfDay.fromMap((map['time'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

