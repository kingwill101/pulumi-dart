// ignore_for_file: unused_element, unnecessary_cast


class LinuxWebAppSiteConfigAutoHealSettingTriggerRequests {
  /// The number of requests in the specified `interval` to trigger this rule.
  final int count;
  /// The interval in `hh:mm:ss`.
  final String interval;

  /// Creates a new [LinuxWebAppSiteConfigAutoHealSettingTriggerRequests].
  /// [count] The number of requests in the specified `interval` to trigger this rule.
  /// [interval] The interval in `hh:mm:ss`.
  LinuxWebAppSiteConfigAutoHealSettingTriggerRequests({
    required this.count,
    required this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'interval': interval,
    };
  }

  factory LinuxWebAppSiteConfigAutoHealSettingTriggerRequests.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSiteConfigAutoHealSettingTriggerRequests(
      count: map['count'] as int,
      interval: map['interval'] as String,
    );
  }
}

