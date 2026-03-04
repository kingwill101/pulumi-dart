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

  factory RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operator: (() {
        final guardedValue = map['operator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
