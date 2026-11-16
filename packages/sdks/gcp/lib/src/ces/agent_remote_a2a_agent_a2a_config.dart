// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_remote_a2a_agent_a2a_config_agent_card.dart';
import 'agent_remote_a2a_agent_a2a_config_api_authentication.dart';

class AgentRemoteA2aAgentA2aConfig {
  /// The full agent card defined inline.
  final pulumi.Input<AgentRemoteA2aAgentA2aConfigAgentCard?>? agentCard;
  /// Reference to the agent in the Agent Registry.
  /// Format: 'projects/{project}/locations/{location}/agents/{agent}'
  final pulumi.Input<String?>? agentRegistry;
  /// Authentication configuration for calling the remote agent.
  /// Optional if the registry reference already handles authentication.
  final pulumi.Input<AgentRemoteA2aAgentA2aConfigApiAuthentication?>? apiAuthentication;
  /// If not empty, interactions with the remote A2A agent will use this context
  /// ID. This contextId field can refer to a session variable like
  /// '$context.variables.order_agent_session_id'.
  final pulumi.Input<String?>? contextId;
  /// Mapping of input variable names of remote agent to GECX variable names.
  final pulumi.Input<Map<String, String>?>? inputVariableMapping;
  /// Mapping of output variable names of remote agent to GECX variable names.
  final pulumi.Input<Map<String, String>?>? outputVariableMapping;
  /// Whether streaming is enabled for the remote agent.
  final pulumi.Input<bool?>? streamingEnabled;

  /// Creates a new [AgentRemoteA2aAgentA2aConfig].
  /// [agentCard] The full agent card defined inline.
  /// [agentRegistry] Reference to the agent in the Agent Registry.
  /// [apiAuthentication] Authentication configuration for calling the remote agent.
  /// [contextId] If not empty, interactions with the remote A2A agent will use this context
  /// [inputVariableMapping] Mapping of input variable names of remote agent to GECX variable names.
  /// [outputVariableMapping] Mapping of output variable names of remote agent to GECX variable names.
  /// [streamingEnabled] Whether streaming is enabled for the remote agent.
  const AgentRemoteA2aAgentA2aConfig({
    this.agentCard,
    this.agentRegistry,
    this.apiAuthentication,
    this.contextId,
    this.inputVariableMapping,
    this.outputVariableMapping,
    this.streamingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCard': ?pulumi.Input.mapOptionalInputValue<AgentRemoteA2aAgentA2aConfigAgentCard, Map<String, dynamic>>(agentCard, (value) => value.toMap()),
      'agentRegistry': ?agentRegistry,
      'apiAuthentication': ?pulumi.Input.mapOptionalInputValue<AgentRemoteA2aAgentA2aConfigApiAuthentication, Map<String, dynamic>>(apiAuthentication, (value) => value.toMap()),
      'contextId': ?contextId,
      'inputVariableMapping': ?inputVariableMapping,
      'outputVariableMapping': ?outputVariableMapping,
      'streamingEnabled': ?streamingEnabled,
    };
  }

  factory AgentRemoteA2aAgentA2aConfig.fromMap(Map<String, dynamic> map) {
    return AgentRemoteA2aAgentA2aConfig(
      agentCard: (() { final guardedValue = map['agentCard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentRemoteA2aAgentA2aConfigAgentCard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentRegistry: (() { final guardedValue = map['agentRegistry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiAuthentication: (() { final guardedValue = map['apiAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentRemoteA2aAgentA2aConfigApiAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contextId: (() { final guardedValue = map['contextId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputVariableMapping: (() { final guardedValue = map['inputVariableMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      outputVariableMapping: (() { final guardedValue = map['outputVariableMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      streamingEnabled: (() { final guardedValue = map['streamingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
