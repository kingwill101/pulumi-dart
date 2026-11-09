// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_agent_automation_v2_args_doc}
/// The set of arguments for AgentAutomationV2.
/// {@endtemplate}
/// {@macro pulumi_api_agent_automation_v2_args_doc}
class AgentAutomationV2Args {
  /// The automation identifier
  final pulumi.Input<String?>? automationID;
  final pulumi.Input<String> kind;
  /// A human-readable name for the automation.
  final pulumi.Input<String> name;
  /// The destinations that receive notifications about automation runs.
  final pulumi.Input<List<dynamic>?>? notificationTargets;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// A standard five-field cron expression in UTC that controls when the automation runs. The minimum interval between consecutive runs must be at least 10 minutes; tighter schedules are rejected.
  final pulumi.Input<String?>? scheduleCron;
  /// The task configuration that should be used whenever the automation runs. This includes the prompt, attached entities, and task execution settings such as plan mode, approval mode, permission mode, tool execution mode, and enabled integrations. Each automation run creates a fresh task from this definition.
  final pulumi.Input<dynamic> task;
  /// The event source and shared configuration for this triggered automation.
  final pulumi.Input<dynamic>? trigger;

  /// Creates a new [AgentAutomationV2Args].
  /// [automationID] The automation identifier
  /// [kind] Required.
  /// [name] A human-readable name for the automation.
  /// [notificationTargets] The destinations that receive notifications about automation runs.
  /// [orgName] The organization name
  /// [scheduleCron] A standard five-field cron expression in UTC that controls when the automation runs. The minimum interval between consecutive runs must be at least 10 minutes; tighter schedules are rejected.
  /// [task] The task configuration that should be used whenever the automation runs. This includes the prompt, attached entities, and task execution settings such as plan mode, approval mode, permission mode, tool execution mode, and enabled integrations. Each automation run creates a fresh task from this definition.
  /// [trigger] The event source and shared configuration for this triggered automation.
  const AgentAutomationV2Args({
    this.automationID,
    required this.kind,
    required this.name,
    this.notificationTargets,
    required this.orgName,
    this.scheduleCron,
    required this.task,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationID': ?automationID,
      'kind': kind,
      'name': name,
      'notificationTargets': ?notificationTargets,
      'orgName': orgName,
      'scheduleCron': ?scheduleCron,
      'task': task,
      'trigger': ?trigger,
    };
  }

  factory AgentAutomationV2Args.fromMap(Map<String, dynamic> map) {
    return AgentAutomationV2Args(
      automationID: (() { final guardedValue = map['automationID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      notificationTargets: (() { final guardedValue = map['notificationTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      scheduleCron: (() { final guardedValue = map['scheduleCron']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      task: pulumi.Input.fromValue(map['task']),
      trigger: (() { final guardedValue = map['trigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
