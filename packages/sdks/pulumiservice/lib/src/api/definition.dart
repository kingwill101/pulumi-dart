import 'package:pulumi/pulumi.dart' as pulumi;
import 'definition_args.dart';

/// Creates a Custom Agent definition for the organization from the supplied configuration (name, optional RBAC role, integrations, and instructions). Requires agent_definitions:create, granted to organization admins by default. Returns the created definition including its generated id. Returns 404 if a supplied role does not exist in the organization.
class Definition extends pulumi.CustomResource {
  /// The approval posture the agent's runs inherit. When omitted, runs are auto-approved, matching scheduled automations.
  late final pulumi.Output<String?> approvalMode;
  /// A presentation token the console maps to an icon. Not an uploaded asset.
  late final pulumi.Output<String?> avatar;
  /// Instructions that shape how the agent behaves in the team's environment.
  late final pulumi.Output<String?> customInstructions;
  /// The unique identifier of the agent definition.
  late final pulumi.Output<String> definitionID;
  /// The human-readable label shown wherever the agent is displayed. Falls back to the name when the agent has none.
  late final pulumi.Output<String> displayName;
  /// The integrations enabled for the agent's tasks, by id. Omitted or null inherits all organization integrations; an empty list enables none.
  late final pulumi.Output<List<dynamic>?> enabledIntegrations;
  /// The agent's name: lower-case letters, digits and hyphens, unique within the organization. This is the stable handle a person writes down -- in an automation, in a CLI invocation -- and it may be changed, because everything that references an agent internally references it by id.
  late final pulumi.Output<String> name;
  /// When the agent was paused, or null if it is not paused. A paused agent starts no new runs from any source -- console, schedule, or trigger -- until it is resumed; runs already in flight continue.
  late final pulumi.Output<String?> pausedAt;
  /// Who paused the agent, by user id. Null when the agent is not paused. Recorded by the server from the caller rather than supplied by the client.
  late final pulumi.Output<String?> pausedBy;
  /// Why the agent was paused. Null when it is not paused, or when no reason was given.
  late final pulumi.Output<String?> pausedReason;
  /// Deprecated. Custom Agent authority is controlled by roleId.
  late final pulumi.Output<String?> permissionMode;
  /// A one-line description of what this agent is for, shown under its name in the roster.
  late final pulumi.Output<String?> purpose;
  /// The RBAC role id the agent's tasks assume, identified by role id. Null means no assumed role: tasks run with the invoking user's own permissions.
  late final pulumi.Output<String?> roleId;
  /// Run counts for this agent, shown on its roster card.
  late final pulumi.Output<dynamic> taskCounts;

  /// Creates a new [Definition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Definition]. {@macro pulumi_api_agents_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Definition(
    String name, {
    DefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/agents:Definition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    approvalMode = registerOutput<String?>('approvalMode');
    avatar = registerOutput<String?>('avatar');
    customInstructions = registerOutput<String?>('customInstructions');
    definitionID = registerOutput<String>('definitionID');
    displayName = registerOutput<String>('displayName');
    enabledIntegrations = registerOutput<List<dynamic>?>('enabledIntegrations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    this.name = registerOutput<String>('name');
    pausedAt = registerOutput<String?>('pausedAt');
    pausedBy = registerOutput<String?>('pausedBy');
    pausedReason = registerOutput<String?>('pausedReason');
    permissionMode = registerOutput<String?>('permissionMode');
    purpose = registerOutput<String?>('purpose');
    roleId = registerOutput<String?>('roleId');
    taskCounts = registerOutput<dynamic>('taskCounts');
  }

  /// Creates a typed reference to an existing [Definition] resource.
  Definition.reference(String urn)
    : super(
        'pulumiservice:api/agents:Definition',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    approvalMode = registerOutput<String?>('approvalMode');
    avatar = registerOutput<String?>('avatar');
    customInstructions = registerOutput<String?>('customInstructions');
    definitionID = registerOutput<String>('definitionID');
    displayName = registerOutput<String>('displayName');
    enabledIntegrations = registerOutput<List<dynamic>?>('enabledIntegrations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    this.name = registerOutput<String>('name');
    pausedAt = registerOutput<String?>('pausedAt');
    pausedBy = registerOutput<String?>('pausedBy');
    pausedReason = registerOutput<String?>('pausedReason');
    permissionMode = registerOutput<String?>('permissionMode');
    purpose = registerOutput<String?>('purpose');
    roleId = registerOutput<String?>('roleId');
    taskCounts = registerOutput<dynamic>('taskCounts');
  }
}
