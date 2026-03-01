// ignore_for_file: unused_element, unnecessary_cast


/// Daily schedule.
class DailyScheduleResponse {
  /// List of times of day this schedule has to be run.
  final List<String>? scheduleRunTimes;

  /// Creates a new [DailyScheduleResponse].
  /// [scheduleRunTimes] List of times of day this schedule has to be run.
  DailyScheduleResponse({
    this.scheduleRunTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleRunTimes': ?scheduleRunTimes,
    };
  }

  factory DailyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return DailyScheduleResponse(
      scheduleRunTimes: map['scheduleRunTimes'] == null ? null : (map['scheduleRunTimes'] as List).cast<String>(),
    );
  }
}

