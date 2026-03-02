// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmwareAdminClusterControlPlaneNode {
  /// The number of vCPUs for the control-plane node of the admin cluster.
  final pulumi.Input<int>? cpus;
  /// The number of mebibytes of memory for the control-plane node of the admin cluster.
  final pulumi.Input<int>? memory;
  /// The number of control plane nodes for this VMware admin cluster.
  final pulumi.Input<int>? replicas;

  /// Creates a new [VmwareAdminClusterControlPlaneNode].
  /// [cpus] The number of vCPUs for the control-plane node of the admin cluster.
  /// [memory] The number of mebibytes of memory for the control-plane node of the admin cluster.
  /// [replicas] The number of control plane nodes for this VMware admin cluster.
  VmwareAdminClusterControlPlaneNode({
    this.cpus,
    this.memory,
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpus': ?cpus,
      'memory': ?memory,
      'replicas': ?replicas,
    };
  }

  factory VmwareAdminClusterControlPlaneNode.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterControlPlaneNode(
      cpus: map['cpus'] == null ? null : (map['cpus'] as int).input(),
      memory: map['memory'] == null ? null : (map['memory'] as int).input(),
      replicas: map['replicas'] == null ? null : (map['replicas'] as int).input(),
    );
  }
}

