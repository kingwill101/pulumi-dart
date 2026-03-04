// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMWorkloadProtectionPolicyRetentionMonthly {
  /// The number of monthly backups to keep. Must be between `1` and `1188`.
  final pulumi.Input<int> count;

  /// The retention schedule format type for monthly retention policy. Possible values are `Daily` and `Weekly`.
  final pulumi.Input<String> formatType;

  /// The monthday backups to retain. Possible values are between `0` and `28`.
  final pulumi.Input<List<int>>? monthdays;

  /// The weekday backups to retain. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  final pulumi.Input<List<String>>? weekdays;

  /// The weeks of the month to retain backups of. Possible values are `First`, `Second`, `Third`, `Fourth` and `Last`.
  final pulumi.Input<List<String>>? weeks;

  /// Creates a new [PolicyVMWorkloadProtectionPolicyRetentionMonthly].
  /// [count] The number of monthly backups to keep. Must be between `1` and `1188`.
  /// [formatType] The retention schedule format type for monthly retention policy. Possible values are `Daily` and `Weekly`.
  /// [monthdays] The monthday backups to retain. Possible values are between `0` and `28`.
  /// [weekdays] The weekday backups to retain. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  /// [weeks] The weeks of the month to retain backups of. Possible values are `First`, `Second`, `Third`, `Fourth` and `Last`.
  PolicyVMWorkloadProtectionPolicyRetentionMonthly({
    required this.count,
    required this.formatType,
    this.monthdays,
    this.weekdays,
    this.weeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'formatType': formatType,
      'monthdays': ?monthdays,
      'weekdays': ?weekdays,
      'weeks': ?weeks,
    };
  }

  factory PolicyVMWorkloadProtectionPolicyRetentionMonthly.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyVMWorkloadProtectionPolicyRetentionMonthly(
      count: pulumi.Input.fromValue(map['count'] as int),
      formatType: pulumi.Input.fromValue(map['formatType'] as String),
      monthdays: (() {
        final guardedValue = map['monthdays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      weekdays: (() {
        final guardedValue = map['weekdays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      weeks: (() {
        final guardedValue = map['weeks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
