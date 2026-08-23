// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading {
  /// The policy for kernel module loading.
  final pulumi.Input<String> policy;

  /// Creates a new [GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading].
  /// [policy] The policy for kernel module loading.
  const GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
    };
  }

  factory GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading(
      policy: pulumi.Input.fromValue(map['policy'] as String),
    );
  }
}
