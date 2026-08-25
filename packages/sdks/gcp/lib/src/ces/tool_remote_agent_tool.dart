// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_remote_agent_tool_agent_card.dart';

class ToolRemoteAgentTool {
  /// (Output)
  /// The agent card of the remote agent that this tool invokes.
  /// Structure is documented below.
  final pulumi.Input<List<ToolRemoteAgentToolAgentCard>?>? agentCards;
  /// (Output)
  /// The description of the system tool.
  final pulumi.Input<String?>? description;
  /// (Output)
  /// The name of the system tool.
  final pulumi.Input<String?>? name;

  /// Creates a new [ToolRemoteAgentTool].
  /// [agentCards] (Output)
  /// [description] (Output)
  /// [name] (Output)
  const ToolRemoteAgentTool({
    this.agentCards,
    this.description,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCards': ?pulumi.Input.mapOptionalInputValue<List<ToolRemoteAgentToolAgentCard>, List<Map<String, dynamic>>>(agentCards, (value) => pulumi.Input.encodeList<ToolRemoteAgentToolAgentCard, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': ?name,
    };
  }

  factory ToolRemoteAgentTool.fromMap(Map<String, dynamic> map) {
    return ToolRemoteAgentTool(
      agentCards: (() { final guardedValue = map['agentCards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolRemoteAgentToolAgentCard>(guardedValue, (value) => ToolRemoteAgentToolAgentCard.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
