// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigClientToAgentConfig {
  /// Required. The resource name of the Agent Gateway to use for inbound traffic.
  final pulumi.Input<String> agentGateway;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigClientToAgentConfig].
  /// [agentGateway] Required. The resource name of the Agent Gateway to use for inbound traffic.
  const AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigClientToAgentConfig({
    required this.agentGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGateway': agentGateway,
    };
  }

  factory AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigClientToAgentConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigClientToAgentConfig(
      agentGateway: pulumi.Input.fromValue(map['agentGateway'] as String),
    );
  }
}
