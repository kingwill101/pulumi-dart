// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath {
  /// The number of Slow Requests in the time `interval` to trigger this rule.
  final pulumi.Input<int> count;
  /// The time interval in the form `hh:mm:ss`.
  final pulumi.Input<String> interval;
  /// The path for which this slow request rule applies.
  final pulumi.Input<String>? path;
  /// The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  final pulumi.Input<String> timeTaken;

  /// Creates a new [LinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath].
  /// [count] The number of Slow Requests in the time `interval` to trigger this rule.
  /// [interval] The time interval in the form `hh:mm:ss`.
  /// [path] The path for which this slow request rule applies.
  /// [timeTaken] The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  LinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath({
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

  factory LinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath(
      count: (map['count'] as int).input(),
      interval: (map['interval'] as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      timeTaken: (map['timeTaken'] as String).input(),
    );
  }
}

