// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodePoolNodeConfigKubeletConfigMemoryManager {
  /// The Memory Manager policy to use. This policy guides how memory and hugepages are allocated and managed for pods on the node, influencing NUMA affinity.
  final String policy;

  /// Creates a new [GetClusterNodePoolNodeConfigKubeletConfigMemoryManager].
  /// [policy] The Memory Manager policy to use. This policy guides how memory and hugepages are allocated and managed for pods on the node, influencing NUMA affinity.
  GetClusterNodePoolNodeConfigKubeletConfigMemoryManager({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
    };
  }

  factory GetClusterNodePoolNodeConfigKubeletConfigMemoryManager.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigKubeletConfigMemoryManager(
      policy: map['policy'] as String,
    );
  }
}

