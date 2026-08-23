// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMRetentionMonthly {
  /// The number of monthly backups to keep. Must be between `1` and `9999`
  final pulumi.Input<int> count;
  /// The days of the month to retain backups of. Must be between `1` and `31`.
  final pulumi.Input<List<int>>? days;
  /// Including the last day of the month, default to `false`.
  ///
  /// &gt; **Note:** Either `weekdays` and `weeks` or `days` and `includeLastDays` must be specified.
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
  const PolicyVMRetentionMonthly({
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
      count: pulumi.Input.fromValue(map['count'] as int),
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      includeLastDays: (() { final guardedValue = map['includeLastDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      weekdays: (() { final guardedValue = map['weekdays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      weeks: (() { final guardedValue = map['weeks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
