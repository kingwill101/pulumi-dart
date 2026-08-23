// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigAgentToAnywhereConfig {
  /// Required. The resource name of the Agent Gateway for outbound traffic.
  final pulumi.Input<String> agentGateway;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigAgentToAnywhereConfig].
  /// [agentGateway] Required. The resource name of the Agent Gateway for outbound traffic.
  const AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigAgentToAnywhereConfig({
    required this.agentGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGateway': agentGateway,
    };
  }

  factory AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigAgentToAnywhereConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigAgentToAnywhereConfig(
      agentGateway: pulumi.Input.fromValue(map['agentGateway'] as String),
    );
  }
}
