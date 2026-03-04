// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath {
  /// The number of Slow Requests in the time `interval` to trigger this rule.
  final pulumi.Input<int> count;

  /// The time interval in the form `hh:mm:ss`.
  final pulumi.Input<String> interval;

  /// The path for which this slow request rule applies.
  final pulumi.Input<String>? path;

  /// The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  final pulumi.Input<String> timeTaken;

  /// Creates a new [WindowsWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath].
  /// [count] The number of Slow Requests in the time `interval` to trigger this rule.
  /// [interval] The time interval in the form `hh:mm:ss`.
  /// [path] The path for which this slow request rule applies.
  /// [timeTaken] The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  WindowsWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath({
    required this.count,
    required this.interval,
    this.path,
    required this.timeTaken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'interval': interval,
      'path': ?path,
      'timeTaken': timeTaken,
    };
  }

  factory WindowsWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath.fromMap(
    Map<String, dynamic> map,
  ) {
    return WindowsWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath(
      count: pulumi.Input.fromValue(map['count'] as int),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeTaken: pulumi.Input.fromValue(map['timeTaken'] as String),
    );
  }
}
