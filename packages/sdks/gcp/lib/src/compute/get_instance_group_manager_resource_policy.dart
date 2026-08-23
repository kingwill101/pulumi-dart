// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceGroupManagerResourcePolicy {
  /// The URL of the workload policy that is specified for this managed instance group. It can be a full or partial URL.
  final pulumi.Input<String> workloadPolicy;

  /// Creates a new [GetInstanceGroupManagerResourcePolicy].
  /// [workloadPolicy] The URL of the workload policy that is specified for this managed instance group. It can be a full or partial URL.
  const GetInstanceGroupManagerResourcePolicy({
    required this.workloadPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workloadPolicy': workloadPolicy,
    };
  }

  factory GetInstanceGroupManagerResourcePolicy.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerResourcePolicy(
      workloadPolicy: pulumi.Input.fromValue(map['workloadPolicy'] as String),
    );
  }
}
