// ignore_for_file: unused_element, unnecessary_cast


class PolicyVMBackup {
  /// Sets the backup frequency. Possible values are `Hourly`, `Daily` and `Weekly`.
  final String frequency;
  /// Duration of the backup window in hours. Possible values are between `4` and `24` This is used when `frequency` is `Hourly`.
  ///
  /// > **Note:** `hour_duration` must be multiplier of `hour_interval`
  final int? hourDuration;
  /// Interval in hour at which backup is triggered. Possible values are `4`, `6`, `8` and `12`. This is used when `frequency` is `Hourly`.
  final int? hourInterval;
  /// The time of day to perform the backup in 24hour format.
  final String time;
  /// The days of the week to perform backups on. Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`. This is used when `frequency` is `Weekly`.
  final List<String>? weekdays;

  /// Creates a new [PolicyVMBackup].
  /// [frequency] Sets the backup frequency. Possible values are `Hourly`, `Daily` and `Weekly`.
  /// [hourDuration] Duration of the backup window in hours. Possible values are between `4` and `24` This is used when `frequency` is `Hourly`.
  /// [hourInterval] Interval in hour at which backup is triggered. Possible values are `4`, `6`, `8` and `12`. This is used when `frequency` is `Hourly`.
  /// [time] The time of day to perform the backup in 24hour format.
  /// [weekdays] The days of the week to perform backups on. Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`. This is used when `frequency` is `Weekly`.
  PolicyVMBackup({
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
      frequency: map['frequency'] as String,
      hourDuration: map['hourDuration'] == null ? null : map['hourDuration'] as int,
      hourInterval: map['hourInterval'] == null ? null : map['hourInterval'] as int,
      time: map['time'] as String,
      weekdays: map['weekdays'] == null ? null : (map['weekdays'] as List).cast<String>(),
    );
  }
}

