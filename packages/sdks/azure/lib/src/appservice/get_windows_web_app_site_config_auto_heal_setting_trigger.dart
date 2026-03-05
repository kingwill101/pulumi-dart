// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_site_config_auto_heal_setting_trigger_request.dart';
import 'get_windows_web_app_site_config_auto_heal_setting_trigger_slow_request.dart';
import 'get_windows_web_app_site_config_auto_heal_setting_trigger_slow_request_with_path.dart';
import 'get_windows_web_app_site_config_auto_heal_setting_trigger_status_code.dart';

class GetWindowsWebAppSiteConfigAutoHealSettingTrigger {
  /// The amount of Private Memory used.
  final pulumi.Input<int> privateMemoryKb;
  /// A `requests` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest>> requests;
  /// (Optional) One or more `slow_request_with_path` blocks as defined above.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>> slowRequestWithPaths;
  /// A `slow_request` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest>> slowRequests;
  /// A `status_code` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode>> statusCodes;

  /// Creates a new [GetWindowsWebAppSiteConfigAutoHealSettingTrigger].
  /// [privateMemoryKb] The amount of Private Memory used.
  /// [requests] A `requests` block as defined above.
  /// [slowRequestWithPaths] (Optional) One or more `slow_request_with_path` blocks as defined above.
  /// [slowRequests] A `slow_request` block as defined above.
  /// [statusCodes] A `status_code` block as defined above.
  GetWindowsWebAppSiteConfigAutoHealSettingTrigger({
    required this.privateMemoryKb,
    required this.requests,
    required this.slowRequestWithPaths,
    required this.slowRequests,
    required this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateMemoryKb': privateMemoryKb,
      'requests': pulumi.Input.mapInputValue<List<GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest>, List<Map<String, dynamic>>>(requests, (value) => pulumi.Input.encodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slowRequestWithPaths': pulumi.Input.mapInputValue<List<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>, List<Map<String, dynamic>>>(slowRequestWithPaths, (value) => pulumi.Input.encodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slowRequests': pulumi.Input.mapInputValue<List<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest>, List<Map<String, dynamic>>>(slowRequests, (value) => pulumi.Input.encodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statusCodes': pulumi.Input.mapInputValue<List<GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode>, List<Map<String, dynamic>>>(statusCodes, (value) => pulumi.Input.encodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWindowsWebAppSiteConfigAutoHealSettingTrigger.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigAutoHealSettingTrigger(
      privateMemoryKb: pulumi.Input.fromValue(map['privateMemoryKb'] as int),
      requests: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest>(map['requests']!, (value) => GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest.fromMap((value as Map).cast<String, dynamic>()))),
      slowRequestWithPaths: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>(map['slowRequestWithPaths']!, (value) => GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath.fromMap((value as Map).cast<String, dynamic>()))),
      slowRequests: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest>(map['slowRequests']!, (value) => GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest.fromMap((value as Map).cast<String, dynamic>()))),
      statusCodes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode>(map['statusCodes']!, (value) => GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

