// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSiteConfigAutoHealSettingTriggerRequests {
  /// The number of requests in the specified `interval` to trigger this rule.
  final pulumi.Input<int> count;
  /// The interval in `hh:mm:ss`.
  final pulumi.Input<String> interval;

  /// Creates a new [WindowsWebAppSiteConfigAutoHealSettingTriggerRequests].
  /// [count] The number of requests in the specified `interval` to trigger this rule.
  /// [interval] The interval in `hh:mm:ss`.
  const WindowsWebAppSiteConfigAutoHealSettingTriggerRequests({
    required this.count,
    required this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'interval': interval,
    };
  }

  factory WindowsWebAppSiteConfigAutoHealSettingTriggerRequests.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteConfigAutoHealSettingTriggerRequests(
      count: pulumi.Input.fromValue(map['count'] as int),
      interval: pulumi.Input.fromValue(map['interval'] as String),
    );
  }
}
