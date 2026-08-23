// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_site_config_auto_heal_setting_trigger_request.dart';
import 'get_linux_web_app_site_config_auto_heal_setting_trigger_slow_request.dart';
import 'get_linux_web_app_site_config_auto_heal_setting_trigger_slow_request_with_path.dart';
import 'get_linux_web_app_site_config_auto_heal_setting_trigger_status_code.dart';

class GetLinuxWebAppSiteConfigAutoHealSettingTrigger {
  /// A `requests` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest>> requests;
  /// (Optional) One or more `slowRequestWithPath` blocks as defined above.
  final pulumi.Input<List<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>> slowRequestWithPaths;
  /// A `slowRequest` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest>>? slowRequests;
  /// A `statusCode` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode>> statusCodes;

  /// Creates a new [GetLinuxWebAppSiteConfigAutoHealSettingTrigger].
  /// [requests] A `requests` block as defined above.
  /// [slowRequestWithPaths] (Optional) One or more `slowRequestWithPath` blocks as defined above.
  /// [slowRequests] A `slowRequest` block as defined above.
  /// [statusCodes] A `statusCode` block as defined above.
  const GetLinuxWebAppSiteConfigAutoHealSettingTrigger({
    required this.requests,
    required this.slowRequestWithPaths,
    this.slowRequests,
    required this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requests': pulumi.Input.mapInputValue<List<GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest>, List<Map<String, dynamic>>>(requests, (value) => pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slowRequestWithPaths': pulumi.Input.mapInputValue<List<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>, List<Map<String, dynamic>>>(slowRequestWithPaths, (value) => pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slowRequests': ?pulumi.Input.mapOptionalInputValue<List<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest>, List<Map<String, dynamic>>>(slowRequests, (value) => pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statusCodes': pulumi.Input.mapInputValue<List<GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode>, List<Map<String, dynamic>>>(statusCodes, (value) => pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetLinuxWebAppSiteConfigAutoHealSettingTrigger.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigAutoHealSettingTrigger(
      requests: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest>(map['requests']!, (value) => GetLinuxWebAppSiteConfigAutoHealSettingTriggerRequest.fromMap((value as Map).cast<String, dynamic>()))),
      slowRequestWithPaths: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>(map['slowRequestWithPaths']!, (value) => GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath.fromMap((value as Map).cast<String, dynamic>()))),
      slowRequests: (() { final guardedValue = map['slowRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest>(guardedValue, (value) => GetLinuxWebAppSiteConfigAutoHealSettingTriggerSlowRequest.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statusCodes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode>(map['statusCodes']!, (value) => GetLinuxWebAppSiteConfigAutoHealSettingTriggerStatusCode.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
