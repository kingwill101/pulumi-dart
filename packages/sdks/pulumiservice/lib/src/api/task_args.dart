// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_agents_task_args_doc}
/// The set of arguments for Task.
/// {@endtemplate}
/// {@macro pulumi_api_agents_task_args_doc}
class TaskArgs {
  /// Optional Custom Agent definition id to run this task as. When set, the task's role, permission mode, and enabled integrations are taken from the named agent definition instead of from this request, and the task is attributed to that agent. The agent's instructions and approval mode are not copied at creation: they are read from the definition on every turn, so editing the agent applies to the next turn of every run. A preview capability, gated per organization.
  final pulumi.Input<String?>? agentDefinitionId;
  /// Optional approval mode override for this task. If omitted, org default is used.
  final pulumi.Input<String?>? approvalMode;
  /// Optional filter for CLI integrations to enable for this task. Semantics: omitted/null → enable all CLI integrations connected for the org; empty list → explicit opt-out (no CLI integrations for this task); populated list → whitelist by (catalogId, name) of the configured instances to enable. Entries with missing or unknown catalogId, missing name, or referencing a (catalogId, name) pair that is not connected for the organization are rejected with a 400 response. catalogId matching is case-insensitive.
  final pulumi.Input<List<dynamic>?>? cliIntegrations;
  /// Optional list of integrations to enable for this task. Semantics: omitted/null → inherit all org-enabled integrations; empty list → explicit opt-out (no integration credentials for this task); populated list → whitelist of specific integrations by ID. Modeled as an object array rather than a bare string array so multi-instance support (instance_name, scope, etc.) can be added later without a wire break.
  final pulumi.Input<List<dynamic>?>? enabledIntegrations;
  /// The message content. This is the first event in the conversation and must be a user message, so its discriminator field must be set to "type": "user_message".
  final pulumi.Input<dynamic>? message;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// Controls the permission scope for the task. When omitted, defaults to 'default' (the agent uses the creating user's full permissions).
  final pulumi.Input<String?>? permissionMode;
  /// Whether to enable plan mode for this task.
  final pulumi.Input<bool?>? planMode;
  /// Optional RBAC role the task assumes, identified by role id. When set, the task operates with that role's permissions in place of the creating user's own assignments. You may only assume a role that is assigned to you, directly or through a team; a role you do not hold is rejected with a 403. Omitted/null means no assumed role: the task uses the creating user's full permissions. Orthogonal to permissionMode, which controls the read-only behavior posture independently.
  final pulumi.Input<String?>? role;
  /// The origin that triggered this task. Defaults to 'api' if omitted.
  final pulumi.Input<String?>? source;
  /// The agent task identifier
  final pulumi.Input<String?>? taskID;
  /// Where tools should be executed. Defaults to 'cloud' if omitted.
  final pulumi.Input<String?>? toolExecutionMode;

  /// Creates a new [TaskArgs].
  /// [agentDefinitionId] Optional Custom Agent definition id to run this task as. When set, the task's role, permission mode, and enabled integrations are taken from the named agent definition instead of from this request, and the task is attributed to that agent. The agent's instructions and approval mode are not copied at creation: they are read from the definition on every turn, so editing the agent applies to the next turn of every run. A preview capability, gated per organization.
  /// [approvalMode] Optional approval mode override for this task. If omitted, org default is used.
  /// [cliIntegrations] Optional filter for CLI integrations to enable for this task. Semantics: omitted/null → enable all CLI integrations connected for the org; empty list → explicit opt-out (no CLI integrations for this task); populated list → whitelist by (catalogId, name) of the configured instances to enable. Entries with missing or unknown catalogId, missing name, or referencing a (catalogId, name) pair that is not connected for the organization are rejected with a 400 response. catalogId matching is case-insensitive.
  /// [enabledIntegrations] Optional list of integrations to enable for this task. Semantics: omitted/null → inherit all org-enabled integrations; empty list → explicit opt-out (no integration credentials for this task); populated list → whitelist of specific integrations by ID. Modeled as an object array rather than a bare string array so multi-instance support (instance_name, scope, etc.) can be added later without a wire break.
  /// [message] The message content. This is the first event in the conversation and must be a user message, so its discriminator field must be set to "type": "user_message".
  /// [orgName] The organization name
  /// [permissionMode] Controls the permission scope for the task. When omitted, defaults to 'default' (the agent uses the creating user's full permissions).
  /// [planMode] Whether to enable plan mode for this task.
  /// [role] Optional RBAC role the task assumes, identified by role id. When set, the task operates with that role's permissions in place of the creating user's own assignments. You may only assume a role that is assigned to you, directly or through a team; a role you do not hold is rejected with a 403. Omitted/null means no assumed role: the task uses the creating user's full permissions. Orthogonal to permissionMode, which controls the read-only behavior posture independently.
  /// [source] The origin that triggered this task. Defaults to 'api' if omitted.
  /// [taskID] The agent task identifier
  /// [toolExecutionMode] Where tools should be executed. Defaults to 'cloud' if omitted.
  const TaskArgs({
    this.agentDefinitionId,
    this.approvalMode,
    this.cliIntegrations,
    this.enabledIntegrations,
    this.message,
    required this.orgName,
    this.permissionMode,
    this.planMode,
    this.role,
    this.source,
    this.taskID,
    this.toolExecutionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentDefinitionId': ?agentDefinitionId,
      'approvalMode': ?approvalMode,
      'cliIntegrations': ?cliIntegrations,
      'enabledIntegrations': ?enabledIntegrations,
      'message': ?message,
      'orgName': orgName,
      'permissionMode': ?permissionMode,
      'planMode': ?planMode,
      'role': ?role,
      'source': ?source,
      'taskID': ?taskID,
      'toolExecutionMode': ?toolExecutionMode,
    };
  }

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      agentDefinitionId: (() { final guardedValue = map['agentDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      approvalMode: (() { final guardedValue = map['approvalMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cliIntegrations: (() { final guardedValue = map['cliIntegrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      enabledIntegrations: (() { final guardedValue = map['enabledIntegrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      permissionMode: (() { final guardedValue = map['permissionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planMode: (() { final guardedValue = map['planMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskID: (() { final guardedValue = map['taskID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolExecutionMode: (() { final guardedValue = map['toolExecutionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
