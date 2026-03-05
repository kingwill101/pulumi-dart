// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkloadPolicyConfig is the configuration of workload policy for autopilot clusters.
class WorkloadPolicyConfig {
  /// If true, workloads can use NET_ADMIN capability.
  final pulumi.Input<bool>? allowNetAdmin;

  /// Creates a new [WorkloadPolicyConfig].
  /// [allowNetAdmin] If true, workloads can use NET_ADMIN capability.
  WorkloadPolicyConfig({
    this.allowNetAdmin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNetAdmin': ?allowNetAdmin,
    };
  }

  factory WorkloadPolicyConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadPolicyConfig(
      allowNetAdmin: (() { final guardedValue = map['allowNetAdmin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

