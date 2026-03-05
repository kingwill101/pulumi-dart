// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_node_pool_config.dart';
import 'gke_node_pool_target_roles_item.dart';

/// GKE node pools that Dataproc workloads run on.
class GkeNodePoolTarget {
  /// The target GKE node pool. Format: 'projects/{project}/locations/{location}/clusters/{cluster}/nodePools/{node_pool}'
  final pulumi.Input<String> nodePool;
  /// Input only. The configuration for the GKE node pool.If specified, Dataproc attempts to create a node pool with the specified shape. If one with the same name already exists, it is verified against all specified fields. If a field differs, the virtual cluster creation will fail.If omitted, any node pool with the specified name is used. If a node pool with the specified name does not exist, Dataproc create a node pool with default values.This is an input only field. It will not be returned by the API.
  final pulumi.Input<GkeNodePoolConfig>? nodePoolConfig;
  /// The roles associated with the GKE node pool.
  final pulumi.Input<List<GkeNodePoolTargetRolesItem>> roles;

  /// Creates a new [GkeNodePoolTarget].
  /// [nodePool] The target GKE node pool. Format: 'projects/{project}/locations/{location}/clusters/{cluster}/nodePools/{node_pool}'
  /// [nodePoolConfig] Input only. The configuration for the GKE node pool.If specified, Dataproc attempts to create a node pool with the specified shape. If one with the same name already exists, it is verified against all specified fields. If a field differs, the virtual cluster creation will fail.If omitted, any node pool with the specified name is used. If a node pool with the specified name does not exist, Dataproc create a node pool with default values.This is an input only field. It will not be returned by the API.
  /// [roles] The roles associated with the GKE node pool.
  GkeNodePoolTarget({
    required this.nodePool,
    this.nodePoolConfig,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePool': nodePool,
      'nodePoolConfig': ?pulumi.Input.mapOptionalInputValue<GkeNodePoolConfig, Map<String, dynamic>>(nodePoolConfig, (value) => value.toMap()),
      'roles': pulumi.Input.mapInputValue<List<GkeNodePoolTargetRolesItem>, List<String>>(roles, (value) => pulumi.Input.encodeList<GkeNodePoolTargetRolesItem, String>(value, (value) => value.wireValue)),
    };
  }

  factory GkeNodePoolTarget.fromMap(Map<String, dynamic> map) {
    return GkeNodePoolTarget(
      nodePool: pulumi.Input.fromValue(map['nodePool'] as String),
      nodePoolConfig: (() { final guardedValue = map['nodePoolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GkeNodePoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roles: pulumi.Input.fromValue(pulumi.Input.decodeList<GkeNodePoolTargetRolesItem>(map['roles']!, (value) => GkeNodePoolTargetRolesItem.fromValue(value as String))),
    );
  }
}

