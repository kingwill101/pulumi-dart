// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyFileShareRetentionYearly {
  /// The number of yearly backups to keep. Must be between `1` and `10`
  final pulumi.Input<int> count;
  /// The days of the month to retain backups of. Must be between `1` and `31`.
  final pulumi.Input<List<int>>? days;
  /// Including the last day of the month, default to `false`.
  ///
  /// > **Note:** Either `weekdays` and `weeks` or `days` and `include_last_days` must be specified.
  final pulumi.Input<bool>? includeLastDays;
  /// The months of the year to retain backups of. Must be one of `January`, `February`, `March`, `April`, `May`, `June`, `July`, `Augest`, `September`, `October`, `November` and `December`.
  final pulumi.Input<List<String>> months;
  /// The weekday backups to retain . Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  final pulumi.Input<List<String>>? weekdays;
  /// The weeks of the month to retain backups of. Must be one of `First`, `Second`, `Third`, `Fourth`, `Last`.
  final pulumi.Input<List<String>>? weeks;

  /// Creates a new [PolicyFileShareRetentionYearly].
  /// [count] The number of yearly backups to keep. Must be between `1` and `10`
  /// [days] The days of the month to retain backups of. Must be between `1` and `31`.
  /// [includeLastDays] Including the last day of the month, default to `false`.
  /// [months] The months of the year to retain backups of. Must be one of `January`, `February`, `March`, `April`, `May`, `June`, `July`, `Augest`, `September`, `October`, `November` and `December`.
  /// [weekdays] The weekday backups to retain . Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  /// [weeks] The weeks of the month to retain backups of. Must be one of `First`, `Second`, `Third`, `Fourth`, `Last`.
  PolicyFileShareRetentionYearly({
    required this.count,
    this.days,
    this.includeLastDays,
    required this.months,
    this.weekdays,
    this.weeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'days': ?days,
      'includeLastDays': ?includeLastDays,
      'months': months,
      'weekdays': ?weekdays,
      'weeks': ?weeks,
    };
  }

  factory PolicyFileShareRetentionYearly.fromMap(Map<String, dynamic> map) {
    return PolicyFileShareRetentionYearly(
      count: (map['count'] as int).input(),
      days: map['days'] == null ? null : ((map['days'] as List).cast<int>()).input(),
      includeLastDays: map['includeLastDays'] == null ? null : (map['includeLastDays'] as bool).input(),
      months: ((map['months'] as List).cast<String>()).input(),
      weekdays: map['weekdays'] == null ? null : ((map['weekdays'] as List).cast<String>()).input(),
      weeks: map['weeks'] == null ? null : ((map['weeks'] as List).cast<String>()).input(),
    );
  }
}

