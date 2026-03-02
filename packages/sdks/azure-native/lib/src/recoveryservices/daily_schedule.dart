// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DailySchedule {
  /// List of times of day this schedule has to be run.
  final pulumi.Input<List<String>>? scheduleRunTimes;

  /// Creates a new [DailySchedule].
  /// [scheduleRunTimes] List of times of day this schedule has to be run.
  DailySchedule({
    this.scheduleRunTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleRunTimes': ?scheduleRunTimes,
    };
  }

  factory DailySchedule.fromMap(Map<String, dynamic> map) {
    return DailySchedule(
      scheduleRunTimes: map['scheduleRunTimes'] == null ? null : ((map['scheduleRunTimes']! as List).cast<String>()).input(),
    );
  }
}

