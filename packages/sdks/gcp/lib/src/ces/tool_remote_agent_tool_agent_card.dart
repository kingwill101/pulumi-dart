// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_remote_agent_tool_agent_card_skill.dart';
import 'tool_remote_agent_tool_agent_card_supported_interface.dart';

class ToolRemoteAgentToolAgentCard {
  /// (Output)
  /// The description of the system tool.
  final pulumi.Input<String>? description;
  /// (Output)
  /// The name of the system tool.
  final pulumi.Input<String>? name;
  /// (Output)
  /// Skills represent a unit of ability an agent can perform. This may
  /// somewhat abstract but represents a more focused set of actions that the agent is highly
  /// likely to succeed at.
  /// Structure is documented below.
  final pulumi.Input<List<ToolRemoteAgentToolAgentCardSkill>>? skills;
  /// (Output)
  /// Ordered list of supported interfaces. The first entry is preferred.
  /// Structure is documented below.
  final pulumi.Input<List<ToolRemoteAgentToolAgentCardSupportedInterface>>? supportedInterfaces;
  /// (Output)
  /// The version of the agent.
  final pulumi.Input<String>? version;

  /// Creates a new [ToolRemoteAgentToolAgentCard].
  /// [description] (Output)
  /// [name] (Output)
  /// [skills] (Output)
  /// [supportedInterfaces] (Output)
  /// [version] (Output)
  const ToolRemoteAgentToolAgentCard({
    this.description,
    this.name,
    this.skills,
    this.supportedInterfaces,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'skills': ?pulumi.Input.mapOptionalInputValue<List<ToolRemoteAgentToolAgentCardSkill>, List<Map<String, dynamic>>>(skills, (value) => pulumi.Input.encodeList<ToolRemoteAgentToolAgentCardSkill, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportedInterfaces': ?pulumi.Input.mapOptionalInputValue<List<ToolRemoteAgentToolAgentCardSupportedInterface>, List<Map<String, dynamic>>>(supportedInterfaces, (value) => pulumi.Input.encodeList<ToolRemoteAgentToolAgentCardSupportedInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory ToolRemoteAgentToolAgentCard.fromMap(Map<String, dynamic> map) {
    return ToolRemoteAgentToolAgentCard(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skills: (() { final guardedValue = map['skills']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolRemoteAgentToolAgentCardSkill>(guardedValue, (value) => ToolRemoteAgentToolAgentCardSkill.fromMap((value as Map).cast<String, dynamic>()))); })(),
      supportedInterfaces: (() { final guardedValue = map['supportedInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolRemoteAgentToolAgentCardSupportedInterface>(guardedValue, (value) => ToolRemoteAgentToolAgentCardSupportedInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
