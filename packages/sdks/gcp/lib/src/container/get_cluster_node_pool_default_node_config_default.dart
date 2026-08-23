// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_default_node_config_default_containerd_config.dart';
import 'get_cluster_node_pool_default_node_config_default_gcfs_config.dart';

class GetClusterNodePoolDefaultNodeConfigDefault {
  /// Parameters for containerd configuration.
  final pulumi.Input<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig>> containerdConfigs;
  /// GCFS configuration for this node.
  final pulumi.Input<List<GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig>> gcfsConfigs;
  /// Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final pulumi.Input<String> insecureKubeletReadonlyPortEnabled;
  /// Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT.
  final pulumi.Input<String> loggingVariant;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefault].
  /// [containerdConfigs] Parameters for containerd configuration.
  /// [gcfsConfigs] GCFS configuration for this node.
  /// [insecureKubeletReadonlyPortEnabled] Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  /// [loggingVariant] Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT.
  const GetClusterNodePoolDefaultNodeConfigDefault({
    required this.containerdConfigs,
    required this.gcfsConfigs,
    required this.insecureKubeletReadonlyPortEnabled,
    required this.loggingVariant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerdConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig>, List<Map<String, dynamic>>>(containerdConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gcfsConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig>, List<Map<String, dynamic>>>(gcfsConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'insecureKubeletReadonlyPortEnabled': insecureKubeletReadonlyPortEnabled,
      'loggingVariant': loggingVariant,
    };
  }

  factory GetClusterNodePoolDefaultNodeConfigDefault.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefault(
      containerdConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig>(map['containerdConfigs']!, (value) => GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig.fromMap((value as Map).cast<String, dynamic>()))),
      gcfsConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig>(map['gcfsConfigs']!, (value) => GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig.fromMap((value as Map).cast<String, dynamic>()))),
      insecureKubeletReadonlyPortEnabled: pulumi.Input.fromValue(map['insecureKubeletReadonlyPortEnabled'] as String),
      loggingVariant: pulumi.Input.fromValue(map['loggingVariant'] as String),
    );
  }
}
