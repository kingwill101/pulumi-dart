// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_health_condition_patch.dart';

/// StorageHealth contains storage backend health reported by a CSI driver on a node.
class StorageHealthPatch {
  /// healthConditions are the adverse storage backend conditions reported by the CSI driver. At most 16 conditions may be reported.
  final pulumi.Input<List<StorageHealthConditionPatch>?>? healthConditions;
  /// name is the CSI driver name, matching CSINodeDriver.name.
  final pulumi.Input<String?>? name;

  /// Creates a new [StorageHealthPatch].
  /// [healthConditions] healthConditions are the adverse storage backend conditions reported by the CSI driver. At most 16 conditions may be reported.
  /// [name] name is the CSI driver name, matching CSINodeDriver.name.
  const StorageHealthPatch({
    this.healthConditions,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthConditions': ?pulumi.Input.mapOptionalInputValue<List<StorageHealthConditionPatch>, List<Map<String, dynamic>>>(healthConditions, (value) => pulumi.Input.encodeList<StorageHealthConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory StorageHealthPatch.fromMap(Map<String, dynamic> map) {
    return StorageHealthPatch(
      healthConditions: (() { final guardedValue = map['healthConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageHealthConditionPatch>(guardedValue, (value) => StorageHealthConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
