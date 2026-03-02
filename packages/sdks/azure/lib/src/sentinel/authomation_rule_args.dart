// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authomation_rule_action_incident.dart';
import 'authomation_rule_action_incident_task.dart';
import 'authomation_rule_action_playbook.dart';

/// {@template pulumi_sentinel_authomation_rule_authomation_rule_args_doc}
/// The set of arguments for AuthomationRule.
/// {@endtemplate}
/// {@macro pulumi_sentinel_authomation_rule_authomation_rule_args_doc}
class AuthomationRuleArgs {
  /// One or more `action_incident_task` blocks as defined below.
  final pulumi.Input<List<AuthomationRuleActionIncidentTask>>? actionIncidentTasks;
  /// One or more `action_incident` blocks as defined below.
  final pulumi.Input<List<AuthomationRuleActionIncident>>? actionIncidents;
  /// One or more `action_playbook` blocks as defined below.
  ///
  /// > **Note:** Either one `action_incident` block or `action_playbook` block has to be specified.
  final pulumi.Input<List<AuthomationRuleActionPlaybook>>? actionPlaybooks;
  /// A JSON array of one or more condition JSON objects as is defined [here](https://learn.microsoft.com/en-us/rest/api/securityinsights/preview/automation-rules/create-or-update?tabs=HTTP#automationruletriggeringlogic).
  final pulumi.Input<String>? conditionJson;
  /// The display name which should be used for this Sentinel Automation Rule.
  final pulumi.Input<String> displayName;
  /// Whether this Sentinel Automation Rule is enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The time in RFC3339 format of kind `UTC` that determines when this Automation Rule should expire and be disabled.
  final pulumi.Input<String>? expiration;
  /// The ID of the Log Analytics Workspace where this Sentinel applies to. Changing this forces a new Sentinel Automation Rule to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The UUID which should be used for this Sentinel Automation Rule. Changing this forces a new Sentinel Automation Rule to be created.
  final pulumi.Input<String>? name;
  /// The order of this Sentinel Automation Rule. Possible values varies between `1` and `1000`.
  final pulumi.Input<int> order;
  /// Specifies what triggers this automation rule. Possible values are `Alerts` and `Incidents`. Defaults to `Incidents`.
  final pulumi.Input<String>? triggersOn;
  /// Specifies when will this automation rule be triggered. Possible values are `Created` and `Updated`. Defaults to `Created`.
  final pulumi.Input<String>? triggersWhen;

  /// Creates a new [AuthomationRuleArgs].
  /// [actionIncidentTasks] One or more `action_incident_task` blocks as defined below.
  /// [actionIncidents] One or more `action_incident` blocks as defined below.
  /// [actionPlaybooks] One or more `action_playbook` blocks as defined below.
  /// [conditionJson] A JSON array of one or more condition JSON objects as is defined [here](https://learn.microsoft.com/en-us/rest/api/securityinsights/preview/automation-rules/create-or-update?tabs=HTTP#automationruletriggeringlogic).
  /// [displayName] The display name which should be used for this Sentinel Automation Rule.
  /// [enabled] Whether this Sentinel Automation Rule is enabled? Defaults to `true`.
  /// [expiration] The time in RFC3339 format of kind `UTC` that determines when this Automation Rule should expire and be disabled.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace where this Sentinel applies to. Changing this forces a new Sentinel Automation Rule to be created.
  /// [name] The UUID which should be used for this Sentinel Automation Rule. Changing this forces a new Sentinel Automation Rule to be created.
  /// [order] The order of this Sentinel Automation Rule. Possible values varies between `1` and `1000`.
  /// [triggersOn] Specifies what triggers this automation rule. Possible values are `Alerts` and `Incidents`. Defaults to `Incidents`.
  /// [triggersWhen] Specifies when will this automation rule be triggered. Possible values are `Created` and `Updated`. Defaults to `Created`.
  AuthomationRuleArgs({
    this.actionIncidentTasks,
    this.actionIncidents,
    this.actionPlaybooks,
    this.conditionJson,
    required this.displayName,
    this.enabled,
    this.expiration,
    required this.logAnalyticsWorkspaceId,
    this.name,
    required this.order,
    this.triggersOn,
    this.triggersWhen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionIncidentTasks': ?pulumi.Input.mapOptionalInputValue<List<AuthomationRuleActionIncidentTask>, List<Map<String, dynamic>>>(actionIncidentTasks, (value) => pulumi.Input.encodeList<AuthomationRuleActionIncidentTask, Map<String, dynamic>>(value, (value) => value.toMap())),
      'actionIncidents': ?pulumi.Input.mapOptionalInputValue<List<AuthomationRuleActionIncident>, List<Map<String, dynamic>>>(actionIncidents, (value) => pulumi.Input.encodeList<AuthomationRuleActionIncident, Map<String, dynamic>>(value, (value) => value.toMap())),
      'actionPlaybooks': ?pulumi.Input.mapOptionalInputValue<List<AuthomationRuleActionPlaybook>, List<Map<String, dynamic>>>(actionPlaybooks, (value) => pulumi.Input.encodeList<AuthomationRuleActionPlaybook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conditionJson': ?conditionJson,
      'displayName': displayName,
      'enabled': ?enabled,
      'expiration': ?expiration,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
      'order': order,
      'triggersOn': ?triggersOn,
      'triggersWhen': ?triggersWhen,
    };
  }

  factory AuthomationRuleArgs.fromMap(Map<String, dynamic> map) {
    return AuthomationRuleArgs(
      actionIncidentTasks: map['actionIncidentTasks'] == null ? null : (pulumi.Input.decodeList<AuthomationRuleActionIncidentTask>(map['actionIncidentTasks'], (value) => AuthomationRuleActionIncidentTask.fromMap((value as Map).cast<String, dynamic>()))).input(),
      actionIncidents: map['actionIncidents'] == null ? null : (pulumi.Input.decodeList<AuthomationRuleActionIncident>(map['actionIncidents'], (value) => AuthomationRuleActionIncident.fromMap((value as Map).cast<String, dynamic>()))).input(),
      actionPlaybooks: map['actionPlaybooks'] == null ? null : (pulumi.Input.decodeList<AuthomationRuleActionPlaybook>(map['actionPlaybooks'], (value) => AuthomationRuleActionPlaybook.fromMap((value as Map).cast<String, dynamic>()))).input(),
      conditionJson: map['conditionJson'] == null ? null : (map['conditionJson'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      expiration: map['expiration'] == null ? null : (map['expiration'] as String).input(),
      logAnalyticsWorkspaceId: (map['logAnalyticsWorkspaceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      order: (map['order'] as int).input(),
      triggersOn: map['triggersOn'] == null ? null : (map['triggersOn'] as String).input(),
      triggersWhen: map['triggersWhen'] == null ? null : (map['triggersWhen'] as String).input(),
    );
  }
}

