// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode {
  /// The number of occurrences of the defined `status_code` in the specified `interval` on which to trigger this rule.
  final int count;
  /// The time interval in the form `hh:mm:ss`.
  final String interval;
  /// The path to which this rule status code applies.
  final String path;
  /// The status code or range for this rule.
  final String statusCodeRange;
  /// The Request Sub Status of the Status Code.
  final int subStatus;
  /// The Win32 Status Code of the Request.
  final int win32StatusCode;

  /// Creates a new [GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode].
  /// [count] The number of occurrences of the defined `status_code` in the specified `interval` on which to trigger this rule.
  /// [interval] The time interval in the form `hh:mm:ss`.
  /// [path] The path to which this rule status code applies.
  /// [statusCodeRange] The status code or range for this rule.
  /// [subStatus] The Request Sub Status of the Status Code.
  /// [win32StatusCode] The Win32 Status Code of the Request.
  GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode({
    required this.count,
    required this.interval,
    required this.path,
    required this.statusCodeRange,
    required this.subStatus,
    required this.win32StatusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'interval': interval,
      'path': path,
      'statusCodeRange': statusCodeRange,
      'subStatus': subStatus,
      'win32StatusCode': win32StatusCode,
    };
  }

  factory GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode(
      count: map['count'] as int,
      interval: map['interval'] as String,
      path: map['path'] as String,
      statusCodeRange: map['statusCodeRange'] as String,
      subStatus: map['subStatus'] as int,
      win32StatusCode: map['win32StatusCode'] as int,
    );
  }
}

