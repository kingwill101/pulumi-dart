// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_rules_alert_v2_action.dart';
import 'scheduled_query_rules_alert_v2_criteria.dart';
import 'scheduled_query_rules_alert_v2_identity.dart';

/// Input properties used for looking up and filtering ScheduledQueryRulesAlertV2 resources.
class ScheduledQueryRulesAlertV2State {
  /// An `action` block as defined below.
  final pulumi.Input<ScheduledQueryRulesAlertV2Action>? action;
  /// Specifies the flag that indicates whether the alert should be automatically resolved or not. Value should be `true` or `false`. The default is `false`.
  final pulumi.Input<bool>? autoMitigationEnabled;
  /// The api-version used when creating this alert rule.
  final pulumi.Input<String>? createdWithApiVersion;
  /// A `criteria` block as defined below.
  final pulumi.Input<List<ScheduledQueryRulesAlertV2Criteria>>? criterias;
  /// Specifies the description of the scheduled query rule.
  final pulumi.Input<String>? description;
  /// Specifies the display name of the alert rule.
  final pulumi.Input<String>? displayName;
  /// Specifies the flag which indicates whether this scheduled query rule is enabled. Value should be `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// How often the scheduled query rule is evaluated, represented in ISO 8601 duration format. Possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`.
  ///
  /// &gt; **Note:** `evaluation_frequency` cannot be greater than the query look back which is `window_duration`*`number_of_evaluation_periods`.
  ///
  /// &gt; **Note:** `evaluation_frequency` cannot be greater than the `mute_actions_after_alert_duration`.
  final pulumi.Input<String>? evaluationFrequency;
  /// An `identity` block as defined below.
  final pulumi.Input<ScheduledQueryRulesAlertV2Identity>? identity;
  /// True if this alert rule is a legacy Log Analytic Rule.
  final pulumi.Input<bool>? isALegacyLogAnalyticsRule;
  /// The flag indicates whether this Scheduled Query Rule has been configured to be stored in the customer's storage.
  final pulumi.Input<bool>? isWorkspaceAlertsStorageConfigured;
  /// Specifies the Azure Region where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Mute actions for the chosen period of time in ISO 8601 duration format after the alert is fired. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`.
  ///
  /// &gt; **Note:** `auto_mitigation_enabled` and `mute_actions_after_alert_duration` are mutually exclusive and cannot both be set.
  final pulumi.Input<String>? muteActionsAfterAlertDuration;
  /// Specifies the name which should be used for this Monitor Scheduled Query Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Set this if the alert evaluation period is different from the query time range. If not specified, the value is `window_duration`*`number_of_evaluation_periods`. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT20M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`.
  ///
  /// &gt; **Note:** `query_time_range_override` cannot be less than the query look back which is `window_duration`*`number_of_evaluation_periods`.
  final pulumi.Input<String>? queryTimeRangeOverride;
  /// Specifies the name of the Resource Group where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the list of resource IDs that this scheduled query rule is scoped to. Changing this forces a new resource to be created. Currently, the API supports exactly 1 resource ID in the scopes list.
  final pulumi.Input<String>? scopes;
  /// Severity of the alert. Should be an integer between 0 and 4. Value of 0 is severest.
  final pulumi.Input<int>? severity;
  /// Specifies the flag which indicates whether the provided query should be validated or not. The default is false.
  final pulumi.Input<bool>? skipQueryValidation;
  /// A mapping of tags which should be assigned to the Monitor Scheduled Query Rule.
  final pulumi.Input<Map<String, String>>? tags;
  /// List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is `Microsoft.Compute/virtualMachines`, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria.
  final pulumi.Input<List<String>>? targetResourceTypes;
  /// Specifies the period of time in ISO 8601 duration format on which the Scheduled Query Rule will be executed (bin size). If `evaluation_frequency` is `PT1M`, possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, and `PT6H`. Otherwise, possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`, and `P2D`.
  final pulumi.Input<String>? windowDuration;
  /// Specifies the flag which indicates whether this scheduled query rule check if storage is configured. Value should be `true` or `false`. The default is `false`.
  final pulumi.Input<bool>? workspaceAlertsStorageEnabled;

