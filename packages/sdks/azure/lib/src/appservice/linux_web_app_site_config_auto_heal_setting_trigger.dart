// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_site_config_auto_heal_setting_trigger_requests.dart';
import 'linux_web_app_site_config_auto_heal_setting_trigger_slow_request.dart';
import 'linux_web_app_site_config_auto_heal_setting_trigger_slow_request_with_path.dart';
import 'linux_web_app_site_config_auto_heal_setting_trigger_status_code.dart';

class LinuxWebAppSiteConfigAutoHealSettingTrigger {
  /// A `requests` block as defined above.
  final pulumi.Input<LinuxWebAppSiteConfigAutoHealSettingTriggerRequests>? requests;
  /// A `slow_request` blocks as defined above.
  final pulumi.Input<LinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest>? slowRequest;
  /// One or more `slow_request_with_path` blocks as defined above.
  final pulumi.Input<List<LinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>>? slowRequestWithPaths;
  /// One or more `status_code` blocks as defined above.
  final pulumi.Input<List<LinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode>>? statusCodes;

  /// Creates a new [LinuxWebAppSiteConfigAutoHealSettingTrigger].
  /// [requests] A `requests` block as defined above.
  /// [slowRequest] A `slow_request` blocks as defined above.
  /// [slowRequestWithPaths] One or more `slow_request_with_path` blocks as defined above.
  /// [statusCodes] One or more `status_code` blocks as defined above.
  LinuxWebAppSiteConfigAutoHealSettingTrigger({
    this.requests,
    this.slowRequest,
    this.slowRequestWithPaths,
    this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requests': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSiteConfigAutoHealSettingTriggerRequests, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'slowRequest': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest, Map<String, dynamic>>(slowRequest, (value) => value.toMap()),
      'slowRequestWithPaths': ?pulumi.Input.mapOptionalInputValue<List<LinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>, List<Map<String, dynamic>>>(slowRequestWithPaths, (value) => pulumi.Input.encodeList<LinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statusCodes': ?pulumi.Input.mapOptionalInputValue<List<LinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode>, List<Map<String, dynamic>>>(statusCodes, (value) => pulumi.Input.encodeList<LinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LinuxWebAppSiteConfigAutoHealSettingTrigger.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSiteConfigAutoHealSettingTrigger(
      requests: map['requests'] == null ? null : (LinuxWebAppSiteConfigAutoHealSettingTriggerRequests.fromMap((map['requests'] as Map).cast<String, dynamic>())).input(),
      slowRequest: map['slowRequest'] == null ? null : (LinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest.fromMap((map['slowRequest'] as Map).cast<String, dynamic>())).input(),
      slowRequestWithPaths: map['slowRequestWithPaths'] == null ? null : (pulumi.Input.decodeList<LinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>(map['slowRequestWithPaths'], (value) => LinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statusCodes: map['statusCodes'] == null ? null : (pulumi.Input.decodeList<LinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode>(map['statusCodes'], (value) => LinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

