// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest {
  /// The number of occurrences of the defined `status_code` in the specified `interval` on which to trigger this rule.
  final int count;
  /// The time interval in the form `hh:mm:ss`.
  final String interval;

  /// Creates a new [GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest].
  /// [count] The number of occurrences of the defined `status_code` in the specified `interval` on which to trigger this rule.
  /// [interval] The time interval in the form `hh:mm:ss`.
  GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest({
    required this.count,
    required this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'interval': interval,
    };
  }

  factory GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest(
      count: map['count'] as int,
      interval: map['interval'] as String,
    );
  }
}

