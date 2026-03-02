// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSlotSiteConfigAutoHealSettingTriggerRequests {
  /// The number of requests in the specified `interval` to trigger this rule.
  final pulumi.Input<int> count;
  /// The interval in `hh:mm:ss`.
  final pulumi.Input<String> interval;

  /// Creates a new [LinuxWebAppSlotSiteConfigAutoHealSettingTriggerRequests].
  /// [count] The number of requests in the specified `interval` to trigger this rule.
  /// [interval] The interval in `hh:mm:ss`.
  LinuxWebAppSlotSiteConfigAutoHealSettingTriggerRequests({
    required this.count,
    required this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'interval': interval,
    };
  }

  factory LinuxWebAppSlotSiteConfigAutoHealSettingTriggerRequests.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotSiteConfigAutoHealSettingTriggerRequests(
      count: (map['count'] as int).input(),
      interval: (map['interval'] as String).input(),
    );
  }
}

