// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerResourcePolicies {
  /// The URL of the workload policy that is specified for this managed instance group. It can be a full or partial URL.
  final pulumi.Input<String>? workloadPolicy;

  /// Creates a new [InstanceGroupManagerResourcePolicies].
  /// [workloadPolicy] The URL of the workload policy that is specified for this managed instance group. It can be a full or partial URL.
  InstanceGroupManagerResourcePolicies({
    this.workloadPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workloadPolicy': ?workloadPolicy,
    };
  }

  factory InstanceGroupManagerResourcePolicies.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerResourcePolicies(
      workloadPolicy: map['workloadPolicy'] == null ? null : (map['workloadPolicy']! as String).input(),
    );
  }
}

