// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff {
  /// The maximum duration the backoff delay can accrue to for container restarts. If not set, defaults to the internal crashloopbackoff maximum. The value must be a positive duration string no more than `"5m"` and no less than `"1s"`, such as `"30s"`, `"1m30s"`, `"2.5m"`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". See [Configurable container restart delay](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#configurable-container-restart-delay) for more details.
  final pulumi.Input<String>? maxContainerRestartPeriod;

  /// Creates a new [ClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff].
  /// [maxContainerRestartPeriod] The maximum duration the backoff delay can accrue to for container restarts. If not set, defaults to the internal crashloopbackoff maximum. The value must be a positive duration string no more than `"5m"` and no less than `"1s"`, such as `"30s"`, `"1m30s"`, `"2.5m"`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". See [Configurable container restart delay](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#configurable-container-restart-delay) for more details.
  const ClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff({
    this.maxContainerRestartPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxContainerRestartPeriod': ?maxContainerRestartPeriod,
    };
  }

  factory ClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff(
      maxContainerRestartPeriod: (() { final guardedValue = map['maxContainerRestartPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
