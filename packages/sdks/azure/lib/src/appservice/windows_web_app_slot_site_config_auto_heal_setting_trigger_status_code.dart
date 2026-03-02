// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode {
  /// The number of occurrences of the defined `status_code` in the specified `interval` on which to trigger this rule.
  final pulumi.Input<int> count;
  /// The time interval in the form `hh:mm:ss`.
  final pulumi.Input<String> interval;
  /// The path to which this rule status code applies.
  final pulumi.Input<String>? path;
  /// The status code for this rule, accepts single status codes and status code ranges. e.g. `500` or `400-499`. Possible values are integers between `101` and `599`
  final pulumi.Input<String> statusCodeRange;
  /// The Request Sub Status of the Status Code.
  final pulumi.Input<int>? subStatus;
  /// The Win32 Status Code of the Request.
  final pulumi.Input<int>? win32StatusCode;

  /// Creates a new [WindowsWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode].
  /// [count] The number of occurrences of the defined `status_code` in the specified `interval` on which to trigger this rule.
  /// [interval] The time interval in the form `hh:mm:ss`.
  /// [path] The path to which this rule status code applies.
  /// [statusCodeRange] The status code for this rule, accepts single status codes and status code ranges. e.g. `500` or `400-499`. Possible values are integers between `101` and `599`
  /// [subStatus] The Request Sub Status of the Status Code.
  /// [win32StatusCode] The Win32 Status Code of the Request.
  WindowsWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode({
    required this.count,
    required this.interval,
    this.path,
    required this.statusCodeRange,
    this.subStatus,
    this.win32StatusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'interval': interval,
      'path': ?path,
      'statusCodeRange': statusCodeRange,
      'subStatus': ?subStatus,
      'win32StatusCode': ?win32StatusCode,
    };
  }

  factory WindowsWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode(
      count: (map['count'] as int).input(),
      interval: (map['interval'] as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      statusCodeRange: (map['statusCodeRange'] as String).input(),
      subStatus: map['subStatus'] == null ? null : (map['subStatus']! as int).input(),
      win32StatusCode: map['win32StatusCode'] == null ? null : (map['win32StatusCode']! as int).input(),
    );
  }
}

