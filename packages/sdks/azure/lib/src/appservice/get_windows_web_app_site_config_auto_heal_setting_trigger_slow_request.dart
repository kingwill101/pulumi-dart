// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest {
  /// The number of occurrences of the defined `status_code` in the specified `interval` on which to trigger this rule.
  final int count;
  /// The time interval in the form `hh:mm:ss`.
  final String interval;
  /// (Required) The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  final String timeTaken;

  /// Creates a new [GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest].
  /// [count] The number of occurrences of the defined `status_code` in the specified `interval` on which to trigger this rule.
  /// [interval] The time interval in the form `hh:mm:ss`.
  /// [timeTaken] (Required) The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest({
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

  factory GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest(
      count: map['count'] as int,
      interval: map['interval'] as String,
      timeTaken: map['timeTaken'] as String,
    );
  }
}

