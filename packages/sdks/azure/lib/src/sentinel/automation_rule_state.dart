// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_action_incident.dart';
import 'automation_rule_action_incident_task.dart';
import 'automation_rule_action_playbook.dart';

/// Input properties used for looking up and filtering AutomationRule resources.
class AutomationRuleState {
  /// One or more `actionIncidentTask` blocks as defined below.
  final pulumi.Input<List<AutomationRuleActionIncidentTask>?>? actionIncidentTasks;
  /// One or more `actionIncident` blocks as defined below.
  final pulumi.Input<List<AutomationRuleActionIncident>?>? actionIncidents;
  /// One or more `actionPlaybook` blocks as defined below.
  ///
  /// &gt; **Note:** Either one `actionIncident` block or `actionPlaybook` block has to be specified.
  final pulumi.Input<List<AutomationRuleActionPlaybook>?>? actionPlaybooks;
  /// A JSON array of one or more condition JSON objects as is defined [here](https://learn.microsoft.com/en-us/rest/api/securityinsights/preview/automation-rules/create-or-update?tabs=HTTP#automationruletriggeringlogic).
  final pulumi.Input<String?>? conditionJson;
  /// The display name which should be used for this Sentinel Automation Rule.
  final pulumi.Input<String?>? displayName;
  /// Whether this Sentinel Automation Rule is enabled? Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// The time in RFC3339 format of kind `UTC` that determines when this Automation Rule should expire and be disabled.
  final pulumi.Input<String?>? expiration;
  /// The ID of the Log Analytics Workspace where this Sentinel applies to. Changing this forces a new Sentinel Automation Rule to be created.
  final pulumi.Input<String?>? logAnalyticsWorkspaceId;
  /// The UUID which should be used for this Sentinel Automation Rule. Changing this forces a new Sentinel Automation Rule to be created.
  final pulumi.Input<String?>? name;
  /// The order of this Sentinel Automation Rule. Possible values varies between `1` and `1000`.
  final pulumi.Input<int?>? order;
  /// Specifies what triggers this automation rule. Possible values are `Alerts` and `Incidents`. Defaults to `Incidents`.
  final pulumi.Input<String?>? triggersOn;
  /// Specifies when will this automation rule be triggered. Possible values are `Created` and `Updated`. Defaults to `Created`.
  final pulumi.Input<String?>? triggersWhen;

  /// Creates a new [AutomationRuleState].
  /// [actionIncidentTasks] One or more `actionIncidentTask` blocks as defined below.
  /// [actionIncidents] One or more `actionIncident` blocks as defined below.
  /// [actionPlaybooks] One or more `actionPlaybook` blocks as defined below.
  /// [conditionJson] A JSON array of one or more condition JSON objects as is defined [here](https://learn.microsoft.com/en-us/rest/api/securityinsights/preview/automation-rules/create-or-update?tabs=HTTP#automationruletriggeringlogic).
  /// [displayName] The display name which should be used for this Sentinel Automation Rule.
  /// [enabled] Whether this Sentinel Automation Rule is enabled? Defaults to `true`.
  /// [expiration] The time in RFC3339 format of kind `UTC` that determines when this Automation Rule should expire and be disabled.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace where this Sentinel applies to. Changing this forces a new Sentinel Automation Rule to be created.
  /// [name] The UUID which should be used for this Sentinel Automation Rule. Changing this forces a new Sentinel Automation Rule to be created.
  /// [order] The order of this Sentinel Automation Rule. Possible values varies between `1` and `1000`.
  /// [triggersOn] Specifies what triggers this automation rule. Possible values are `Alerts` and `Incidents`. Defaults to `Incidents`.
  /// [triggersWhen] Specifies when will this automation rule be triggered. Possible values are `Created` and `Updated`. Defaults to `Created`.
  const AutomationRuleState({
    this.actionIncidentTasks,
    this.actionIncidents,
    this.actionPlaybooks,
    this.conditionJson,
    this.displayName,
    this.enabled,
    this.expiration,
    this.logAnalyticsWorkspaceId,
    this.name,
    this.order,
    this.triggersOn,
    this.triggersWhen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionIncidentTasks': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleActionIncidentTask>, List<Map<String, dynamic>>>(actionIncidentTasks, (value) => pulumi.Input.encodeList<AutomationRuleActionIncidentTask, Map<String, dynamic>>(value, (value) => value.toMap())),
      'actionIncidents': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleActionIncident>, List<Map<String, dynamic>>>(actionIncidents, (value) => pulumi.Input.encodeList<AutomationRuleActionIncident, Map<String, dynamic>>(value, (value) => value.toMap())),
      'actionPlaybooks': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleActionPlaybook>, List<Map<String, dynamic>>>(actionPlaybooks, (value) => pulumi.Input.encodeList<AutomationRuleActionPlaybook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conditionJson': ?conditionJson,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'expiration': ?expiration,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
      'order': ?order,
      'triggersOn': ?triggersOn,
      'triggersWhen': ?triggersWhen,
    };
  }

  factory AutomationRuleState.fromMap(Map<String, dynamic> map) {
    return AutomationRuleState(
      actionIncidentTasks: (() { final guardedValue = map['actionIncidentTasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutomationRuleActionIncidentTask>(guardedValue, (value) => AutomationRuleActionIncidentTask.fromMap((value as Map).cast<String, dynamic>()))); })(),
      actionIncidents: (() { final guardedValue = map['actionIncidents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutomationRuleActionIncident>(guardedValue, (value) => AutomationRuleActionIncident.fromMap((value as Map).cast<String, dynamic>()))); })(),
      actionPlaybooks: (() { final guardedValue = map['actionPlaybooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutomationRuleActionPlaybook>(guardedValue, (value) => AutomationRuleActionPlaybook.fromMap((value as Map).cast<String, dynamic>()))); })(),
      conditionJson: (() { final guardedValue = map['conditionJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logAnalyticsWorkspaceId: (() { final guardedValue = map['logAnalyticsWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      triggersOn: (() { final guardedValue = map['triggersOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggersWhen: (() { final guardedValue = map['triggersWhen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
