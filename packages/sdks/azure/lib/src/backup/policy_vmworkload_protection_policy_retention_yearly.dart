// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMWorkloadProtectionPolicyRetentionYearly {
  /// The number of yearly backups to keep. Possible values are between `1` and `99`
  final pulumi.Input<int> count;

  /// The retention schedule format type for yearly retention policy. Possible values are `Daily` and `Weekly`.
  final pulumi.Input<String> formatType;

  /// The monthday backups to retain. Possible values are between `0` and `28`.
  final pulumi.Input<List<int>>? monthdays;

  /// The months of the year to retain backups of. Possible values are `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November` and `December`.
  final pulumi.Input<List<String>> months;

  /// The weekday backups to retain. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  final pulumi.Input<List<String>>? weekdays;

  /// The weeks of the month to retain backups of. Possible values are `First`, `Second`, `Third`, `Fourth`, `Last`.
  final pulumi.Input<List<String>>? weeks;

  /// Creates a new [PolicyVMWorkloadProtectionPolicyRetentionYearly].
  /// [count] The number of yearly backups to keep. Possible values are between `1` and `99`
  /// [formatType] The retention schedule format type for yearly retention policy. Possible values are `Daily` and `Weekly`.
  /// [monthdays] The monthday backups to retain. Possible values are between `0` and `28`.
  /// [months] The months of the year to retain backups of. Possible values are `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November` and `December`.
  /// [weekdays] The weekday backups to retain. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  /// [weeks] The weeks of the month to retain backups of. Possible values are `First`, `Second`, `Third`, `Fourth`, `Last`.
  PolicyVMWorkloadProtectionPolicyRetentionYearly({
    required this.count,
    required this.formatType,
    this.monthdays,
    required this.months,
    this.weekdays,
    this.weeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'formatType': formatType,
      'monthdays': ?monthdays,
      'months': months,
      'weekdays': ?weekdays,
      'weeks': ?weeks,
    };
  }

  factory PolicyVMWorkloadProtectionPolicyRetentionYearly.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyVMWorkloadProtectionPolicyRetentionYearly(
      count: pulumi.Input.fromValue(map['count'] as int),
      formatType: pulumi.Input.fromValue(map['formatType'] as String),
      monthdays: (() {
        final guardedValue = map['monthdays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      months: pulumi.Input.fromValue((map['months'] as List).cast<String>()),
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
