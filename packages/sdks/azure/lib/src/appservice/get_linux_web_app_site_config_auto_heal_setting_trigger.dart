// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_site_config_auto_heal_setting_trigger_request.dart';
import 'get_linux_web_app_site_config_auto_heal_setting_trigger_slow_request.dart';
import 'get_linux_web_app_site_config_auto_heal_setting_trigger_slow_request_with_path.dart';
import 'get_linux_web_app_site_config_auto_heal_setting_trigger_status_code.dart';

class GetLinuxWebAppSiteConfigAutoHealSettingTrigger {
  /// A `requests` block as defined above.
  final List<GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest> requests;
  /// (Optional) One or more `slow_request_with_path` blocks as defined above.
  final List<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath> slowRequestWithPaths;
  /// A `slow_request` block as defined above.
  final List<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest>? slowRequests;
  /// A `status_code` block as defined above.
  final List<GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode> statusCodes;

  /// Creates a new [GetLinuxWebAppSiteConfigAutoHealSettingTrigger].
  /// [requests] A `requests` block as defined above.
  /// [slowRequestWithPaths] (Optional) One or more `slow_request_with_path` blocks as defined above.
  /// [slowRequests] A `slow_request` block as defined above.
  /// [statusCodes] A `status_code` block as defined above.
  GetLinuxWebAppSiteConfigAutoHealSettingTrigger({
    required this.requests,
    required this.slowRequestWithPaths,
    this.slowRequests,
    required this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requests': pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'slowRequestWithPaths': pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath, Map<String, dynamic>>(slowRequestWithPaths, (value) => value.toMap()),
      'slowRequests': ?slowRequests == null ? null : pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest, Map<String, dynamic>>(slowRequests!, (value) => value.toMap()),
      'statusCodes': pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode, Map<String, dynamic>>(statusCodes, (value) => value.toMap()),
    };
  }

  factory GetLinuxWebAppSiteConfigAutoHealSettingTrigger.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigAutoHealSettingTrigger(
      requests: pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest>(map['requests'], (value) => GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest.fromMap((value as Map).cast<String, dynamic>())),
      slowRequestWithPaths: pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>(map['slowRequestWithPaths'], (value) => GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath.fromMap((value as Map).cast<String, dynamic>())),
      slowRequests: map['slowRequests'] == null ? null : pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest>(map['slowRequests'], (value) => GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest.fromMap((value as Map).cast<String, dynamic>())),
      statusCodes: pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode>(map['statusCodes'], (value) => GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

