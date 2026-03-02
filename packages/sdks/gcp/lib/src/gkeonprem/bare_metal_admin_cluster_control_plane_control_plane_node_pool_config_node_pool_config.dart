// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_control_plane_control_plane_node_pool_config_node_pool_config_node_config.dart';
import 'bare_metal_admin_cluster_control_plane_control_plane_node_pool_config_node_pool_config_taint.dart';

class BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig {
  /// The labels assigned to nodes of this node pool.
  /// An object containing a list of key/value pairs.
  /// Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? labels;
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig>>? nodeConfigs;
  /// The available Operating Systems to be run in a Node.
  final pulumi.Input<String>? operatingSystem;
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint>>? taints;

  /// Creates a new [BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig].
  /// [labels] The labels assigned to nodes of this node pool.
  /// [nodeConfigs] Structure is documented below.
  /// [operatingSystem] The available Operating Systems to be run in a Node.
  /// [taints] Structure is documented below.
  BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig({
    this.labels,
    this.nodeConfigs,
    this.operatingSystem,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'nodeConfigs': ?pulumi.Input.mapOptionalInputValue<List<BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig>, List<Map<String, dynamic>>>(nodeConfigs, (value) => pulumi.Input.encodeList<BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operatingSystem': ?operatingSystem,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig(
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      nodeConfigs: map['nodeConfigs'] == null ? null : (pulumi.Input.decodeList<BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig>(map['nodeConfigs']!, (value) => BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      operatingSystem: map['operatingSystem'] == null ? null : (map['operatingSystem']! as String).input(),
      taints: map['taints'] == null ? null : (pulumi.Input.decodeList<BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint>(map['taints']!, (value) => BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

