// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading {
  /// The policy for kernel module loading.
  final pulumi.Input<String> policy;

  /// Creates a new [GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading].
  /// [policy] The policy for kernel module loading.
  GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
    };
  }

  factory GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading(
      policy: pulumi.Input.fromValue(map['policy'] as String),
    );
  }
}

