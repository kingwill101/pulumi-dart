// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMBackup {
  /// Sets the backup frequency. Possible values are `Hourly`, `Daily` and `Weekly`.
  final pulumi.Input<String> frequency;
  /// Duration of the backup window in hours. Possible values are between `4` and `24` This is used when `frequency` is `Hourly`.
  ///
  /// &gt; **Note:** `hourDuration` must be multiplier of `hourInterval`
  final pulumi.Input<int>? hourDuration;
  /// Interval in hour at which backup is triggered. Possible values are `4`, `6`, `8` and `12`. This is used when `frequency` is `Hourly`.
  final pulumi.Input<int>? hourInterval;
  /// The time of day to perform the backup in 24hour format.
  final pulumi.Input<String> time;
  /// The days of the week to perform backups on. Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`. This is used when `frequency` is `Weekly`.
  final pulumi.Input<List<String>>? weekdays;

  /// Creates a new [PolicyVMBackup].
  /// [frequency] Sets the backup frequency. Possible values are `Hourly`, `Daily` and `Weekly`.
  /// [hourDuration] Duration of the backup window in hours. Possible values are between `4` and `24` This is used when `frequency` is `Hourly`.
  /// [hourInterval] Interval in hour at which backup is triggered. Possible values are `4`, `6`, `8` and `12`. This is used when `frequency` is `Hourly`.
  /// [time] The time of day to perform the backup in 24hour format.
  /// [weekdays] The days of the week to perform backups on. Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`. This is used when `frequency` is `Weekly`.
  const PolicyVMBackup({
    required this.frequency,
    this.hourDuration,
    this.hourInterval,
    required this.time,
    this.weekdays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
      'hourDuration': ?hourDuration,
      'hourInterval': ?hourInterval,
      'time': time,
      'weekdays': ?weekdays,
    };
  }

  factory PolicyVMBackup.fromMap(Map<String, dynamic> map) {
    return PolicyVMBackup(
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      hourDuration: (() { final guardedValue = map['hourDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hourInterval: (() { final guardedValue = map['hourInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      time: pulumi.Input.fromValue(map['time'] as String),
      weekdays: (() { final guardedValue = map['weekdays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
