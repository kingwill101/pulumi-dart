// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigKubeletConfigCrashLoopBackOff {
  /// The maximum duration the backoff delay can accrue to for container restarts.
  final pulumi.Input<String> maxContainerRestartPeriod;

  /// Creates a new [GetClusterNodeConfigKubeletConfigCrashLoopBackOff].
  /// [maxContainerRestartPeriod] The maximum duration the backoff delay can accrue to for container restarts.
  const GetClusterNodeConfigKubeletConfigCrashLoopBackOff({
    required this.maxContainerRestartPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxContainerRestartPeriod': maxContainerRestartPeriod,
    };
  }

  factory GetClusterNodeConfigKubeletConfigCrashLoopBackOff.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigKubeletConfigCrashLoopBackOff(
      maxContainerRestartPeriod: pulumi.Input.fromValue(map['maxContainerRestartPeriod'] as String),
    );
  }
}
