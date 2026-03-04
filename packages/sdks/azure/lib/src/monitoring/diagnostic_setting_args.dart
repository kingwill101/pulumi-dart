// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_setting_enabled_log.dart';
import 'diagnostic_setting_enabled_metric.dart';
import 'diagnostic_setting_metric.dart';

/// {@template pulumi_monitoring_diagnostic_setting_diagnostic_setting_args_doc}
/// The set of arguments for DiagnosticSetting.
/// {@endtemplate}
/// {@macro pulumi_monitoring_diagnostic_setting_diagnostic_setting_args_doc}
class DiagnosticSettingArgs {
  /// One or more `enabled_log` blocks as defined below.
  ///
  /// &gt; **Note:** At least one `enabled_log` or `enabled_metric` block must be specified. At least one type of Log or Metric must be enabled.
  final pulumi.Input<List<DiagnosticSettingEnabledLog>>? enabledLogs;

  /// One or more `enabled_metric` blocks as defined below.
  ///
  /// &gt; **Note:** At least one `enabled_log` or `enabled_metric` block must be specified.
  final pulumi.Input<List<DiagnosticSettingEnabledMetric>>? enabledMetrics;

  /// Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data.
  ///
  /// &gt; **NOTE:** This can be sourced from the `azure.eventhub.EventHubNamespaceAuthorizationRule` resource and is different from a `azure.eventhub.AuthorizationRule` resource.
  ///
  /// &gt; **NOTE:** At least one of `eventhub_authorization_rule_id`, `log_analytics_workspace_id`, `partner_solution_id` and `storage_account_id` must be specified.
  final pulumi.Input<String>? eventhubAuthorizationRuleId;

  /// Specifies the name of the Event Hub where Diagnostics Data should be sent.
  ///
  /// &gt; **NOTE:** If this isn't specified then the default Event Hub will be used.
  final pulumi.Input<String>? eventhubName;

  /// Possible values are `AzureDiagnostics` and `Dedicated`. When set to `Dedicated`, logs sent to a Log Analytics workspace will go into resource specific tables, instead of the legacy `AzureDiagnostics` table.
  ///
  /// &gt; **NOTE:** This setting will only have an effect if a `log_analytics_workspace_id` is provided. For some target resource type (e.g., Key Vault), this field is unconfigurable. Please see [resource types](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/azurediagnostics#resource-types) for services that use each method. Please [see the documentation](https://docs.microsoft.com/azure/azure-monitor/platform/diagnostic-logs-stream-log-store#azure-diagnostics-vs-resource-specific) for details on the differences between destination types.
  final pulumi.Input<String>? logAnalyticsDestinationType;

  /// Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent.
  ///
  /// &gt; **NOTE:** At least one of `eventhub_authorization_rule_id`, `log_analytics_workspace_id`, `partner_solution_id` and `storage_account_id` must be specified.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  final pulumi.Input<List<DiagnosticSettingMetric>>? metrics;

  /// Specifies the name of the Diagnostic Setting. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** If the name is set to 'service' it will not be possible to fully delete the diagnostic setting. This is due to legacy API support.
  final pulumi.Input<String>? name;

  /// The ID of the market partner solution where Diagnostics Data should be sent. For potential partner integrations, [click to learn more about partner integration](https://learn.microsoft.com/en-us/azure/partner-solutions/overview).
  ///
  /// &gt; **NOTE:** At least one of `eventhub_authorization_rule_id`, `log_analytics_workspace_id`, `partner_solution_id` and `storage_account_id` must be specified.
  final pulumi.Input<String>? partnerSolutionId;

  /// The ID of the Storage Account where logs should be sent.
  ///
  /// &gt; **NOTE:** At least one of `eventhub_authorization_rule_id`, `log_analytics_workspace_id`, `partner_solution_id` and `storage_account_id` must be specified.
  final pulumi.Input<String>? storageAccountId;

  /// The ID of an existing Resource on which to configure Diagnostic Settings. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [DiagnosticSettingArgs].
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
  DiagnosticSettingArgs({
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
    required this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledLogs':
          ?pulumi.Input.mapOptionalInputValue<
            List<DiagnosticSettingEnabledLog>,
            List<Map<String, dynamic>>
          >(
            enabledLogs,
            (value) =>
                pulumi.Input.encodeList<
                  DiagnosticSettingEnabledLog,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enabledMetrics':
          ?pulumi.Input.mapOptionalInputValue<
            List<DiagnosticSettingEnabledMetric>,
            List<Map<String, dynamic>>
          >(
            enabledMetrics,
            (value) =>
                pulumi.Input.encodeList<
                  DiagnosticSettingEnabledMetric,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'eventhubAuthorizationRuleId': ?eventhubAuthorizationRuleId,
      'eventhubName': ?eventhubName,
      'logAnalyticsDestinationType': ?logAnalyticsDestinationType,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'metrics':
          ?pulumi.Input.mapOptionalInputValue<
            List<DiagnosticSettingMetric>,
            List<Map<String, dynamic>>
          >(
            metrics,
            (value) =>
                pulumi.Input.encodeList<
                  DiagnosticSettingMetric,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'partnerSolutionId': ?partnerSolutionId,
      'storageAccountId': ?storageAccountId,
      'targetResourceId': targetResourceId,
    };
  }

  factory DiagnosticSettingArgs.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingArgs(
      enabledLogs: (() {
        final guardedValue = map['enabledLogs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DiagnosticSettingEnabledLog>(
            guardedValue,
            (value) => DiagnosticSettingEnabledLog.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      enabledMetrics: (() {
        final guardedValue = map['enabledMetrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DiagnosticSettingEnabledMetric>(
            guardedValue,
            (value) => DiagnosticSettingEnabledMetric.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      eventhubAuthorizationRuleId: (() {
        final guardedValue = map['eventhubAuthorizationRuleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventhubName: (() {
        final guardedValue = map['eventhubName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logAnalyticsDestinationType: (() {
        final guardedValue = map['logAnalyticsDestinationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logAnalyticsWorkspaceId: (() {
        final guardedValue = map['logAnalyticsWorkspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metrics: (() {
        final guardedValue = map['metrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DiagnosticSettingMetric>(
            guardedValue,
            (value) => DiagnosticSettingMetric.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partnerSolutionId: (() {
        final guardedValue = map['partnerSolutionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountId: (() {
        final guardedValue = map['storageAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetResourceId: pulumi.Input.fromValue(
        map['targetResourceId'] as String,
      ),
    );
  }
}
