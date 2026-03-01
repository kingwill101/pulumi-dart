// ignore_for_file: unused_element, unnecessary_cast


class DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTime {
  /// Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final int? hours;
  /// Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59.
  final int? minutes;
  /// Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal to 999,999,999.
  final int? nanos;
  /// Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal to 59. An API may allow the value 60 if it allows leap-seconds.
  final int? seconds;

  /// Creates a new [DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTime].
  /// [hours] Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  /// [minutes] Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59.
  /// [nanos] Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal to 999,999,999.
  /// [seconds] Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal to 59. An API may allow the value 60 if it allows leap-seconds.
  DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTime({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': ?hours,
      'minutes': ?minutes,
      'nanos': ?nanos,
      'seconds': ?seconds,
    };
  }

  factory DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTime.fromMap(Map<String, dynamic> map) {
    return DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTime(
      hours: map['hours'] == null ? null : map['hours'] as int,
      minutes: map['minutes'] == null ? null : map['minutes'] as int,
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as int,
    );
  }
}

