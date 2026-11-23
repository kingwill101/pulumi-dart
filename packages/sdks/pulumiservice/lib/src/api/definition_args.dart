// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_agents_definition_args_doc}
/// The set of arguments for Definition.
/// {@endtemplate}
/// {@macro pulumi_api_agents_definition_args_doc}
class DefinitionArgs {
  /// The approval posture the agent's runs inherit. When omitted, runs are auto-approved, matching scheduled automations. 'manual' makes the agent propose rather than act, and applies to every run of the agent, including scheduled and triggered ones -- such a run stops and waits for a person even though nothing yet notifies them it is waiting, so choose it deliberately for an unattended agent.
  final pulumi.Input<String?>? approvalMode;
  /// A presentation token the console maps to an icon. Not an uploaded asset.
  final pulumi.Input<String?>? avatar;
  /// Instructions that shape how the agent behaves in the team's environment.
  final pulumi.Input<String?>? customInstructions;
  /// The agent definition identifier
  final pulumi.Input<String?>? definitionID;
  /// The human-readable label shown wherever the agent is displayed. Required unless name is supplied, in which case the name is used as the label too.
  final pulumi.Input<String?>? displayName;
  /// The integrations to enable for the agent's tasks, by id. Omitted or null inherits all organization integrations; an empty list enables none.
  final pulumi.Input<List<dynamic>?>? enabledIntegrations;
  /// The model provider the agent's tasks run on: a provider name, or 'pulumi' for Pulumi's built-in models. On creation, omitted, null, or empty uses the organization's default provider; on update, omitted or null keeps the stored provider and empty returns to that default.
  final pulumi.Input<String?>? modelProvider;
  /// The agent's name: lower-case letters, digits and hyphens, at most 64 characters, unique within the organization. Optional -- when omitted it is derived from displayName, so a form that asks for one name still works. A name already taken by another agent is rejected with a 409 rather than silently suffixed. Supplying a different name on an update renames the agent, which is safe because every internal reference is by id.
  final pulumi.Input<String?>? name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// Deprecated. Custom Agent authority is controlled by roleId and this field is ignored.
  final pulumi.Input<String?>? permissionMode;
  /// A one-line description of what this agent is for, shown under its name in the roster.
  final pulumi.Input<String?>? purpose;
  /// Effort the agent's models reason or think at: 'low', 'medium', or 'high', for this agent only. On an 'openai-responses' provider it overrides the provider's reasoning effort; on an 'anthropic-messages' provider it sets the thinking effort of models that support adaptive thinking. With no provider it applies to whichever of these the organization's default is. Refused for 'pulumi' and a named 'openai-chat' provider, and ignored on a run whose provider cannot reason. On creation, omitted, null, or empty uses the provider's; on update, omitted or null keeps the stored effort and empty returns to the provider's.
  final pulumi.Input<String?>? reasoningEffort;
  /// The RBAC role id the agent's tasks assume. With Agents-as-Team-Members enabled, creation with omitted/null or empty uses the feature's read-only default; on update, omitted/null preserves the existing role and empty selects that default. A role that does not exist in the organization is rejected with a 404.
  final pulumi.Input<String?>? roleId;

  /// Creates a new [DefinitionArgs].
  /// [approvalMode] The approval posture the agent's runs inherit. When omitted, runs are auto-approved, matching scheduled automations. 'manual' makes the agent propose rather than act, and applies to every run of the agent, including scheduled and triggered ones -- such a run stops and waits for a person even though nothing yet notifies them it is waiting, so choose it deliberately for an unattended agent.
  /// [avatar] A presentation token the console maps to an icon. Not an uploaded asset.
  /// [customInstructions] Instructions that shape how the agent behaves in the team's environment.
  /// [definitionID] The agent definition identifier
  /// [displayName] The human-readable label shown wherever the agent is displayed. Required unless name is supplied, in which case the name is used as the label too.
  /// [enabledIntegrations] The integrations to enable for the agent's tasks, by id. Omitted or null inherits all organization integrations; an empty list enables none.
  /// [modelProvider] The model provider the agent's tasks run on: a provider name, or 'pulumi' for Pulumi's built-in models. On creation, omitted, null, or empty uses the organization's default provider; on update, omitted or null keeps the stored provider and empty returns to that default.
  /// [name] The agent's name: lower-case letters, digits and hyphens, at most 64 characters, unique within the organization. Optional -- when omitted it is derived from displayName, so a form that asks for one name still works. A name already taken by another agent is rejected with a 409 rather than silently suffixed. Supplying a different name on an update renames the agent, which is safe because every internal reference is by id.
  /// [orgName] The organization name
  /// [permissionMode] Deprecated. Custom Agent authority is controlled by roleId and this field is ignored.
  /// [purpose] A one-line description of what this agent is for, shown under its name in the roster.
  /// [reasoningEffort] Effort the agent's models reason or think at: 'low', 'medium', or 'high', for this agent only. On an 'openai-responses' provider it overrides the provider's reasoning effort; on an 'anthropic-messages' provider it sets the thinking effort of models that support adaptive thinking. With no provider it applies to whichever of these the organization's default is. Refused for 'pulumi' and a named 'openai-chat' provider, and ignored on a run whose provider cannot reason. On creation, omitted, null, or empty uses the provider's; on update, omitted or null keeps the stored effort and empty returns to the provider's.
  /// [roleId] The RBAC role id the agent's tasks assume. With Agents-as-Team-Members enabled, creation with omitted/null or empty uses the feature's read-only default; on update, omitted/null preserves the existing role and empty selects that default. A role that does not exist in the organization is rejected with a 404.
  const DefinitionArgs({
    this.approvalMode,
    this.avatar,
    this.customInstructions,
    this.definitionID,
    this.displayName,
    this.enabledIntegrations,
    this.modelProvider,
    this.name,
    required this.orgName,
    this.permissionMode,
    this.purpose,
    this.reasoningEffort,
    this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalMode': ?approvalMode,
      'avatar': ?avatar,
      'customInstructions': ?customInstructions,
      'definitionID': ?definitionID,
      'displayName': ?displayName,
      'enabledIntegrations': ?enabledIntegrations,
      'modelProvider': ?modelProvider,
      'name': ?name,
      'orgName': orgName,
      'permissionMode': ?permissionMode,
      'purpose': ?purpose,
      'reasoningEffort': ?reasoningEffort,
      'roleId': ?roleId,
    };
  }

  factory DefinitionArgs.fromMap(Map<String, dynamic> map) {
    return DefinitionArgs(
      approvalMode: (() { final guardedValue = map['approvalMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      avatar: (() { final guardedValue = map['avatar']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customInstructions: (() { final guardedValue = map['customInstructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      definitionID: (() { final guardedValue = map['definitionID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledIntegrations: (() { final guardedValue = map['enabledIntegrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      modelProvider: (() { final guardedValue = map['modelProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      permissionMode: (() { final guardedValue = map['permissionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purpose: (() { final guardedValue = map['purpose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reasoningEffort: (() { final guardedValue = map['reasoningEffort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
