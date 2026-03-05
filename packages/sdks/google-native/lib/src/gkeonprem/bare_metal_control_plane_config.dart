// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_api_server_argument.dart';
import 'bare_metal_control_plane_node_pool_config.dart';

/// Specifies the control plane configuration.
class BareMetalControlPlaneConfig {
  /// Customizes the default API server args. Only a subset of customized flags are supported. For the exact format, refer to the [API server documentation](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/).
  final pulumi.Input<List<BareMetalApiServerArgument>>? apiServerArgs;
  /// Configures the node pool running the control plane.
  final pulumi.Input<BareMetalControlPlaneNodePoolConfig> controlPlaneNodePoolConfig;

  /// Creates a new [BareMetalControlPlaneConfig].
  /// [apiServerArgs] Customizes the default API server args. Only a subset of customized flags are supported. For the exact format, refer to the [API server documentation](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/).
  /// [controlPlaneNodePoolConfig] Configures the node pool running the control plane.
  BareMetalControlPlaneConfig({
    this.apiServerArgs,
    required this.controlPlaneNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerArgs': ?pulumi.Input.mapOptionalInputValue<List<BareMetalApiServerArgument>, List<Map<String, dynamic>>>(apiServerArgs, (value) => pulumi.Input.encodeList<BareMetalApiServerArgument, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controlPlaneNodePoolConfig': pulumi.Input.mapInputValue<BareMetalControlPlaneNodePoolConfig, Map<String, dynamic>>(controlPlaneNodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalControlPlaneConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalControlPlaneConfig(
      apiServerArgs: (() { final guardedValue = map['apiServerArgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalApiServerArgument>(guardedValue, (value) => BareMetalApiServerArgument.fromMap((value as Map).cast<String, dynamic>()))); })(),
      controlPlaneNodePoolConfig: pulumi.Input.fromValue(BareMetalControlPlaneNodePoolConfig.fromMap((map['controlPlaneNodePoolConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

