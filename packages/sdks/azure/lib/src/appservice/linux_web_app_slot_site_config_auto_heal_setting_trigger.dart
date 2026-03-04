// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_slot_site_config_auto_heal_setting_trigger_requests.dart';
import 'linux_web_app_slot_site_config_auto_heal_setting_trigger_slow_request.dart';
import 'linux_web_app_slot_site_config_auto_heal_setting_trigger_slow_request_with_path.dart';
import 'linux_web_app_slot_site_config_auto_heal_setting_trigger_status_code.dart';

class LinuxWebAppSlotSiteConfigAutoHealSettingTrigger {
  /// A `requests` block as defined above.
  final pulumi.Input<LinuxWebAppSlotSiteConfigAutoHealSettingTriggerRequests>?
  requests;

  /// A `slow_request` block as defined above.
  final pulumi.Input<
    LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequest
  >?
  slowRequest;

  /// One or more `slow_request_with_path` blocks as defined above.
  final pulumi.Input<
    List<LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath>
  >?
  slowRequestWithPaths;

  /// One or more `status_code` blocks as defined above.
  final pulumi.Input<
    List<LinuxWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode>
  >?
  statusCodes;

  /// Creates a new [LinuxWebAppSlotSiteConfigAutoHealSettingTrigger].
  /// [requests] A `requests` block as defined above.
  /// [slowRequest] A `slow_request` block as defined above.
  /// [slowRequestWithPaths] One or more `slow_request_with_path` blocks as defined above.
  /// [statusCodes] One or more `status_code` blocks as defined above.
  LinuxWebAppSlotSiteConfigAutoHealSettingTrigger({
    this.requests,
    this.slowRequest,
    this.slowRequestWithPaths,
    this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requests':
          ?pulumi.Input.mapOptionalInputValue<
            LinuxWebAppSlotSiteConfigAutoHealSettingTriggerRequests,
            Map<String, dynamic>
          >(requests, (value) => value.toMap()),
      'slowRequest':
          ?pulumi.Input.mapOptionalInputValue<
            LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequest,
            Map<String, dynamic>
          >(slowRequest, (value) => value.toMap()),
      'slowRequestWithPaths':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath
            >,
            List<Map<String, dynamic>>
          >(
            slowRequestWithPaths,
            (value) =>
                pulumi.Input.encodeList<
                  LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'statusCodes':
          ?pulumi.Input.mapOptionalInputValue<
            List<LinuxWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode>,
            List<Map<String, dynamic>>
          >(
            statusCodes,
            (value) =>
                pulumi.Input.encodeList<
                  LinuxWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory LinuxWebAppSlotSiteConfigAutoHealSettingTrigger.fromMap(
    Map<String, dynamic> map,
  ) {
    return LinuxWebAppSlotSiteConfigAutoHealSettingTrigger(
      requests: (() {
        final guardedValue = map['requests'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinuxWebAppSlotSiteConfigAutoHealSettingTriggerRequests.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      slowRequest: (() {
        final guardedValue = map['slowRequest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequest.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      slowRequestWithPaths: (() {
        final guardedValue = map['slowRequestWithPaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath
          >(
            guardedValue,
            (value) =>
                LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      statusCodes: (() {
        final guardedValue = map['statusCodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            LinuxWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode
          >(
            guardedValue,
            (value) =>
                LinuxWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
