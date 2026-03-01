// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aad_diagnostic_setting_enabled_log.dart';

/// Input properties used for looking up and filtering AadDiagnosticSetting resources.
class AadDiagnosticSettingState {
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

  /// Creates a new [AadDiagnosticSettingState].
  /// [enabledLogs] One or more `enabled_log` blocks as defined below.
  /// [eventhubAuthorizationRuleId] Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. Changing this forces a new resource to be created.
  /// [eventhubName] Specifies the name of the Event Hub where Diagnostics Data should be sent. If not specified, the default Event Hub will be used. Changing this forces a new resource to be created.
  /// [logAnalyticsWorkspaceId] Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent.
  /// [name] The name which should be used for this Monitor Azure Active Directory Diagnostic Setting. Changing this forces a new Monitor Azure Active Directory Diagnostic Setting to be created.
  /// [storageAccountId] The ID of the Storage Account where logs should be sent. Changing this forces a new resource to be created.
  AadDiagnosticSettingState({
    pulumi.Output<List<AadDiagnosticSettingEnabledLog>>? enabledLogs,
    pulumi.Output<String>? eventhubAuthorizationRuleId,
    pulumi.Output<String>? eventhubName,
    pulumi.Output<String>? logAnalyticsWorkspaceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? storageAccountId,
  }) :
      enabledLogs = pulumi.Input.asOptionalInput<List<AadDiagnosticSettingEnabledLog>>(enabledLogs),
      eventhubAuthorizationRuleId = pulumi.Input.asOptionalInput<String>(eventhubAuthorizationRuleId),
      eventhubName = pulumi.Input.asOptionalInput<String>(eventhubName),
      logAnalyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId);

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

  factory AadDiagnosticSettingState.fromMap(Map<String, dynamic> map) {
    return AadDiagnosticSettingState(
      enabledLogs: map['enabledLogs'] == null ? null : pulumi.Output.create<List<AadDiagnosticSettingEnabledLog>>(pulumi.Input.decodeList<AadDiagnosticSettingEnabledLog>(map['enabledLogs'], (value) => AadDiagnosticSettingEnabledLog.fromMap((value as Map).cast<String, dynamic>()))),
      eventhubAuthorizationRuleId: map['eventhubAuthorizationRuleId'] == null ? null : pulumi.Output.create<String>(map['eventhubAuthorizationRuleId'] as String),
      eventhubName: map['eventhubName'] == null ? null : pulumi.Output.create<String>(map['eventhubName'] as String),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
    );
  }
}

