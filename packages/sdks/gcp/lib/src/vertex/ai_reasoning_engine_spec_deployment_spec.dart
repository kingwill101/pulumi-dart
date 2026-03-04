// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_spec_deployment_spec_env.dart';
import 'ai_reasoning_engine_spec_deployment_spec_psc_interface_config.dart';
import 'ai_reasoning_engine_spec_deployment_spec_secret_env.dart';

class AiReasoningEngineSpecDeploymentSpec {
  /// Optional. Concurrency for each container and agent server.
  /// Recommended value: 2 * cpu + 1. Defaults to 9.
  final pulumi.Input<int>? containerConcurrency;

  /// Optional. Environment variables to be set with the Reasoning
  /// Engine deployment.
  /// Structure is documented below.
  final pulumi.Input<List<AiReasoningEngineSpecDeploymentSpecEnv>>? envs;

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
  final pulumi.Input<AiReasoningEngineSpecDeploymentSpecPscInterfaceConfig>?
  pscInterfaceConfig;

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
  final pulumi.Input<List<AiReasoningEngineSpecDeploymentSpecSecretEnv>>?
  secretEnvs;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpec].
  /// [containerConcurrency] Optional. Concurrency for each container and agent server.
  /// [envs] Optional. Environment variables to be set with the Reasoning
  /// [maxInstances] Optional. The maximum number of application instances that can be
  /// [minInstances] Optional. The minimum number of application instances that will be
  /// [pscInterfaceConfig] Optional. Configuration for PSC-Interface.
  /// [resourceLimits] Optional. Resource limits for each container.
  /// [secretEnvs] Optional. Environment variables where the value is a secret in
  AiReasoningEngineSpecDeploymentSpec({
    this.containerConcurrency,
    this.envs,
    this.maxInstances,
    this.minInstances,
    this.pscInterfaceConfig,
    this.resourceLimits,
    this.secretEnvs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerConcurrency': ?containerConcurrency,
      'envs':
          ?pulumi.Input.mapOptionalInputValue<
            List<AiReasoningEngineSpecDeploymentSpecEnv>,
            List<Map<String, dynamic>>
          >(
            envs,
            (value) =>
                pulumi.Input.encodeList<
                  AiReasoningEngineSpecDeploymentSpecEnv,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'maxInstances': ?maxInstances,
      'minInstances': ?minInstances,
      'pscInterfaceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AiReasoningEngineSpecDeploymentSpecPscInterfaceConfig,
            Map<String, dynamic>
          >(pscInterfaceConfig, (value) => value.toMap()),
      'resourceLimits': ?resourceLimits,
      'secretEnvs':
          ?pulumi.Input.mapOptionalInputValue<
            List<AiReasoningEngineSpecDeploymentSpecSecretEnv>,
            List<Map<String, dynamic>>
          >(
            secretEnvs,
            (value) =>
                pulumi.Input.encodeList<
                  AiReasoningEngineSpecDeploymentSpecSecretEnv,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AiReasoningEngineSpecDeploymentSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiReasoningEngineSpecDeploymentSpec(
      containerConcurrency: (() {
        final guardedValue = map['containerConcurrency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      envs: (() {
        final guardedValue = map['envs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AiReasoningEngineSpecDeploymentSpecEnv>(
            guardedValue,
            (value) => AiReasoningEngineSpecDeploymentSpecEnv.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      maxInstances: (() {
        final guardedValue = map['maxInstances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minInstances: (() {
        final guardedValue = map['minInstances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pscInterfaceConfig: (() {
        final guardedValue = map['pscInterfaceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiReasoningEngineSpecDeploymentSpecPscInterfaceConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceLimits: (() {
        final guardedValue = map['resourceLimits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      secretEnvs: (() {
        final guardedValue = map['secretEnvs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AiReasoningEngineSpecDeploymentSpecSecretEnv>(
            guardedValue,
            (value) => AiReasoningEngineSpecDeploymentSpecSecretEnv.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
