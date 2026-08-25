// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterOrchestratorSlurmLoginNodesInstance {
  /// Name of the VM instance, in the format
  /// 'projects/{project}/zones/{zone}/instances/{instance}'.
  final pulumi.Input<String?>? instance;

  /// Creates a new [ClusterOrchestratorSlurmLoginNodesInstance].
  /// [instance] Name of the VM instance, in the format
  const ClusterOrchestratorSlurmLoginNodesInstance({
    this.instance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': ?instance,
    };
  }

  factory ClusterOrchestratorSlurmLoginNodesInstance.fromMap(Map<String, dynamic> map) {
    return ClusterOrchestratorSlurmLoginNodesInstance(
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
