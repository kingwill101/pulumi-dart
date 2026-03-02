// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity {
  /// (Optional)
  final pulumi.Input<String>? key;
  /// Possible values are: `OPERATOR_UNSPECIFIED`, `IN`, `NOT_IN`.
  final pulumi.Input<String>? operator;
  /// (Optional)
  final pulumi.Input<List<String>>? values;

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
      key: map['key'] == null ? null : (map['key']! as String).input(),
      operator: map['operator'] == null ? null : (map['operator']! as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

