// ignore_for_file: unused_element, unnecessary_cast


class PolicyFileShareRetentionMonthly {
  /// The number of monthly backups to keep. Must be between `1` and `120`
  final int count;
  /// The days of the month to retain backups of. Must be between `1` and `31`.
  final List<int>? days;
  /// Including the last day of the month, default to `false`.
  ///
  /// > **Note:** Either `weekdays` and `weeks` or `days` and `include_last_days` must be specified.
  final bool? includeLastDays;
  /// The weekday backups to retain . Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  final List<String>? weekdays;
  /// The weeks of the month to retain backups of. Must be one of `First`, `Second`, `Third`, `Fourth`, `Last`.
  final List<String>? weeks;

  /// Creates a new [PolicyFileShareRetentionMonthly].
  /// [count] The number of monthly backups to keep. Must be between `1` and `120`
  /// [days] The days of the month to retain backups of. Must be between `1` and `31`.
  /// [includeLastDays] Including the last day of the month, default to `false`.
  /// [weekdays] The weekday backups to retain . Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  /// [weeks] The weeks of the month to retain backups of. Must be one of `First`, `Second`, `Third`, `Fourth`, `Last`.
  PolicyFileShareRetentionMonthly({
    required this.count,
    this.days,
    this.includeLastDays,
    this.weekdays,
    this.weeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'days': ?days,
      'includeLastDays': ?includeLastDays,
      'weekdays': ?weekdays,
      'weeks': ?weeks,
    };
  }

  factory PolicyFileShareRetentionMonthly.fromMap(Map<String, dynamic> map) {
    return PolicyFileShareRetentionMonthly(
      count: map['count'] as int,
      days: map['days'] == null ? null : (map['days'] as List).cast<int>(),
      includeLastDays: map['includeLastDays'] == null ? null : map['includeLastDays'] as bool,
      weekdays: map['weekdays'] == null ? null : (map['weekdays'] as List).cast<String>(),
      weeks: map['weeks'] == null ? null : (map['weeks'] as List).cast<String>(),
    );
  }
}

