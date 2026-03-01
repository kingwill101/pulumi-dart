// ignore_for_file: unused_element, unnecessary_cast


class RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity {
  /// (Optional)
  final String? key;
  /// Possible values are: `OPERATOR_UNSPECIFIED`, `IN`, `NOT_IN`.
  final String? operator;
  /// (Optional)
  final List<String>? values;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity].
  /// [key] (Optional)
  /// [operator] Possible values are: `OPERATOR_UNSPECIFIED`, `IN`, `NOT_IN`.
  /// [values] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?operator,
      'values': ?values,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity(
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

