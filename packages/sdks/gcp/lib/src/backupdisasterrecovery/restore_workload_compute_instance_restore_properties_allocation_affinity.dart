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

  factory RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity(
      consumeAllocationType: map['consumeAllocationType'] == null ? null : (map['consumeAllocationType'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

