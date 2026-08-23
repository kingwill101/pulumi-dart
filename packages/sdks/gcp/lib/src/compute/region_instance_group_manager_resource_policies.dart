// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceGroupManagerResourcePolicies {
  /// The URL of the workload policy that is specified for this managed instance group. It can be a full or partial URL.
  final pulumi.Input<String>? workloadPolicy;

  /// Creates a new [RegionInstanceGroupManagerResourcePolicies].
  /// [workloadPolicy] The URL of the workload policy that is specified for this managed instance group. It can be a full or partial URL.
  const RegionInstanceGroupManagerResourcePolicies({
    this.workloadPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workloadPolicy': ?workloadPolicy,
    };
  }

  factory RegionInstanceGroupManagerResourcePolicies.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerResourcePolicies(
      workloadPolicy: (() { final guardedValue = map['workloadPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
