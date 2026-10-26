// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_semantic_governance_policy_agent_response_customization.dart';
import 'ai_semantic_governance_policy_mcp_tools.dart';

/// Input properties used for looking up and filtering AiSemanticGovernancePolicy resources.
class AiSemanticGovernancePolicyState {
  /// The name of the agent in Agent Registry that is affected by this policy.
  final pulumi.Input<String?>? agent;
  /// Represents the principal of the agent, used by the Policy Decision Point (PDP) for governance checks.
  /// For more information, see https://docs.cloud.google.com/agent-builder/agent-engine/agent-identity.
  /// Format: `principal://TRUST_DOMAIN/NAMESPACE/AGENT_NAME`
  final pulumi.Input<String?>? agentIdentity;
  /// Settings for customizing the agent's response to end users when this policy is evaluated.
  /// Structure is documented below.
  final pulumi.Input<AiSemanticGovernancePolicyAgentResponseCustomization?>? agentResponseCustomization;
  /// The time the SemanticGovernancePolicy was created, in RFC3339 UTC "Zulu" format.
  final pulumi.Input<String?>? createTime;
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
  /// Used to perform consistent read-modify-write transactions.
  final pulumi.Input<String?>? etag;
  /// The McpTools that are affected by this policy.
  /// Structure is documented below.
  final pulumi.Input<AiSemanticGovernancePolicyMcpTools?>? mcpTools;
  /// The resource name of the SemanticGovernancePolicy, in the form
  /// 'projects/{project}/locations/{location}/semanticGovernancePolicies/{semantic_governance_policy}'.
  final pulumi.Input<String?>? name;
  /// The natural language constraint of the SemanticGovernancePolicy.
  final pulumi.Input<String?>? naturalLanguageConstraint;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the SemanticGovernancePolicy, e.g. 'us-central1'.
  final pulumi.Input<String?>? region;
  /// The ID of the SemanticGovernancePolicy, which will become the final component of the resource name.
  /// This value may be up to 63 characters, and valid characters are [a-z0-9-]. The first character cannot be a number or hyphen. The last character must be a letter or a number.
  final pulumi.Input<String?>? semanticGovernancePolicyId;
  /// The time the SemanticGovernancePolicy was last updated, in RFC3339 UTC "Zulu" format.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AiSemanticGovernancePolicyState].
  /// [agent] The name of the agent in Agent Registry that is affected by this policy.
  /// [agentIdentity] Represents the principal of the agent, used by the Policy Decision Point (PDP) for governance checks.
  /// [agentResponseCustomization] Settings for customizing the agent's response to end users when this policy is evaluated.
  /// [createTime] The time the SemanticGovernancePolicy was created, in RFC3339 UTC "Zulu" format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the SemanticGovernancePolicy.
  /// [displayName] The user-defined name of the SemanticGovernancePolicy.
  /// [etag] Used to perform consistent read-modify-write transactions.
  /// [mcpTools] The McpTools that are affected by this policy.
  /// [name] The resource name of the SemanticGovernancePolicy, in the form
  /// [naturalLanguageConstraint] The natural language constraint of the SemanticGovernancePolicy.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the SemanticGovernancePolicy, e.g. 'us-central1'.
  /// [semanticGovernancePolicyId] The ID of the SemanticGovernancePolicy, which will become the final component of the resource name.
  /// [updateTime] The time the SemanticGovernancePolicy was last updated, in RFC3339 UTC "Zulu" format.
  const AiSemanticGovernancePolicyState({
    this.agent,
    this.agentIdentity,
    this.agentResponseCustomization,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.etag,
    this.mcpTools,
    this.name,
    this.naturalLanguageConstraint,
    this.project,
    this.region,
    this.semanticGovernancePolicyId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': ?agent,
      'agentIdentity': ?agentIdentity,
      'agentResponseCustomization': ?pulumi.Input.mapOptionalInputValue<AiSemanticGovernancePolicyAgentResponseCustomization, Map<String, dynamic>>(agentResponseCustomization, (value) => value.toMap()),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'mcpTools': ?pulumi.Input.mapOptionalInputValue<AiSemanticGovernancePolicyMcpTools, Map<String, dynamic>>(mcpTools, (value) => value.toMap()),
      'name': ?name,
      'naturalLanguageConstraint': ?naturalLanguageConstraint,
      'project': ?project,
      'region': ?region,
      'semanticGovernancePolicyId': ?semanticGovernancePolicyId,
      'updateTime': ?updateTime,
    };
  }

  factory AiSemanticGovernancePolicyState.fromMap(Map<String, dynamic> map) {
    return AiSemanticGovernancePolicyState(
      agent: (() { final guardedValue = map['agent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentIdentity: (() { final guardedValue = map['agentIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentResponseCustomization: (() { final guardedValue = map['agentResponseCustomization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSemanticGovernancePolicyAgentResponseCustomization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mcpTools: (() { final guardedValue = map['mcpTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSemanticGovernancePolicyMcpTools.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      naturalLanguageConstraint: (() { final guardedValue = map['naturalLanguageConstraint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      semanticGovernancePolicyId: (() { final guardedValue = map['semanticGovernancePolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
