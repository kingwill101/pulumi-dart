// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigKubeletConfigTopologyManager {
  /// The Topology Manager policy to use. This policy dictates how resource alignment is handled on the node.
  final pulumi.Input<String> policy;
  /// The Topology Manager scope, defining the granularity at which policy decisions are applied. Valid values are "container" (resources are aligned per container within a pod) or "pod" (resources are aligned for the entire pod).
  final pulumi.Input<String> scope;

  /// Creates a new [GetClusterNodeConfigKubeletConfigTopologyManager].
  /// [policy] The Topology Manager policy to use. This policy dictates how resource alignment is handled on the node.
  /// [scope] The Topology Manager scope, defining the granularity at which policy decisions are applied. Valid values are "container" (resources are aligned per container within a pod) or "pod" (resources are aligned for the entire pod).
  GetClusterNodeConfigKubeletConfigTopologyManager({
    required this.policy,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'scope': scope,
    };
  }

  factory GetClusterNodeConfigKubeletConfigTopologyManager.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigKubeletConfigTopologyManager(
      policy: (map['policy'] as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

