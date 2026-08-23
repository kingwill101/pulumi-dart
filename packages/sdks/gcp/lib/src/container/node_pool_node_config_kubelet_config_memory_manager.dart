// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigKubeletConfigMemoryManager {
  /// The Memory Manager policy to use. This policy guides how memory and hugepages are allocated and managed for pods on the node, influencing NUMA affinity.
  final pulumi.Input<String>? policy;

  /// Creates a new [NodePoolNodeConfigKubeletConfigMemoryManager].
  /// [policy] The Memory Manager policy to use. This policy guides how memory and hugepages are allocated and managed for pods on the node, influencing NUMA affinity.
  const NodePoolNodeConfigKubeletConfigMemoryManager({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory NodePoolNodeConfigKubeletConfigMemoryManager.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigKubeletConfigMemoryManager(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
