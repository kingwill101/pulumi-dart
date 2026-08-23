// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadWorkloadPropertyFunctionalType {
  /// (Output)
  /// Output only. The functional type of a service or workload.
  final pulumi.Input<String>? type;

  /// Creates a new [WorkloadWorkloadPropertyFunctionalType].
  /// [type] (Output)
  const WorkloadWorkloadPropertyFunctionalType({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory WorkloadWorkloadPropertyFunctionalType.fromMap(Map<String, dynamic> map) {
    return WorkloadWorkloadPropertyFunctionalType(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
