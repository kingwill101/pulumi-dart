// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading {
  /// The policy for kernel module loading.
  final pulumi.Input<String?>? policy;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading].
  /// [policy] The policy for kernel module loading.
  const NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
