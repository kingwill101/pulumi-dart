// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_remote_a2a_agent_a2a_config.dart';

class AgentRemoteA2aAgent {
  /// The A2A connection configuration.
  final pulumi.Input<AgentRemoteA2aAgentA2aConfig> a2aConfig;

  /// Creates a new [AgentRemoteA2aAgent].
  /// [a2aConfig] The A2A connection configuration.
  const AgentRemoteA2aAgent({
    required this.a2aConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'a2aConfig': pulumi.Input.mapInputValue<AgentRemoteA2aAgentA2aConfig, Map<String, dynamic>>(a2aConfig, (value) => value.toMap()),
    };
  }

  factory AgentRemoteA2aAgent.fromMap(Map<String, dynamic> map) {
    return AgentRemoteA2aAgent(
      a2aConfig: pulumi.Input.fromValue(AgentRemoteA2aAgentA2aConfig.fromMap((map['a2aConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
