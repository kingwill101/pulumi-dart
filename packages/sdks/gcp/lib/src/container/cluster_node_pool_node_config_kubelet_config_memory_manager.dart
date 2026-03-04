// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigKubeletConfigMemoryManager {
  /// The [Memory
  /// Manager](https://kubernetes.io/docs/tasks/administer-cluster/memory-manager/)
  /// policy can be set to None (default) or Static. This policy dictates how memory alignment is handled on the node.  If unset (or set to the empty string `""`), the API will treat the field as if set to "None".
  final pulumi.Input<String>? policy;

  /// Creates a new [ClusterNodePoolNodeConfigKubeletConfigMemoryManager].
  /// [policy] The [Memory
  ClusterNodePoolNodeConfigKubeletConfigMemoryManager({this.policy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'policy': ?policy};
  }

  factory ClusterNodePoolNodeConfigKubeletConfigMemoryManager.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigKubeletConfigMemoryManager(
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
