// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_file_share_backup_hourly.dart';

class PolicyFileShareBackup {
  /// Sets the backup frequency. Possible values are `Daily` and `Hourly`.
  ///
  /// &gt; **Note:** This argument is made available for consistency with VM backup policies and to allow for potential future support of weekly backups
  final pulumi.Input<String> frequency;
  /// A `hourly` block defined as below. This is required when `frequency` is set to `Hourly`.
  final pulumi.Input<PolicyFileShareBackupHourly>? hourly;
  /// The time of day to perform the backup in 24-hour format. Times must be either on the hour or half hour (e.g. 12:00, 12:30, 13:00, etc.)
  ///
  /// &gt; **Note:** `time` is required when `frequency` is set to `Daily`.
  final pulumi.Input<String>? time;

  /// Creates a new [PolicyFileShareBackup].
  /// [frequency] Sets the backup frequency. Possible values are `Daily` and `Hourly`.
  /// [hourly] A `hourly` block defined as below. This is required when `frequency` is set to `Hourly`.
  /// [time] The time of day to perform the backup in 24-hour format. Times must be either on the hour or half hour (e.g. 12:00, 12:30, 13:00, etc.)
  const PolicyFileShareBackup({
    required this.frequency,
    this.hourly,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
      'hourly': ?pulumi.Input.mapOptionalInputValue<PolicyFileShareBackupHourly, Map<String, dynamic>>(hourly, (value) => value.toMap()),
      'time': ?time,
    };
  }

  factory PolicyFileShareBackup.fromMap(Map<String, dynamic> map) {
    return PolicyFileShareBackup(
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      hourly: (() { final guardedValue = map['hourly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyFileShareBackupHourly.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      time: (() { final guardedValue = map['time']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
