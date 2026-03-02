// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_site_config_auto_heal_setting_trigger_requests.dart';
import 'windows_web_app_site_config_auto_heal_setting_trigger_slow_request.dart';
import 'windows_web_app_site_config_auto_heal_setting_trigger_slow_request_with_path.dart';
import 'windows_web_app_site_config_auto_heal_setting_trigger_status_code.dart';

class WindowsWebAppSiteConfigAutoHealSettingTrigger {
  /// The amount of Private Memory to be consumed for this rule to trigger. Possible values are between `102400` and `13631488`.
  final pulumi.Input<int>? privateMemoryKb;
  /// A `requests` block as defined above.
  final pulumi.Input<WindowsWebAppSiteConfigAutoHealSettingTriggerRequests>? requests;
  /// A `slow_request` block as defined above.
  final pulumi.Input<WindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest>? slowRequest;
  /// One or more `slow_request_with_path` blocks as defined above.
  final pulumi.Input<List<WindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>>? slowRequestWithPaths;
  /// One or more `status_code` blocks as defined above.
  final pulumi.Input<List<WindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode>>? statusCodes;

  /// Creates a new [WindowsWebAppSiteConfigAutoHealSettingTrigger].
  /// [privateMemoryKb] The amount of Private Memory to be consumed for this rule to trigger. Possible values are between `102400` and `13631488`.
  /// [requests] A `requests` block as defined above.
  /// [slowRequest] A `slow_request` block as defined above.
  /// [slowRequestWithPaths] One or more `slow_request_with_path` blocks as defined above.
  /// [statusCodes] One or more `status_code` blocks as defined above.
  WindowsWebAppSiteConfigAutoHealSettingTrigger({
    this.privateMemoryKb,
    this.requests,
    this.slowRequest,
    this.slowRequestWithPaths,
    this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateMemoryKb': ?privateMemoryKb,
      'requests': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSiteConfigAutoHealSettingTriggerRequests, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'slowRequest': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest, Map<String, dynamic>>(slowRequest, (value) => value.toMap()),
      'slowRequestWithPaths': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>, List<Map<String, dynamic>>>(slowRequestWithPaths, (value) => pulumi.Input.encodeList<WindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statusCodes': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode>, List<Map<String, dynamic>>>(statusCodes, (value) => pulumi.Input.encodeList<WindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WindowsWebAppSiteConfigAutoHealSettingTrigger.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteConfigAutoHealSettingTrigger(
      privateMemoryKb: map['privateMemoryKb'] == null ? null : (map['privateMemoryKb']! as int).input(),
      requests: map['requests'] == null ? null : (WindowsWebAppSiteConfigAutoHealSettingTriggerRequests.fromMap((map['requests']! as Map).cast<String, dynamic>())).input(),
      slowRequest: map['slowRequest'] == null ? null : (WindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest.fromMap((map['slowRequest']! as Map).cast<String, dynamic>())).input(),
      slowRequestWithPaths: map['slowRequestWithPaths'] == null ? null : (pulumi.Input.decodeList<WindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>(map['slowRequestWithPaths']!, (value) => WindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statusCodes: map['statusCodes'] == null ? null : (pulumi.Input.decodeList<WindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode>(map['statusCodes']!, (value) => WindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

