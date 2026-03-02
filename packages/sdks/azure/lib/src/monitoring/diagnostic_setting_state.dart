// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_setting_enabled_log.dart';
import 'diagnostic_setting_enabled_metric.dart';
import 'diagnostic_setting_metric.dart';

/// Input properties used for looking up and filtering DiagnosticSetting resources.
class DiagnosticSettingState {
  /// One or more `enabled_log` blocks as defined below.
  ///
  /// > **Note:** At least one `enabled_log` or `enabled_metric` block must be specified. At least one type of Log or Metric must be enabled.
  final pulumi.Input<List<DiagnosticSettingEnabledLog>>? enabledLogs;
  /// One or more `enabled_metric` blocks as defined below.
  ///
  /// > **Note:** At least one `enabled_log` or `enabled_metric` block must be specified.
  final pulumi.Input<List<DiagnosticSettingEnabledMetric>>? enabledMetrics;
  /// Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data.
  ///
  /// > **NOTE:** This can be sourced from the `azure.eventhub.EventHubNamespaceAuthorizationRule` resource and is different from a `azure.eventhub.AuthorizationRule` resource.
  ///
  /// > **NOTE:** At least one of `eventhub_authorization_rule_id`, `log_analytics_workspace_id`, `partner_solution_id` and `storage_account_id` must be specified.
  final pulumi.Input<String>? eventhubAuthorizationRuleId;
  /// Specifies the name of the Event Hub where Diagnostics Data should be sent.
  ///
  /// > **NOTE:** If this isn't specified then the default Event Hub will be used.
  final pulumi.Input<String>? eventhubName;
  /// Possible values are `AzureDiagnostics` and `Dedicated`. When set to `Dedicated`, logs sent to a Log Analytics workspace will go into resource specific tables, instead of the legacy `AzureDiagnostics` table.
  ///
  /// > **NOTE:** This setting will only have an effect if a `log_analytics_workspace_id` is provided. For some target resource type (e.g., Key Vault), this field is unconfigurable. Please see [resource types](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/azurediagnostics#resource-types) for services that use each method. Please [see the documentation](https://docs.microsoft.com/azure/azure-monitor/platform/diagnostic-logs-stream-log-store#azure-diagnostics-vs-resource-specific) for details on the differences between destination types.
  final pulumi.Input<String>? logAnalyticsDestinationType;
  /// Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent.
  ///
  /// > **NOTE:** At least one of `eventhub_authorization_rule_id`, `log_analytics_workspace_id`, `partner_solution_id` and `storage_account_id` must be specified.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  final pulumi.Input<List<DiagnosticSettingMetric>>? metrics;
  /// Specifies the name of the Diagnostic Setting. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** If the name is set to 'service' it will not be possible to fully delete the diagnostic setting. This is due to legacy API support.
  final pulumi.Input<String>? name;
  /// The ID of the market partner solution where Diagnostics Data should be sent. For potential partner integrations, [click to learn more about partner integration](https://learn.microsoft.com/en-us/azure/partner-solutions/overview).
  ///
  /// > **NOTE:** At least one of `eventhub_authorization_rule_id`, `log_analytics_workspace_id`, `partner_solution_id` and `storage_account_id` must be specified.
  final pulumi.Input<String>? partnerSolutionId;
  /// The ID of the Storage Account where logs should be sent.
  ///
  /// > **NOTE:** At least one of `eventhub_authorization_rule_id`, `log_analytics_workspace_id`, `partner_solution_id` and `storage_account_id` must be specified.
  final pulumi.Input<String>? storageAccountId;
  /// The ID of an existing Resource on which to configure Diagnostic Settings. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetResourceId;

  /// Creates a new [DiagnosticSettingState].
  /// [enabledLogs] One or more `enabled_log` blocks as defined below.
  /// [enabledMetrics] One or more `enabled_metric` blocks as defined below.
  /// [eventhubAuthorizationRuleId] Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data.
  /// [eventhubName] Specifies the name of the Event Hub where Diagnostics Data should be sent.
  /// [logAnalyticsDestinationType] Possible values are `AzureDiagnostics` and `Dedicated`. When set to `Dedicated`, logs sent to a Log Analytics workspace will go into resource specific tables, instead of the legacy `AzureDiagnostics` table.
  /// [logAnalyticsWorkspaceId] Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent.
  /// [metrics] Optional.
  /// [name] Specifies the name of the Diagnostic Setting. Changing this forces a new resource to be created.
  /// [partnerSolutionId] The ID of the market partner solution where Diagnostics Data should be sent. For potential partner integrations, [click to learn more about partner integration](https://learn.microsoft.com/en-us/azure/partner-solutions/overview).
  /// [storageAccountId] The ID of the Storage Account where logs should be sent.
  /// [targetResourceId] The ID of an existing Resource on which to configure Diagnostic Settings. Changing this forces a new resource to be created.
  DiagnosticSettingState({
    this.enabledLogs,
    this.enabledMetrics,
    this.eventhubAuthorizationRuleId,
    this.eventhubName,
    this.logAnalyticsDestinationType,
    this.logAnalyticsWorkspaceId,
    this.metrics,
    this.name,
    this.partnerSolutionId,
    this.storageAccountId,
    this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledLogs': ?pulumi.Input.mapOptionalInputValue<List<DiagnosticSettingEnabledLog>, List<Map<String, dynamic>>>(enabledLogs, (value) => pulumi.Input.encodeList<DiagnosticSettingEnabledLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabledMetrics': ?pulumi.Input.mapOptionalInputValue<List<DiagnosticSettingEnabledMetric>, List<Map<String, dynamic>>>(enabledMetrics, (value) => pulumi.Input.encodeList<DiagnosticSettingEnabledMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventhubAuthorizationRuleId': ?eventhubAuthorizationRuleId,
      'eventhubName': ?eventhubName,
      'logAnalyticsDestinationType': ?logAnalyticsDestinationType,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<DiagnosticSettingMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<DiagnosticSettingMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'partnerSolutionId': ?partnerSolutionId,
      'storageAccountId': ?storageAccountId,
      'targetResourceId': ?targetResourceId,
    };
  }

  factory DiagnosticSettingState.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingState(
      enabledLogs: map['enabledLogs'] == null ? null : (pulumi.Input.decodeList<DiagnosticSettingEnabledLog>(map['enabledLogs'], (value) => DiagnosticSettingEnabledLog.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabledMetrics: map['enabledMetrics'] == null ? null : (pulumi.Input.decodeList<DiagnosticSettingEnabledMetric>(map['enabledMetrics'], (value) => DiagnosticSettingEnabledMetric.fromMap((value as Map).cast<String, dynamic>()))).input(),
      eventhubAuthorizationRuleId: map['eventhubAuthorizationRuleId'] == null ? null : (map['eventhubAuthorizationRuleId'] as String).input(),
      eventhubName: map['eventhubName'] == null ? null : (map['eventhubName'] as String).input(),
      logAnalyticsDestinationType: map['logAnalyticsDestinationType'] == null ? null : (map['logAnalyticsDestinationType'] as String).input(),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : (map['logAnalyticsWorkspaceId'] as String).input(),
      metrics: map['metrics'] == null ? null : (pulumi.Input.decodeList<DiagnosticSettingMetric>(map['metrics'], (value) => DiagnosticSettingMetric.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      partnerSolutionId: map['partnerSolutionId'] == null ? null : (map['partnerSolutionId'] as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId'] as String).input(),
      targetResourceId: map['targetResourceId'] == null ? null : (map['targetResourceId'] as String).input(),
    );
  }
}

