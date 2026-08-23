// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'canary_deployment.dart';
import 'custom_canary_deployment.dart';
import 'runtime_config.dart';

/// Canary represents the canary deployment strategy.
class Canary {
  /// Configures the progressive based deployment for a Target.
  final pulumi.Input<CanaryDeployment>? canaryDeployment;
  /// Configures the progressive based deployment for a Target, but allows customizing at the phase level where a phase represents each of the percentage deployments.
  final pulumi.Input<CustomCanaryDeployment>? customCanaryDeployment;
  /// Optional. Runtime specific configurations for the deployment strategy. The runtime configuration is used to determine how Cloud Deploy will split traffic to enable a progressive deployment.
  final pulumi.Input<RuntimeConfig>? runtimeConfig;

  /// Creates a new [Canary].
  /// [canaryDeployment] Configures the progressive based deployment for a Target.
  /// [customCanaryDeployment] Configures the progressive based deployment for a Target, but allows customizing at the phase level where a phase represents each of the percentage deployments.
  /// [runtimeConfig] Optional. Runtime specific configurations for the deployment strategy. The runtime configuration is used to determine how Cloud Deploy will split traffic to enable a progressive deployment.
  const Canary({
    this.canaryDeployment,
    this.customCanaryDeployment,
    this.runtimeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canaryDeployment': ?pulumi.Input.mapOptionalInputValue<CanaryDeployment, Map<String, dynamic>>(canaryDeployment, (value) => value.toMap()),
      'customCanaryDeployment': ?pulumi.Input.mapOptionalInputValue<CustomCanaryDeployment, Map<String, dynamic>>(customCanaryDeployment, (value) => value.toMap()),
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
    };
  }

  factory Canary.fromMap(Map<String, dynamic> map) {
    return Canary(
      canaryDeployment: (() { final guardedValue = map['canaryDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CanaryDeployment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customCanaryDeployment: (() { final guardedValue = map['customCanaryDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomCanaryDeployment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtimeConfig: (() { final guardedValue = map['runtimeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
