// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkloadPolicyConfig is the configuration of workload policy for autopilot clusters.
class WorkloadPolicyConfigContainerV1beta1 {
  /// If true, workloads can use NET_ADMIN capability.
  final pulumi.Input<bool>? allowNetAdmin;

  /// Creates a new [WorkloadPolicyConfigContainerV1beta1].
  /// [allowNetAdmin] If true, workloads can use NET_ADMIN capability.
  WorkloadPolicyConfigContainerV1beta1({
    this.allowNetAdmin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNetAdmin': ?allowNetAdmin,
    };
  }

  factory WorkloadPolicyConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkloadPolicyConfigContainerV1beta1(
      allowNetAdmin: map['allowNetAdmin'] == null ? null : (map['allowNetAdmin']! as bool).input(),
    );
  }
}

