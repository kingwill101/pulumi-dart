// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest {
  /// The number of occurrences of the defined `statusCode` in the specified `interval` on which to trigger this rule.
  final pulumi.Input<int> count;
  /// The time interval in the form `hh:mm:ss`.
  final pulumi.Input<String> interval;
  /// (Required) The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  final pulumi.Input<String> timeTaken;

  /// Creates a new [GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest].
  /// [count] The number of occurrences of the defined `statusCode` in the specified `interval` on which to trigger this rule.
  /// [interval] The time interval in the form `hh:mm:ss`.
  /// [timeTaken] (Required) The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  const GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest({
    required this.count,
    required this.interval,
    required this.timeTaken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'interval': interval,
      'timeTaken': timeTaken,
    };
  }

  factory GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest(
      count: pulumi.Input.fromValue(map['count'] as int),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      timeTaken: pulumi.Input.fromValue(map['timeTaken'] as String),
    );
  }
}
