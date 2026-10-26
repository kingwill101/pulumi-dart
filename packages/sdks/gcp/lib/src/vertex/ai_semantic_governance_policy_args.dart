// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_semantic_governance_policy_agent_response_customization.dart';
import 'ai_semantic_governance_policy_mcp_tools.dart';

/// {@template pulumi_vertex_ai_semantic_governance_policy_ai_semantic_governance_policy_args_doc}
/// The set of arguments for AiSemanticGovernancePolicy.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_semantic_governance_policy_ai_semantic_governance_policy_args_doc}
class AiSemanticGovernancePolicyArgs {
  /// The name of the agent in Agent Registry that is affected by this policy.
  final pulumi.Input<String> agent;
  /// Settings for customizing the agent's response to end users when this policy is evaluated.
  /// Structure is documented below.
  final pulumi.Input<AiSemanticGovernancePolicyAgentResponseCustomization?>? agentResponseCustomization;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the SemanticGovernancePolicy.
  final pulumi.Input<String?>? description;
  /// The user-defined name of the SemanticGovernancePolicy.
  final pulumi.Input<String?>? displayName;
  /// The McpTools that are affected by this policy.
  /// Structure is documented below.
  final pulumi.Input<AiSemanticGovernancePolicyMcpTools?>? mcpTools;
  /// The natural language constraint of the SemanticGovernancePolicy.
  final pulumi.Input<String> naturalLanguageConstraint;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the SemanticGovernancePolicy, e.g. 'us-central1'.
  final pulumi.Input<String?>? region;
  /// The ID of the SemanticGovernancePolicy, which will become the final component of the resource name.
  /// This value may be up to 63 characters, and valid characters are [a-z0-9-]. The first character cannot be a number or hyphen. The last character must be a letter or a number.
  final pulumi.Input<String> semanticGovernancePolicyId;

  /// Creates a new [AiSemanticGovernancePolicyArgs].
  /// [agent] The name of the agent in Agent Registry that is affected by this policy.
  /// [agentResponseCustomization] Settings for customizing the agent's response to end users when this policy is evaluated.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the SemanticGovernancePolicy.
  /// [displayName] The user-defined name of the SemanticGovernancePolicy.
  /// [mcpTools] The McpTools that are affected by this policy.
  /// [naturalLanguageConstraint] The natural language constraint of the SemanticGovernancePolicy.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the SemanticGovernancePolicy, e.g. 'us-central1'.
  /// [semanticGovernancePolicyId] The ID of the SemanticGovernancePolicy, which will become the final component of the resource name.
  const AiSemanticGovernancePolicyArgs({
    required this.agent,
    this.agentResponseCustomization,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.mcpTools,
    required this.naturalLanguageConstraint,
    this.project,
    this.region,
    required this.semanticGovernancePolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': agent,
      'agentResponseCustomization': ?pulumi.Input.mapOptionalInputValue<AiSemanticGovernancePolicyAgentResponseCustomization, Map<String, dynamic>>(agentResponseCustomization, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'mcpTools': ?pulumi.Input.mapOptionalInputValue<AiSemanticGovernancePolicyMcpTools, Map<String, dynamic>>(mcpTools, (value) => value.toMap()),
      'naturalLanguageConstraint': naturalLanguageConstraint,
      'project': ?project,
      'region': ?region,
      'semanticGovernancePolicyId': semanticGovernancePolicyId,
    };
  }

  factory AiSemanticGovernancePolicyArgs.fromMap(Map<String, dynamic> map) {
    return AiSemanticGovernancePolicyArgs(
      agent: pulumi.Input.fromValue(map['agent'] as String),
      agentResponseCustomization: (() { final guardedValue = map['agentResponseCustomization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSemanticGovernancePolicyAgentResponseCustomization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mcpTools: (() { final guardedValue = map['mcpTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSemanticGovernancePolicyMcpTools.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      naturalLanguageConstraint: pulumi.Input.fromValue(map['naturalLanguageConstraint'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      semanticGovernancePolicyId: pulumi.Input.fromValue(map['semanticGovernancePolicyId'] as String),
    );
  }
}
