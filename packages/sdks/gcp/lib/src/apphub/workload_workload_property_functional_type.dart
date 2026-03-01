// ignore_for_file: unused_element, unnecessary_cast


class WorkloadWorkloadPropertyFunctionalType {
  /// (Output)
  /// Output only. The functional type of a service or workload.
  final String? type;

  /// Creates a new [WorkloadWorkloadPropertyFunctionalType].
  /// [type] (Output)
  WorkloadWorkloadPropertyFunctionalType({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory WorkloadWorkloadPropertyFunctionalType.fromMap(Map<String, dynamic> map) {
    return WorkloadWorkloadPropertyFunctionalType(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

