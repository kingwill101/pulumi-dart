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
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      nodeConfigs: (() { final guardedValue = map['nodeConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig>(guardedValue, (value) => BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operatingSystem: (() { final guardedValue = map['operatingSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint>(guardedValue, (value) => BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

