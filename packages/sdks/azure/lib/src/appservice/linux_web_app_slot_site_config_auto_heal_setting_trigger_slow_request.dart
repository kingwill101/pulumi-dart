// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequest {
  /// The number of Slow Requests in the time `interval` to trigger this rule.
  final pulumi.Input<int> count;

  /// The time interval in the form `hh:mm:ss`.
  final pulumi.Input<String> interval;

  /// The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  final pulumi.Input<String> timeTaken;

  /// Creates a new [LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequest].
  /// [count] The number of Slow Requests in the time `interval` to trigger this rule.
  /// [interval] The time interval in the form `hh:mm:ss`.
  /// [timeTaken] The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequest({
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

  factory LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequest.fromMap(
    Map<String, dynamic> map,
  ) {
    return LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequest(
      count: pulumi.Input.fromValue(map['count'] as int),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      timeTaken: pulumi.Input.fromValue(map['timeTaken'] as String),
    );
  }
}
