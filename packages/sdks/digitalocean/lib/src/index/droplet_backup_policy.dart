// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DropletBackupPolicy {
  /// The hour of the day that the backup window will start (`0`, `4`, `8`, `12`, `16`, `20`).
  final pulumi.Input<int>? hour;
  /// The backup plan used for the Droplet. The plan can be either `daily` or `weekly`.
  final pulumi.Input<String>? plan;
  /// The day of the week on which the backup will occur (`SUN`, `MON`, `TUE`, `WED`, `THU`, `FRI`, `SAT`).
  final pulumi.Input<String>? weekday;

  /// Creates a new [DropletBackupPolicy].
  /// [hour] The hour of the day that the backup window will start (`0`, `4`, `8`, `12`, `16`, `20`).
  /// [plan] The backup plan used for the Droplet. The plan can be either `daily` or `weekly`.
  /// [weekday] The day of the week on which the backup will occur (`SUN`, `MON`, `TUE`, `WED`, `THU`, `FRI`, `SAT`).
  const DropletBackupPolicy({
    this.hour,
    this.plan,
    this.weekday,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hour': ?hour,
      'plan': ?plan,
      'weekday': ?weekday,
    };
  }

  factory DropletBackupPolicy.fromMap(Map<String, dynamic> map) {
    return DropletBackupPolicy(
      hour: (() { final guardedValue = map['hour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weekday: (() { final guardedValue = map['weekday']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
