// ignore_for_file: unused_element, unnecessary_cast


/// Hourly schedule.
class HourlySchedule {
  /// Interval at which backup needs to be triggered. For hourly the value
  /// can be 4/6/8/12
  final int? interval;
  /// To specify duration of the backup window
  final int? scheduleWindowDuration;
  /// To specify start time of the backup window
  final String? scheduleWindowStartTime;

  /// Creates a new [HourlySchedule].
  /// [interval] Interval at which backup needs to be triggered. For hourly the value
  /// [scheduleWindowDuration] To specify duration of the backup window
  /// [scheduleWindowStartTime] To specify start time of the backup window
  HourlySchedule({
    this.interval,
    this.scheduleWindowDuration,
    this.scheduleWindowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'scheduleWindowDuration': ?scheduleWindowDuration,
      'scheduleWindowStartTime': ?scheduleWindowStartTime,
    };
  }

  factory HourlySchedule.fromMap(Map<String, dynamic> map) {
    return HourlySchedule(
      interval: map['interval'] == null ? null : map['interval'] as int,
      scheduleWindowDuration: map['scheduleWindowDuration'] == null ? null : map['scheduleWindowDuration'] as int,
      scheduleWindowStartTime: map['scheduleWindowStartTime'] == null ? null : map['scheduleWindowStartTime'] as String,
    );
  }
}

