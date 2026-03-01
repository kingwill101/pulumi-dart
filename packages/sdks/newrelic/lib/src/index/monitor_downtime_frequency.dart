// ignore_for_file: unused_element, unnecessary_cast

import 'monitor_downtime_frequency_days_of_week.dart';

class MonitorDowntimeFrequency {
  /// A numerical list of days of a month on which the Monitor Downtime is scheduled to run.
  final List<int>? daysOfMonths;
  /// A list of days of the week on which the Monitor Downtime is scheduled to run.
  final MonitorDowntimeFrequencyDaysOfWeek? daysOfWeek;

  /// Creates a new [MonitorDowntimeFrequency].
  /// [daysOfMonths] A numerical list of days of a month on which the Monitor Downtime is scheduled to run.
  /// [daysOfWeek] A list of days of the week on which the Monitor Downtime is scheduled to run.
  MonitorDowntimeFrequency({
    this.daysOfMonths,
    this.daysOfWeek,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfMonths': ?daysOfMonths,
      'daysOfWeek': ?daysOfWeek == null ? null : daysOfWeek!.toMap(),
    };
  }

  factory MonitorDowntimeFrequency.fromMap(Map<String, dynamic> map) {
    return MonitorDowntimeFrequency(
      daysOfMonths: map['daysOfMonths'] == null ? null : (map['daysOfMonths'] as List).cast<int>(),
      daysOfWeek: map['daysOfWeek'] == null ? null : MonitorDowntimeFrequencyDaysOfWeek.fromMap((map['daysOfWeek'] as Map).cast<String, dynamic>()),
    );
  }
}

