// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_node_pool_config_response.dart';

/// GKE node pools that Dataproc workloads run on.
class GkeNodePoolTargetResponse {
  /// The target GKE node pool. Format: 'projects/{project}/locations/{location}/clusters/{cluster}/nodePools/{node_pool}'
  final pulumi.Input<String> nodePool;
  /// Input only. The configuration for the GKE node pool.If specified, Dataproc attempts to create a node pool with the specified shape. If one with the same name already exists, it is verified against all specified fields. If a field differs, the virtual cluster creation will fail.If omitted, any node pool with the specified name is used. If a node pool with the specified name does not exist, Dataproc create a node pool with default values.This is an input only field. It will not be returned by the API.
  final pulumi.Input<GkeNodePoolConfigResponse> nodePoolConfig;
  /// The roles associated with the GKE node pool.
  final pulumi.Input<List<String>> roles;

  /// Creates a new [GkeNodePoolTargetResponse].
  /// [nodePool] The target GKE node pool. Format: 'projects/{project}/locations/{location}/clusters/{cluster}/nodePools/{node_pool}'
  /// [nodePoolConfig] Input only. The configuration for the GKE node pool.If specified, Dataproc attempts to create a node pool with the specified shape. If one with the same name already exists, it is verified against all specified fields. If a field differs, the virtual cluster creation will fail.If omitted, any node pool with the specified name is used. If a node pool with the specified name does not exist, Dataproc create a node pool with default values.This is an input only field. It will not be returned by the API.
  /// [roles] The roles associated with the GKE node pool.
  GkeNodePoolTargetResponse({
    required this.nodePool,
    required this.nodePoolConfig,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePool': nodePool,
      'nodePoolConfig': pulumi.Input.mapInputValue<GkeNodePoolConfigResponse, Map<String, dynamic>>(nodePoolConfig, (value) => value.toMap()),
      'roles': roles,
    };
  }

  factory GkeNodePoolTargetResponse.fromMap(Map<String, dynamic> map) {
    return GkeNodePoolTargetResponse(
      nodePool: pulumi.Input.fromValue(map['nodePool'] as String),
      nodePoolConfig: pulumi.Input.fromValue(GkeNodePoolConfigResponse.fromMap((map['nodePoolConfig']! as Map).cast<String, dynamic>())),
      roles: pulumi.Input.fromValue((map['roles'] as List).cast<String>()),
    );
  }
}

