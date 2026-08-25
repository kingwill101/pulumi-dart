// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_spec_deployment_spec_agent_gateway_config_agent_to_anywhere_config.dart';
import 'ai_reasoning_engine_spec_deployment_spec_agent_gateway_config_client_to_agent_config.dart';

class AiReasoningEngineSpecDeploymentSpecAgentGatewayConfig {
  /// Optional. Configuration for traffic originating from the Reasoning Engine.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigAgentToAnywhereConfig?>? agentToAnywhereConfig;
  /// Optional. Configuration for traffic targeting the Reasoning Engine.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigClientToAgentConfig?>? clientToAgentConfig;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpecAgentGatewayConfig].
  /// [agentToAnywhereConfig] Optional. Configuration for traffic originating from the Reasoning Engine.
  /// [clientToAgentConfig] Optional. Configuration for traffic targeting the Reasoning Engine.
  const AiReasoningEngineSpecDeploymentSpecAgentGatewayConfig({
    this.agentToAnywhereConfig,
    this.clientToAgentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentToAnywhereConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigAgentToAnywhereConfig, Map<String, dynamic>>(agentToAnywhereConfig, (value) => value.toMap()),
      'clientToAgentConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigClientToAgentConfig, Map<String, dynamic>>(clientToAgentConfig, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineSpecDeploymentSpecAgentGatewayConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecDeploymentSpecAgentGatewayConfig(
      agentToAnywhereConfig: (() { final guardedValue = map['agentToAnywhereConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigAgentToAnywhereConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientToAgentConfig: (() { final guardedValue = map['clientToAgentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecDeploymentSpecAgentGatewayConfigClientToAgentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
