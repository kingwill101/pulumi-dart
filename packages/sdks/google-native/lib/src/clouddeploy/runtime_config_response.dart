// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_run_config_response.dart';
import 'kubernetes_config_response.dart';

/// RuntimeConfig contains the runtime specific configurations for a deployment strategy.
class RuntimeConfigResponse {
  /// Cloud Run runtime configuration.
  final pulumi.Input<CloudRunConfigResponse> cloudRun;
  /// Kubernetes runtime configuration.
  final pulumi.Input<KubernetesConfigResponse> kubernetes;

  /// Creates a new [RuntimeConfigResponse].
  /// [cloudRun] Cloud Run runtime configuration.
  /// [kubernetes] Kubernetes runtime configuration.
  const RuntimeConfigResponse({
    required this.cloudRun,
    required this.kubernetes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRun': pulumi.Input.mapInputValue<CloudRunConfigResponse, Map<String, dynamic>>(cloudRun, (value) => value.toMap()),
      'kubernetes': pulumi.Input.mapInputValue<KubernetesConfigResponse, Map<String, dynamic>>(kubernetes, (value) => value.toMap()),
    };
  }

  factory RuntimeConfigResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeConfigResponse(
      cloudRun: pulumi.Input.fromValue(CloudRunConfigResponse.fromMap((map['cloudRun']! as Map).cast<String, dynamic>())),
      kubernetes: pulumi.Input.fromValue(KubernetesConfigResponse.fromMap((map['kubernetes']! as Map).cast<String, dynamic>())),
    );
  }
}
