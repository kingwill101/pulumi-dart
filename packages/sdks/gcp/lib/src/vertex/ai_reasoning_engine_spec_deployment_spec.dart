// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_spec_deployment_spec_agent_gateway_config.dart';
import 'ai_reasoning_engine_spec_deployment_spec_env.dart';
import 'ai_reasoning_engine_spec_deployment_spec_keep_alive_probe.dart';
import 'ai_reasoning_engine_spec_deployment_spec_psc_interface_config.dart';
import 'ai_reasoning_engine_spec_deployment_spec_secret_env.dart';

class AiReasoningEngineSpecDeploymentSpec {
  /// (Optional, Beta)
  /// Optional. Agent Gateway configuration for a Reasoning Engine deployment.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecDeploymentSpecAgentGatewayConfig>? agentGatewayConfig;
  /// (Optional, Beta)
  /// Optional. The agent server mode specifies what features are used when deploy the agent to agent engine.
  /// Possible values:
  /// * `STABLE`: Stable agent server mode.
  /// * `EXPERIMENTAL`: Experimental agent server mode.
  /// Possible values are: `STABLE`, `EXPERIMENTAL`.
  final pulumi.Input<String>? agentServerMode;
  /// Optional. Concurrency for each container and agent server.
  /// Recommended value: 2 * cpu + 1. Defaults to 9.
  final pulumi.Input<int>? containerConcurrency;
  /// (Optional, Beta)
  /// Optional. Whether to enable dedicated ingress endpoint for the deployment. If true, the deployment will be accessible via a dedicated endpoint. This is required to enable GKE V2 runtime.
  final pulumi.Input<bool>? dedicatedIngressEndpointEnabled;
  /// Optional. Environment variables to be set with the Reasoning
  /// Engine deployment.
  /// Structure is documented below.
  final pulumi.Input<List<AiReasoningEngineSpecDeploymentSpecEnv>>? envs;
  /// (Optional, Beta)
  /// Optional. Specifies the configuration for keep-alive probe.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecDeploymentSpecKeepAliveProbe>? keepAliveProbe;
  /// Optional. The maximum number of application instances that can be
  /// launched to handle increased traffic. Defaults to 100.
  /// Range: [1, 1000]. If VPC-SC or PSC-I is enabled, the acceptable
  /// range is [1, 100].
  final pulumi.Input<int>? maxInstances;
  /// Optional. The minimum number of application instances that will be
  /// kept running at all times. Defaults to 1. Range: [0, 10].
  final pulumi.Input<int>? minInstances;
  /// Optional. Configuration for PSC-Interface.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecDeploymentSpecPscInterfaceConfig>? pscInterfaceConfig;
  /// Optional. Resource limits for each container.
  /// Only 'cpu' and 'memory' keys are supported.
  /// Defaults to {"cpu": "4", "memory": "4Gi"}.
  /// The only supported values for CPU are '1', '2', '4', '6' and '8'.
  /// For more information, go to
  /// https://cloud.google.com/run/docs/configuring/cpu.
  /// The only supported values for memory are '1Gi', '2Gi', ... '32 Gi'.
  /// For more information, go to
  /// https://cloud.google.com/run/docs/configuring/memory-limits.
  final pulumi.Input<Map<String, String>>? resourceLimits;
  /// Optional. Environment variables where the value is a secret in
  /// Cloud Secret Manager. To use this feature, add 'Secret Manager
  /// Secret Accessor' role (roles/secretmanager.secretAccessor) to AI
  /// Platform Reasoning Engine service Agent.
  /// Structure is documented below.
  final pulumi.Input<List<AiReasoningEngineSpecDeploymentSpecSecretEnv>>? secretEnvs;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpec].
  /// [agentGatewayConfig] (Optional, Beta)
  /// [agentServerMode] (Optional, Beta)
  /// [containerConcurrency] Optional. Concurrency for each container and agent server.
  /// [dedicatedIngressEndpointEnabled] (Optional, Beta)
  /// [envs] Optional. Environment variables to be set with the Reasoning
  /// [keepAliveProbe] (Optional, Beta)
  /// [maxInstances] Optional. The maximum number of application instances that can be
  /// [minInstances] Optional. The minimum number of application instances that will be
  /// [pscInterfaceConfig] Optional. Configuration for PSC-Interface.
  /// [resourceLimits] Optional. Resource limits for each container.
  /// [secretEnvs] Optional. Environment variables where the value is a secret in
  const AiReasoningEngineSpecDeploymentSpec({
    this.agentGatewayConfig,
    this.agentServerMode,
    this.containerConcurrency,
    this.dedicatedIngressEndpointEnabled,
    this.envs,
    this.keepAliveProbe,
    this.maxInstances,
    this.minInstances,
    this.pscInterfaceConfig,
    this.resourceLimits,
    this.secretEnvs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGatewayConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecDeploymentSpecAgentGatewayConfig, Map<String, dynamic>>(agentGatewayConfig, (value) => value.toMap()),
      'agentServerMode': ?agentServerMode,
      'containerConcurrency': ?containerConcurrency,
      'dedicatedIngressEndpointEnabled': ?dedicatedIngressEndpointEnabled,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<AiReasoningEngineSpecDeploymentSpecEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<AiReasoningEngineSpecDeploymentSpecEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keepAliveProbe': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecDeploymentSpecKeepAliveProbe, Map<String, dynamic>>(keepAliveProbe, (value) => value.toMap()),
      'maxInstances': ?maxInstances,
      'minInstances': ?minInstances,
      'pscInterfaceConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecDeploymentSpecPscInterfaceConfig, Map<String, dynamic>>(pscInterfaceConfig, (value) => value.toMap()),
      'resourceLimits': ?resourceLimits,
      'secretEnvs': ?pulumi.Input.mapOptionalInputValue<List<AiReasoningEngineSpecDeploymentSpecSecretEnv>, List<Map<String, dynamic>>>(secretEnvs, (value) => pulumi.Input.encodeList<AiReasoningEngineSpecDeploymentSpecSecretEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiReasoningEngineSpecDeploymentSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecDeploymentSpec(
      agentGatewayConfig: (() { final guardedValue = map['agentGatewayConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecDeploymentSpecAgentGatewayConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentServerMode: (() { final guardedValue = map['agentServerMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerConcurrency: (() { final guardedValue = map['containerConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dedicatedIngressEndpointEnabled: (() { final guardedValue = map['dedicatedIngressEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiReasoningEngineSpecDeploymentSpecEnv>(guardedValue, (value) => AiReasoningEngineSpecDeploymentSpecEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      keepAliveProbe: (() { final guardedValue = map['keepAliveProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecDeploymentSpecKeepAliveProbe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxInstances: (() { final guardedValue = map['maxInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minInstances: (() { final guardedValue = map['minInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pscInterfaceConfig: (() { final guardedValue = map['pscInterfaceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecDeploymentSpecPscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceLimits: (() { final guardedValue = map['resourceLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      secretEnvs: (() { final guardedValue = map['secretEnvs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiReasoningEngineSpecDeploymentSpecSecretEnv>(guardedValue, (value) => AiReasoningEngineSpecDeploymentSpecSecretEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
