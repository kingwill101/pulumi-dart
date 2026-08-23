// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff {
  /// The maximum duration the backoff delay can accrue to for container restarts.
  final pulumi.Input<String> maxContainerRestartPeriod;

  /// Creates a new [GetClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff].
  /// [maxContainerRestartPeriod] The maximum duration the backoff delay can accrue to for container restarts.
  const GetClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff({
    required this.maxContainerRestartPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxContainerRestartPeriod': maxContainerRestartPeriod,
    };
  }

  factory GetClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff(
      maxContainerRestartPeriod: pulumi.Input.fromValue(map['maxContainerRestartPeriod'] as String),
    );
  }
}
