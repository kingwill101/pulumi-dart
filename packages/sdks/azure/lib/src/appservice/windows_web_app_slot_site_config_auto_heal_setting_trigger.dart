// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_slot_site_config_auto_heal_setting_trigger_requests.dart';
import 'windows_web_app_slot_site_config_auto_heal_setting_trigger_slow_request.dart';
import 'windows_web_app_slot_site_config_auto_heal_setting_trigger_slow_request_with_path.dart';
import 'windows_web_app_slot_site_config_auto_heal_setting_trigger_status_code.dart';

class WindowsWebAppSlotSiteConfigAutoHealSettingTrigger {
  /// The amount of Private Memory to be consumed for this rule to trigger. Possible values are between `102400` and `13631488`.
  final pulumi.Input<int?>? privateMemoryKb;
  /// A `requests` block as defined above.
  final pulumi.Input<WindowsWebAppSlotSiteConfigAutoHealSettingTriggerRequests?>? requests;
  /// A `slowRequest` block as defined above.
  final pulumi.Input<WindowsWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequest?>? slowRequest;
  /// One or more `slowRequestWithPath` blocks as defined above.
  final pulumi.Input<List<WindowsWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath>?>? slowRequestWithPaths;
  /// One or more `statusCode` blocks as defined above.
  final pulumi.Input<List<WindowsWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode>?>? statusCodes;

  /// Creates a new [WindowsWebAppSlotSiteConfigAutoHealSettingTrigger].
  /// [privateMemoryKb] The amount of Private Memory to be consumed for this rule to trigger. Possible values are between `102400` and `13631488`.
  /// [requests] A `requests` block as defined above.
  /// [slowRequest] A `slowRequest` block as defined above.
  /// [slowRequestWithPaths] One or more `slowRequestWithPath` blocks as defined above.
  /// [statusCodes] One or more `statusCode` blocks as defined above.
  const WindowsWebAppSlotSiteConfigAutoHealSettingTrigger({
    this.privateMemoryKb,
    this.requests,
    this.slowRequest,
    this.slowRequestWithPaths,
    this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateMemoryKb': ?privateMemoryKb,
      'requests': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotSiteConfigAutoHealSettingTriggerRequests, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'slowRequest': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequest, Map<String, dynamic>>(slowRequest, (value) => value.toMap()),
      'slowRequestWithPaths': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath>, List<Map<String, dynamic>>>(slowRequestWithPaths, (value) => pulumi.Input.encodeList<WindowsWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statusCodes': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode>, List<Map<String, dynamic>>>(statusCodes, (value) => pulumi.Input.encodeList<WindowsWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WindowsWebAppSlotSiteConfigAutoHealSettingTrigger.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotSiteConfigAutoHealSettingTrigger(
      privateMemoryKb: (() { final guardedValue = map['privateMemoryKb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppSlotSiteConfigAutoHealSettingTriggerRequests.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      slowRequest: (() { final guardedValue = map['slowRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      slowRequestWithPaths: (() { final guardedValue = map['slowRequestWithPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath>(guardedValue, (value) => WindowsWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statusCodes: (() { final guardedValue = map['statusCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode>(guardedValue, (value) => WindowsWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
