// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_run_config.dart';
import 'kubernetes_config.dart';

/// RuntimeConfig contains the runtime specific configurations for a deployment strategy.
class RuntimeConfig {
  /// Cloud Run runtime configuration.
  final pulumi.Input<CloudRunConfig>? cloudRun;
  /// Kubernetes runtime configuration.
  final pulumi.Input<KubernetesConfig>? kubernetes;

  /// Creates a new [RuntimeConfig].
  /// [cloudRun] Cloud Run runtime configuration.
  /// [kubernetes] Kubernetes runtime configuration.
  const RuntimeConfig({
    this.cloudRun,
    this.kubernetes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRun': ?pulumi.Input.mapOptionalInputValue<CloudRunConfig, Map<String, dynamic>>(cloudRun, (value) => value.toMap()),
      'kubernetes': ?pulumi.Input.mapOptionalInputValue<KubernetesConfig, Map<String, dynamic>>(kubernetes, (value) => value.toMap()),
    };
  }

  factory RuntimeConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeConfig(
      cloudRun: (() { final guardedValue = map['cloudRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudRunConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetes: (() { final guardedValue = map['kubernetes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
