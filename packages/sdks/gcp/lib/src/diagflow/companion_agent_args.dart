// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'companion_agent_ces_tool_spec.dart';
import 'companion_agent_skill_config.dart';
import 'companion_agent_toolset_tool.dart';

/// {@template pulumi_diagflow_companion_agent_companion_agent_args_doc}
/// The set of arguments for CompanionAgent.
/// {@endtemplate}
/// {@macro pulumi_diagflow_companion_agent_companion_agent_args_doc}
class CompanionAgentArgs {
  /// List of CES tool specs that the companion agent can choose from.
  /// Structure is documented below.
  final pulumi.Input<List<CompanionAgentCesToolSpec>?>? cesToolSpecs;
  /// The ID to use for the companion agent, which will become the final component of the companion agent's resource name.
  final pulumi.Input<String> companionAgentId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description for the companion agent.
  final pulumi.Input<String?>? description;
  /// Display name for the companion agent.
  final pulumi.Input<String?>? displayName;
  /// The location of the companion agent.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// List of skill configs for the companion agent.
  /// At most one skill config of each type (for example, at most one `guidanceSkillConfig`) may be configured.
  /// Structure is documented below.
  final pulumi.Input<List<CompanionAgentSkillConfig>?>? skillConfigs;
  /// List of CES toolset specs that the companion agent can choose from.
  /// Structure is documented below.
  final pulumi.Input<List<CompanionAgentToolsetTool>?>? toolsetTools;

  /// Creates a new [CompanionAgentArgs].
  /// [cesToolSpecs] List of CES tool specs that the companion agent can choose from.
  /// [companionAgentId] The ID to use for the companion agent, which will become the final component of the companion agent's resource name.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description for the companion agent.
  /// [displayName] Display name for the companion agent.
  /// [location] The location of the companion agent.
  /// [project] The ID of the project in which the resource belongs.
  /// [skillConfigs] List of skill configs for the companion agent.
  /// [toolsetTools] List of CES toolset specs that the companion agent can choose from.
  const CompanionAgentArgs({
    this.cesToolSpecs,
    required this.companionAgentId,
    this.deletionPolicy,
    this.description,
    this.displayName,
    required this.location,
    this.project,
    this.skillConfigs,
    this.toolsetTools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cesToolSpecs': ?pulumi.Input.mapOptionalInputValue<List<CompanionAgentCesToolSpec>, List<Map<String, dynamic>>>(cesToolSpecs, (value) => pulumi.Input.encodeList<CompanionAgentCesToolSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'companionAgentId': companionAgentId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
      'skillConfigs': ?pulumi.Input.mapOptionalInputValue<List<CompanionAgentSkillConfig>, List<Map<String, dynamic>>>(skillConfigs, (value) => pulumi.Input.encodeList<CompanionAgentSkillConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toolsetTools': ?pulumi.Input.mapOptionalInputValue<List<CompanionAgentToolsetTool>, List<Map<String, dynamic>>>(toolsetTools, (value) => pulumi.Input.encodeList<CompanionAgentToolsetTool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CompanionAgentArgs.fromMap(Map<String, dynamic> map) {
    return CompanionAgentArgs(
      cesToolSpecs: (() { final guardedValue = map['cesToolSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompanionAgentCesToolSpec>(guardedValue, (value) => CompanionAgentCesToolSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      companionAgentId: pulumi.Input.fromValue(map['companionAgentId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skillConfigs: (() { final guardedValue = map['skillConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompanionAgentSkillConfig>(guardedValue, (value) => CompanionAgentSkillConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      toolsetTools: (() { final guardedValue = map['toolsetTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompanionAgentToolsetTool>(guardedValue, (value) => CompanionAgentToolsetTool.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
