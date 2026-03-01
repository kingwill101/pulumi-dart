// ignore_for_file: unused_element, unnecessary_cast

import 'date.dart';
import 'time_of_day.dart';

/// Specifies the maintenance denial period.
class DenyMaintenancePeriod {
  /// End date of the deny maintenance period.
  final Date endDate;
  /// Start date of the deny maintenance period.
  final Date startDate;
  /// Time in UTC when the period starts and ends.
  final TimeOfDay time;

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
      'endDate': endDate.toMap(),
      'startDate': startDate.toMap(),
      'time': time.toMap(),
    };
  }

  factory DenyMaintenancePeriod.fromMap(Map<String, dynamic> map) {
    return DenyMaintenancePeriod(
      endDate: Date.fromMap((map['endDate'] as Map).cast<String, dynamic>()),
      startDate: Date.fromMap((map['startDate'] as Map).cast<String, dynamic>()),
      time: TimeOfDay.fromMap((map['time'] as Map).cast<String, dynamic>()),
    );
  }
}

