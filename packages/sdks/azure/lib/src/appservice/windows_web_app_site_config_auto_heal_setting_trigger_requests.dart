// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSiteConfigAutoHealSettingTriggerRequests {
  /// The number of requests in the specified `interval` to trigger this rule.
  final int count;
  /// The interval in `hh:mm:ss`.
  final String interval;

  /// Creates a new [WindowsWebAppSiteConfigAutoHealSettingTriggerRequests].
  /// [count] The number of requests in the specified `interval` to trigger this rule.
  /// [interval] The interval in `hh:mm:ss`.
  WindowsWebAppSiteConfigAutoHealSettingTriggerRequests({
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
      count: map['count'] as int,
      interval: map['interval'] as String,
    );
  }
}

