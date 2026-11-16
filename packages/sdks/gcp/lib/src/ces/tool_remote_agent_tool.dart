// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_remote_agent_tool_agent_card.dart';
import 'tool_remote_agent_tool_api_authentication.dart';

class ToolRemoteAgentTool {
  /// (Output)
  /// The agent card of the remote agent that this tool invokes.
  /// Structure is documented below.
  final pulumi.Input<List<ToolRemoteAgentToolAgentCard>?>? agentCards;
  /// (Output)
  /// Authentication information required for calling the remote agent.
  /// Structure is documented below.
  final pulumi.Input<List<ToolRemoteAgentToolApiAuthentication>?>? apiAuthentications;
  /// (Output)
  /// The description of the system tool.
  final pulumi.Input<String?>? description;
  /// (Output)
  /// Mapping of input variable names of remote agent to GECX variable names.
  final pulumi.Input<Map<String, String>?>? inputVariableMapping;
  /// (Output)
  /// The name of the system tool.
  final pulumi.Input<String?>? name;
  /// (Output)
  /// Mapping of output variable names of remote agent to GECX variable names.
  final pulumi.Input<Map<String, String>?>? outputVariableMapping;
  /// (Output)
  /// When enabled, the interaction between the CXAS app and the remote agent
  /// will share the same context. If the remote agent returns a context_id, it
  /// will be persisted for the entirety of the session for this remote agent
  /// tool.
  final pulumi.Input<bool?>? statefulAgent;

  /// Creates a new [ToolRemoteAgentTool].
  /// [agentCards] (Output)
  /// [apiAuthentications] (Output)
  /// [description] (Output)
  /// [inputVariableMapping] (Output)
  /// [name] (Output)
  /// [outputVariableMapping] (Output)
  /// [statefulAgent] (Output)
  const ToolRemoteAgentTool({
    this.agentCards,
    this.apiAuthentications,
    this.description,
    this.inputVariableMapping,
    this.name,
    this.outputVariableMapping,
    this.statefulAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCards': ?pulumi.Input.mapOptionalInputValue<List<ToolRemoteAgentToolAgentCard>, List<Map<String, dynamic>>>(agentCards, (value) => pulumi.Input.encodeList<ToolRemoteAgentToolAgentCard, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiAuthentications': ?pulumi.Input.mapOptionalInputValue<List<ToolRemoteAgentToolApiAuthentication>, List<Map<String, dynamic>>>(apiAuthentications, (value) => pulumi.Input.encodeList<ToolRemoteAgentToolApiAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'inputVariableMapping': ?inputVariableMapping,
      'name': ?name,
      'outputVariableMapping': ?outputVariableMapping,
      'statefulAgent': ?statefulAgent,
    };
  }

  factory ToolRemoteAgentTool.fromMap(Map<String, dynamic> map) {
    return ToolRemoteAgentTool(
      agentCards: (() { final guardedValue = map['agentCards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolRemoteAgentToolAgentCard>(guardedValue, (value) => ToolRemoteAgentToolAgentCard.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiAuthentications: (() { final guardedValue = map['apiAuthentications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolRemoteAgentToolApiAuthentication>(guardedValue, (value) => ToolRemoteAgentToolApiAuthentication.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputVariableMapping: (() { final guardedValue = map['inputVariableMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputVariableMapping: (() { final guardedValue = map['outputVariableMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      statefulAgent: (() { final guardedValue = map['statefulAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
