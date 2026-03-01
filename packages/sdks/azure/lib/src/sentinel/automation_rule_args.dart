// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_action_incident.dart';
import 'automation_rule_action_incident_task.dart';
import 'automation_rule_action_playbook.dart';

/// {@template pulumi_sentinel_automation_rule_automation_rule_args_doc}
/// The set of arguments for AutomationRule.
/// {@endtemplate}
/// {@macro pulumi_sentinel_automation_rule_automation_rule_args_doc}
class AutomationRuleArgs {
  /// One or more `action_incident_task` blocks as defined below.
  final pulumi.Input<List<AutomationRuleActionIncidentTask>>? actionIncidentTasks;
  /// One or more `action_incident` blocks as defined below.
  final pulumi.Input<List<AutomationRuleActionIncident>>? actionIncidents;
  /// One or more `action_playbook` blocks as defined below.
  ///
  /// > **Note:** Either one `action_incident` block or `action_playbook` block has to be specified.
  final pulumi.Input<List<AutomationRuleActionPlaybook>>? actionPlaybooks;
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

  /// Creates a new [AutomationRuleArgs].
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
  AutomationRuleArgs({
    pulumi.Output<List<AutomationRuleActionIncidentTask>>? actionIncidentTasks,
    pulumi.Output<List<AutomationRuleActionIncident>>? actionIncidents,
    pulumi.Output<List<AutomationRuleActionPlaybook>>? actionPlaybooks,
    pulumi.Output<String>? conditionJson,
    required pulumi.Output<String> displayName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? expiration,
    required pulumi.Output<String> logAnalyticsWorkspaceId,
    pulumi.Output<String>? name,
    required pulumi.Output<int> order,
    pulumi.Output<String>? triggersOn,
    pulumi.Output<String>? triggersWhen,
  }) :
      actionIncidentTasks = pulumi.Input.asOptionalInput<List<AutomationRuleActionIncidentTask>>(actionIncidentTasks),
      actionIncidents = pulumi.Input.asOptionalInput<List<AutomationRuleActionIncident>>(actionIncidents),
      actionPlaybooks = pulumi.Input.asOptionalInput<List<AutomationRuleActionPlaybook>>(actionPlaybooks),
      conditionJson = pulumi.Input.asOptionalInput<String>(conditionJson),
      displayName = pulumi.Input.asInput<String>(displayName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      expiration = pulumi.Input.asOptionalInput<String>(expiration),
      logAnalyticsWorkspaceId = pulumi.Input.asInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      order = pulumi.Input.asInput<int>(order),
      triggersOn = pulumi.Input.asOptionalInput<String>(triggersOn),
      triggersWhen = pulumi.Input.asOptionalInput<String>(triggersWhen);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionIncidentTasks': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleActionIncidentTask>, List<Map<String, dynamic>>>(actionIncidentTasks, (value) => pulumi.Input.encodeList<AutomationRuleActionIncidentTask, Map<String, dynamic>>(value, (value) => value.toMap())),
      'actionIncidents': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleActionIncident>, List<Map<String, dynamic>>>(actionIncidents, (value) => pulumi.Input.encodeList<AutomationRuleActionIncident, Map<String, dynamic>>(value, (value) => value.toMap())),
      'actionPlaybooks': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleActionPlaybook>, List<Map<String, dynamic>>>(actionPlaybooks, (value) => pulumi.Input.encodeList<AutomationRuleActionPlaybook, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory AutomationRuleArgs.fromMap(Map<String, dynamic> map) {
    return AutomationRuleArgs(
      actionIncidentTasks: map['actionIncidentTasks'] == null ? null : pulumi.Output.create<List<AutomationRuleActionIncidentTask>>(pulumi.Input.decodeList<AutomationRuleActionIncidentTask>(map['actionIncidentTasks'], (value) => AutomationRuleActionIncidentTask.fromMap((value as Map).cast<String, dynamic>()))),
      actionIncidents: map['actionIncidents'] == null ? null : pulumi.Output.create<List<AutomationRuleActionIncident>>(pulumi.Input.decodeList<AutomationRuleActionIncident>(map['actionIncidents'], (value) => AutomationRuleActionIncident.fromMap((value as Map).cast<String, dynamic>()))),
      actionPlaybooks: map['actionPlaybooks'] == null ? null : pulumi.Output.create<List<AutomationRuleActionPlaybook>>(pulumi.Input.decodeList<AutomationRuleActionPlaybook>(map['actionPlaybooks'], (value) => AutomationRuleActionPlaybook.fromMap((value as Map).cast<String, dynamic>()))),
      conditionJson: map['conditionJson'] == null ? null : pulumi.Output.create<String>(map['conditionJson'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      expiration: map['expiration'] == null ? null : pulumi.Output.create<String>(map['expiration'] as String),
      logAnalyticsWorkspaceId: pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      order: pulumi.Output.create<int>(map['order'] as int),
      triggersOn: map['triggersOn'] == null ? null : pulumi.Output.create<String>(map['triggersOn'] as String),
      triggersWhen: map['triggersWhen'] == null ? null : pulumi.Output.create<String>(map['triggersWhen'] as String),
    );
  }
}

