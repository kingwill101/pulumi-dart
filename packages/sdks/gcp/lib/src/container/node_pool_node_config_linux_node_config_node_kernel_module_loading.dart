// ignore_for_file: unused_element, unnecessary_cast


class NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading {
  /// The policy for kernel module loading.
  final String? policy;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading].
  /// [policy] The policy for kernel module loading.
  NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading(
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}

