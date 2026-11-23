// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_remote_a2a_agent_a2a_config_agent_card_skill.dart';
import 'agent_remote_a2a_agent_a2a_config_agent_card_supported_interface.dart';

class AgentRemoteA2aAgentA2aConfigAgentCard {
  /// A description of the agent's domain of action/solution space.
  final pulumi.Input<String> description;
  /// A human-readable name for the agent.
  final pulumi.Input<String> name;
  /// Skills represent a unit of ability an agent can perform. This may
  /// somewhat abstract but represents a more focused set of actions that the
  /// agent is highly likely to succeed at.
  /// Structure is documented below.
  final pulumi.Input<List<AgentRemoteA2aAgentA2aConfigAgentCardSkill>> skills;
  /// Ordered list of supported interfaces. The first entry is preferred.
  /// Structure is documented below.
  final pulumi.Input<List<AgentRemoteA2aAgentA2aConfigAgentCardSupportedInterface>> supportedInterfaces;
  /// The version of the agent.
  final pulumi.Input<String> version;

  /// Creates a new [AgentRemoteA2aAgentA2aConfigAgentCard].
  /// [description] A description of the agent's domain of action/solution space.
  /// [name] A human-readable name for the agent.
  /// [skills] Skills represent a unit of ability an agent can perform. This may
  /// [supportedInterfaces] Ordered list of supported interfaces. The first entry is preferred.
  /// [version] The version of the agent.
  const AgentRemoteA2aAgentA2aConfigAgentCard({
    required this.description,
    required this.name,
    required this.skills,
    required this.supportedInterfaces,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'skills': pulumi.Input.mapInputValue<List<AgentRemoteA2aAgentA2aConfigAgentCardSkill>, List<Map<String, dynamic>>>(skills, (value) => pulumi.Input.encodeList<AgentRemoteA2aAgentA2aConfigAgentCardSkill, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportedInterfaces': pulumi.Input.mapInputValue<List<AgentRemoteA2aAgentA2aConfigAgentCardSupportedInterface>, List<Map<String, dynamic>>>(supportedInterfaces, (value) => pulumi.Input.encodeList<AgentRemoteA2aAgentA2aConfigAgentCardSupportedInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': version,
    };
  }

  factory AgentRemoteA2aAgentA2aConfigAgentCard.fromMap(Map<String, dynamic> map) {
    return AgentRemoteA2aAgentA2aConfigAgentCard(
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      skills: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentRemoteA2aAgentA2aConfigAgentCardSkill>(map['skills']!, (value) => AgentRemoteA2aAgentA2aConfigAgentCardSkill.fromMap((value as Map).cast<String, dynamic>()))),
      supportedInterfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentRemoteA2aAgentA2aConfigAgentCardSupportedInterface>(map['supportedInterfaces']!, (value) => AgentRemoteA2aAgentA2aConfigAgentCardSupportedInterface.fromMap((value as Map).cast<String, dynamic>()))),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