  /// Creates a new [ScheduledQueryRulesAlertV2State].
  /// [action] An `action` block as defined below.
  /// [autoMitigationEnabled] Specifies the flag that indicates whether the alert should be automatically resolved or not. Value should be `true` or `false`. The default is `false`.
  /// [createdWithApiVersion] The api-version used when creating this alert rule.
  /// [criterias] A `criteria` block as defined below.
  /// [description] Specifies the description of the scheduled query rule.
  /// [displayName] Specifies the display name of the alert rule.
  /// [enabled] Specifies the flag which indicates whether this scheduled query rule is enabled. Value should be `true` or `false`. Defaults to `true`.
  /// [evaluationFrequency] How often the scheduled query rule is evaluated, represented in ISO 8601 duration format. Possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`.
  /// [identity] An `identity` block as defined below.
  /// [isALegacyLogAnalyticsRule] True if this alert rule is a legacy Log Analytic Rule.
  /// [isWorkspaceAlertsStorageConfigured] The flag indicates whether this Scheduled Query Rule has been configured to be stored in the customer's storage.
  /// [location] Specifies the Azure Region where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
  /// [muteActionsAfterAlertDuration] Mute actions for the chosen period of time in ISO 8601 duration format after the alert is fired. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`.
  /// [name] Specifies the name which should be used for this Monitor Scheduled Query Rule. Changing this forces a new resource to be created.
  /// [queryTimeRangeOverride] Set this if the alert evaluation period is different from the query time range. If not specified, the value is `window_duration`*`number_of_evaluation_periods`. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT20M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
  /// [scopes] Specifies the list of resource IDs that this scheduled query rule is scoped to. Changing this forces a new resource to be created. Currently, the API supports exactly 1 resource ID in the scopes list.
  /// [severity] Severity of the alert. Should be an integer between 0 and 4. Value of 0 is severest.
  /// [skipQueryValidation] Specifies the flag which indicates whether the provided query should be validated or not. The default is false.
  /// [tags] A mapping of tags which should be assigned to the Monitor Scheduled Query Rule.
  /// [targetResourceTypes] List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is `Microsoft.Compute/virtualMachines`, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria.
  /// [windowDuration] Specifies the period of time in ISO 8601 duration format on which the Scheduled Query Rule will be executed (bin size). If `evaluation_frequency` is `PT1M`, possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, and `PT6H`. Otherwise, possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`, and `P2D`.
  /// [workspaceAlertsStorageEnabled] Specifies the flag which indicates whether this scheduled query rule check if storage is configured. Value should be `true` or `false`. The default is `false`.
  const ScheduledQueryRulesAlertV2State({
    this.action,
    this.autoMitigationEnabled,
    this.createdWithApiVersion,
    this.criterias,
    this.description,
    this.displayName,
    this.enabled,
    this.evaluationFrequency,
    this.identity,
    this.isALegacyLogAnalyticsRule,
    this.isWorkspaceAlertsStorageConfigured,
    this.location,
    this.muteActionsAfterAlertDuration,
    this.name,
    this.queryTimeRangeOverride,
    this.resourceGroupName,
    this.scopes,
    this.severity,
    this.skipQueryValidation,
    this.tags,
    this.targetResourceTypes,
    this.windowDuration,
    this.workspaceAlertsStorageEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<ScheduledQueryRulesAlertV2Action, Map<String, dynamic>>(action, (value) => value.toMap()),
      'autoMitigationEnabled': ?autoMitigationEnabled,
      'createdWithApiVersion': ?createdWithApiVersion,
      'criterias': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryRulesAlertV2Criteria>, List<Map<String, dynamic>>>(criterias, (value) => pulumi.Input.encodeList<ScheduledQueryRulesAlertV2Criteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'evaluationFrequency': ?evaluationFrequency,
      'identity': ?pulumi.Input.mapOptionalInputValue<ScheduledQueryRulesAlertV2Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'isALegacyLogAnalyticsRule': ?isALegacyLogAnalyticsRule,
      'isWorkspaceAlertsStorageConfigured': ?isWorkspaceAlertsStorageConfigured,
      'location': ?location,
      'muteActionsAfterAlertDuration': ?muteActionsAfterAlertDuration,
      'name': ?name,
      'queryTimeRangeOverride': ?queryTimeRangeOverride,
      'resourceGroupName': ?resourceGroupName,
      'scopes': ?scopes,
      'severity': ?severity,
      'skipQueryValidation': ?skipQueryValidation,
      'tags': ?tags,
      'targetResourceTypes': ?targetResourceTypes,
      'windowDuration': ?windowDuration,
      'workspaceAlertsStorageEnabled': ?workspaceAlertsStorageEnabled,
    };
  }

  factory ScheduledQueryRulesAlertV2State.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertV2State(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduledQueryRulesAlertV2Action.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoMitigationEnabled: (() { final guardedValue = map['autoMitigationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createdWithApiVersion: (() { final guardedValue = map['createdWithApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      criterias: (() { final guardedValue = map['criterias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduledQueryRulesAlertV2Criteria>(guardedValue, (value) => ScheduledQueryRulesAlertV2Criteria.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      evaluationFrequency: (() { final guardedValue = map['evaluationFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduledQueryRulesAlertV2Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isALegacyLogAnalyticsRule: (() { final guardedValue = map['isALegacyLogAnalyticsRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isWorkspaceAlertsStorageConfigured: (() { final guardedValue = map['isWorkspaceAlertsStorageConfigured']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      muteActionsAfterAlertDuration: (() { final guardedValue = map['muteActionsAfterAlertDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryTimeRangeOverride: (() { final guardedValue = map['queryTimeRangeOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      skipQueryValidation: (() { final guardedValue = map['skipQueryValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetResourceTypes: (() { final guardedValue = map['targetResourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      windowDuration: (() { final guardedValue = map['windowDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceAlertsStorageEnabled: (() { final guardedValue = map['workspaceAlertsStorageEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

