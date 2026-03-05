// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigKubeletConfigTopologyManager {
  /// The Topology Manager policy controls resource alignment on the node and can be set to one of the following: none (default), best-effort, restricted, or single-numa-node.  If unset (or set to the empty string `""`), the API will treat the field as if set to "none".
  final pulumi.Input<String>? policy;
  /// The Topology Manager scope, defining the granularity at which
  /// policy decisions are applied. Valid values are "container" (resources are aligned
  /// per container within a pod which is set by default) or "pod" (resources are aligned for the entire pod).  If unset (or set to the empty string `""`), the API will treat the field as if set to "container".
  final pulumi.Input<String>? scope;

  /// Creates a new [ClusterNodePoolNodeConfigKubeletConfigTopologyManager].
  /// [policy] The Topology Manager policy controls resource alignment on the node and can be set to one of the following: none (default), best-effort, restricted, or single-numa-node.  If unset (or set to the empty string `""`), the API will treat the field as if set to "none".
  /// [scope] The Topology Manager scope, defining the granularity at which
  ClusterNodePoolNodeConfigKubeletConfigTopologyManager({
    this.policy,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'scope': ?scope,
    };
  }

  factory ClusterNodePoolNodeConfigKubeletConfigTopologyManager.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigKubeletConfigTopologyManager(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

