// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode {
  /// The number of occurrences of the defined `statusCode` in the specified `interval` on which to trigger this rule.
  final pulumi.Input<int> count;
  /// The time interval in the form `hh:mm:ss`.
  final pulumi.Input<String> interval;
  /// The path to which this rule status code applies.
  final pulumi.Input<String> path;
  /// The status code or range for this rule.
  final pulumi.Input<String> statusCodeRange;
  /// The Request Sub Status of the Status Code.
  final pulumi.Input<int> subStatus;
  /// The Win32 Status Code of the Request.
  final pulumi.Input<int> win32StatusCode;

  /// Creates a new [GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode].
  /// [count] The number of occurrences of the defined `statusCode` in the specified `interval` on which to trigger this rule.
  /// [interval] The time interval in the form `hh:mm:ss`.
  /// [path] The path to which this rule status code applies.
  /// [statusCodeRange] The status code or range for this rule.
  /// [subStatus] The Request Sub Status of the Status Code.
  /// [win32StatusCode] The Win32 Status Code of the Request.
  const GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode({
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

  factory GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode(
      count: pulumi.Input.fromValue((map['count'] as num).toInt()),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      statusCodeRange: pulumi.Input.fromValue(map['statusCodeRange'] as String),
      subStatus: pulumi.Input.fromValue((map['subStatus'] as num).toInt()),
      win32StatusCode: pulumi.Input.fromValue((map['win32StatusCode'] as num).toInt()),
    );
  }
}
