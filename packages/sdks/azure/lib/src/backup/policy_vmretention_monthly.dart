// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMRetentionMonthly {
  /// The number of monthly backups to keep. Must be between `1` and `9999`
  final pulumi.Input<int> count;
  /// The days of the month to retain backups of. Must be between `1` and `31`.
  final pulumi.Input<List<int>>? days;
  /// Including the last day of the month, default to `false`.
  ///
  /// > **Note:** Either `weekdays` and `weeks` or `days` and `include_last_days` must be specified.
  final pulumi.Input<bool>? includeLastDays;
  /// The weekday backups to retain . Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  final pulumi.Input<List<String>>? weekdays;
  /// The weeks of the month to retain backups of. Must be one of `First`, `Second`, `Third`, `Fourth`, `Last`.
  final pulumi.Input<List<String>>? weeks;

  /// Creates a new [PolicyVMRetentionMonthly].
  /// [count] The number of monthly backups to keep. Must be between `1` and `9999`
  /// [days] The days of the month to retain backups of. Must be between `1` and `31`.
  /// [includeLastDays] Including the last day of the month, default to `false`.
  /// [weekdays] The weekday backups to retain . Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  /// [weeks] The weeks of the month to retain backups of. Must be one of `First`, `Second`, `Third`, `Fourth`, `Last`.
  PolicyVMRetentionMonthly({
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

  factory PolicyVMRetentionMonthly.fromMap(Map<String, dynamic> map) {
    return PolicyVMRetentionMonthly(
      count: (map['count'] as int).input(),
      days: map['days'] == null ? null : ((map['days'] as List).cast<int>()).input(),
      includeLastDays: map['includeLastDays'] == null ? null : (map['includeLastDays'] as bool).input(),
      weekdays: map['weekdays'] == null ? null : ((map['weekdays'] as List).cast<String>()).input(),
      weeks: map['weeks'] == null ? null : ((map['weeks'] as List).cast<String>()).input(),
    );
  }
}

