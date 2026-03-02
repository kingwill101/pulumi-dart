// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_automated_backup_config_fixed_frequency_schedule_start_time.dart';

class InstanceAutomatedBackupConfigFixedFrequencySchedule {
  /// The start time of every automated backup in UTC.
  /// It must be set to the start of an hour. This field is required.
  /// Structure is documented below.
  final pulumi.Input<InstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime> startTime;

  /// Creates a new [InstanceAutomatedBackupConfigFixedFrequencySchedule].
  /// [startTime] The start time of every automated backup in UTC.
  InstanceAutomatedBackupConfigFixedFrequencySchedule({
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTime': pulumi.Input.mapInputValue<InstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory InstanceAutomatedBackupConfigFixedFrequencySchedule.fromMap(Map<String, dynamic> map) {
    return InstanceAutomatedBackupConfigFixedFrequencySchedule(
      startTime: (InstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime.fromMap((map['startTime'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

