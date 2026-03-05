// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath {
  /// The number of occurrences of the defined `status_code` in the specified `interval` on which to trigger this rule.
  final pulumi.Input<int> count;
  /// The time interval in the form `hh:mm:ss`.
  final pulumi.Input<String> interval;
  /// The path to which this rule status code applies.
  final pulumi.Input<String> path;
  /// (Required) The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  final pulumi.Input<String> timeTaken;

  /// Creates a new [GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath].
  /// [count] The number of occurrences of the defined `status_code` in the specified `interval` on which to trigger this rule.
  /// [interval] The time interval in the form `hh:mm:ss`.
  /// [path] The path to which this rule status code applies.
  /// [timeTaken] (Required) The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath({
    required this.count,
    required this.interval,
    required this.path,
    required this.timeTaken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'interval': interval,
      'path': path,
      'timeTaken': timeTaken,
    };
  }

  factory GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath(
      count: pulumi.Input.fromValue(map['count'] as int),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      timeTaken: pulumi.Input.fromValue(map['timeTaken'] as String),
    );
  }
}

