// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigKubeletConfigMemoryManager {
  /// The [Memory
  /// Manager](https://kubernetes.io/docs/tasks/administer-cluster/memory-manager/)
  /// policy can be set to None (default) or Static. This policy dictates how memory alignment is handled on the node.  If unset (or set to the empty string `""`), the API will treat the field as if set to "None".
  final pulumi.Input<String>? policy;

  /// Creates a new [ClusterNodeConfigKubeletConfigMemoryManager].
  /// [policy] The [Memory
  ClusterNodeConfigKubeletConfigMemoryManager({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory ClusterNodeConfigKubeletConfigMemoryManager.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigKubeletConfigMemoryManager(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

