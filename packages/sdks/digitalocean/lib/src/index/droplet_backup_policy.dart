// ignore_for_file: unused_element, unnecessary_cast


class DropletBackupPolicy {
  /// The hour of the day that the backup window will start (`0`, `4`, `8`, `12`, `16`, `20`).
  final int? hour;
  /// The backup plan used for the Droplet. The plan can be either `daily` or `weekly`.
  final String? plan;
  /// The day of the week on which the backup will occur (`SUN`, `MON`, `TUE`, `WED`, `THU`, `FRI`, `SAT`).
  final String? weekday;

  /// Creates a new [DropletBackupPolicy].
  /// [hour] The hour of the day that the backup window will start (`0`, `4`, `8`, `12`, `16`, `20`).
  /// [plan] The backup plan used for the Droplet. The plan can be either `daily` or `weekly`.
  /// [weekday] The day of the week on which the backup will occur (`SUN`, `MON`, `TUE`, `WED`, `THU`, `FRI`, `SAT`).
  DropletBackupPolicy({
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
      hour: map['hour'] == null ? null : map['hour'] as int,
      plan: map['plan'] == null ? null : map['plan'] as String,
      weekday: map['weekday'] == null ? null : map['weekday'] as String,
    );
  }
}

