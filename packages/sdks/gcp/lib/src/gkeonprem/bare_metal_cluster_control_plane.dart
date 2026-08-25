// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_control_plane_api_server_arg.dart';
import 'bare_metal_cluster_control_plane_control_plane_node_pool_config.dart';

class BareMetalClusterControlPlane {
  /// Customizes the default API server args. Only a subset of
  /// customized flags are supported. Please refer to the API server
  /// documentation below to know the exact format:
  /// https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalClusterControlPlaneApiServerArg>?>? apiServerArgs;
  /// Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster's control plane. The NodePool will have the same name and namespace as the cluster.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterControlPlaneControlPlaneNodePoolConfig> controlPlaneNodePoolConfig;

  /// Creates a new [BareMetalClusterControlPlane].
  /// [apiServerArgs] Customizes the default API server args. Only a subset of
  /// [controlPlaneNodePoolConfig] Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster's control plane. The NodePool will have the same name and namespace as the cluster.
  const BareMetalClusterControlPlane({
    this.apiServerArgs,
    required this.controlPlaneNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerArgs': ?pulumi.Input.mapOptionalInputValue<List<BareMetalClusterControlPlaneApiServerArg>, List<Map<String, dynamic>>>(apiServerArgs, (value) => pulumi.Input.encodeList<BareMetalClusterControlPlaneApiServerArg, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controlPlaneNodePoolConfig': pulumi.Input.mapInputValue<BareMetalClusterControlPlaneControlPlaneNodePoolConfig, Map<String, dynamic>>(controlPlaneNodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalClusterControlPlane.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterControlPlane(
      apiServerArgs: (() { final guardedValue = map['apiServerArgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalClusterControlPlaneApiServerArg>(guardedValue, (value) => BareMetalClusterControlPlaneApiServerArg.fromMap((value as Map).cast<String, dynamic>()))); })(),
      controlPlaneNodePoolConfig: pulumi.Input.fromValue(BareMetalClusterControlPlaneControlPlaneNodePoolConfig.fromMap((map['controlPlaneNodePoolConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
