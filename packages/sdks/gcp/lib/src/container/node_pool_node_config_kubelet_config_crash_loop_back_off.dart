// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigKubeletConfigCrashLoopBackOff {
  /// The maximum duration the backoff delay can accrue to for container restarts.
  final pulumi.Input<String?>? maxContainerRestartPeriod;

  /// Creates a new [NodePoolNodeConfigKubeletConfigCrashLoopBackOff].
  /// [maxContainerRestartPeriod] The maximum duration the backoff delay can accrue to for container restarts.
  const NodePoolNodeConfigKubeletConfigCrashLoopBackOff({
    this.maxContainerRestartPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxContainerRestartPeriod': ?maxContainerRestartPeriod,
    };
  }

  factory NodePoolNodeConfigKubeletConfigCrashLoopBackOff.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigKubeletConfigCrashLoopBackOff(
      maxContainerRestartPeriod: (() { final guardedValue = map['maxContainerRestartPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
