// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity {
  /// Possible values are: `TYPE_UNSPECIFIED`, `NO_RESERVATION`, `ANY_RESERVATION`, `SPECIFIC_RESERVATION`.
  final pulumi.Input<String>? consumeAllocationType;

  /// (Optional)
  final pulumi.Input<String>? key;

  /// (Optional)
  final pulumi.Input<List<String>>? values;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity].
  /// [consumeAllocationType] Possible values are: `TYPE_UNSPECIFIED`, `NO_RESERVATION`, `ANY_RESERVATION`, `SPECIFIC_RESERVATION`.
  /// [key] (Optional)
  /// [values] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity({
    this.consumeAllocationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeAllocationType': ?consumeAllocationType,
      'key': ?key,
      'values': ?values,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity(
      consumeAllocationType: (() {
        final guardedValue = map['consumeAllocationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
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
