// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aad_diagnostic_setting_enabled_log.dart';

/// {@template pulumi_monitoring_aad_diagnostic_setting_aad_diagnostic_setting_args_doc}
/// The set of arguments for AadDiagnosticSetting.
/// {@endtemplate}
/// {@macro pulumi_monitoring_aad_diagnostic_setting_aad_diagnostic_setting_args_doc}
class AadDiagnosticSettingArgs {
  /// One or more `enabled_log` blocks as defined below.
  final pulumi.Input<List<AadDiagnosticSettingEnabledLog>>? enabledLogs;
  /// Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This can be sourced from the `azure.eventhub.EventHubNamespaceAuthorizationRule` resource and is different from a `azure.eventhub.AuthorizationRule` resource.
  final pulumi.Input<String>? eventhubAuthorizationRuleId;
  /// Specifies the name of the Event Hub where Diagnostics Data should be sent. If not specified, the default Event Hub will be used. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventhubName;
  /// Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// The name which should be used for this Monitor Azure Active Directory Diagnostic Setting. Changing this forces a new Monitor Azure Active Directory Diagnostic Setting to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Storage Account where logs should be sent. Changing this forces a new resource to be created.
  ///
  /// > **Note:** One of `eventhub_authorization_rule_id`, `log_analytics_workspace_id` and `storage_account_id` must be specified.
  final pulumi.Input<String>? storageAccountId;

  /// Creates a new [AadDiagnosticSettingArgs].
  /// [enabledLogs] One or more `enabled_log` blocks as defined below.
  /// [eventhubAuthorizationRuleId] Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. Changing this forces a new resource to be created.
  /// [eventhubName] Specifies the name of the Event Hub where Diagnostics Data should be sent. If not specified, the default Event Hub will be used. Changing this forces a new resource to be created.
  /// [logAnalyticsWorkspaceId] Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent.
  /// [name] The name which should be used for this Monitor Azure Active Directory Diagnostic Setting. Changing this forces a new Monitor Azure Active Directory Diagnostic Setting to be created.
  /// [storageAccountId] The ID of the Storage Account where logs should be sent. Changing this forces a new resource to be created.
  AadDiagnosticSettingArgs({
    this.enabledLogs,
    this.eventhubAuthorizationRuleId,
    this.eventhubName,
    this.logAnalyticsWorkspaceId,
    this.name,
    this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledLogs': ?pulumi.Input.mapOptionalInputValue<List<AadDiagnosticSettingEnabledLog>, List<Map<String, dynamic>>>(enabledLogs, (value) => pulumi.Input.encodeList<AadDiagnosticSettingEnabledLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventhubAuthorizationRuleId': ?eventhubAuthorizationRuleId,
      'eventhubName': ?eventhubName,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory AadDiagnosticSettingArgs.fromMap(Map<String, dynamic> map) {
    return AadDiagnosticSettingArgs(
      enabledLogs: map['enabledLogs'] == null ? null : (pulumi.Input.decodeList<AadDiagnosticSettingEnabledLog>(map['enabledLogs']!, (value) => AadDiagnosticSettingEnabledLog.fromMap((value as Map).cast<String, dynamic>()))).input(),
      eventhubAuthorizationRuleId: map['eventhubAuthorizationRuleId'] == null ? null : (map['eventhubAuthorizationRuleId']! as String).input(),
      eventhubName: map['eventhubName'] == null ? null : (map['eventhubName']! as String).input(),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : (map['logAnalyticsWorkspaceId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId']! as String).input(),
    );
  }
}

