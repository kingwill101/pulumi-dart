// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest {
  /// The number of occurrences of the defined `statusCode` in the specified `interval` on which to trigger this rule.
  final pulumi.Input<int> count;
  /// The time interval in the form `hh:mm:ss`.
  final pulumi.Input<String> interval;

  /// Creates a new [GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest].
  /// [count] The number of occurrences of the defined `statusCode` in the specified `interval` on which to trigger this rule.
  /// [interval] The time interval in the form `hh:mm:ss`.
  const GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest({
    required this.count,
    required this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'interval': interval,
    };
  }

  factory GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest(
      count: pulumi.Input.fromValue(map['count'] as int),
      interval: pulumi.Input.fromValue(map['interval'] as String),
    );
  }
}
