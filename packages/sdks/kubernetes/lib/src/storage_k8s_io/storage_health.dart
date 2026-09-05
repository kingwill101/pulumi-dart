// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_health_condition.dart';

/// StorageHealth contains storage backend health reported by a CSI driver on a node.
class StorageHealth {
  /// healthConditions are the adverse storage backend conditions reported by the CSI driver. At most 16 conditions may be reported.
  final pulumi.Input<List<StorageHealthCondition>?>? healthConditions;
  /// name is the CSI driver name, matching CSINodeDriver.name.
  final pulumi.Input<String> name;

  /// Creates a new [StorageHealth].
  /// [healthConditions] healthConditions are the adverse storage backend conditions reported by the CSI driver. At most 16 conditions may be reported.
  /// [name] name is the CSI driver name, matching CSINodeDriver.name.
  const StorageHealth({
    this.healthConditions,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthConditions': ?pulumi.Input.mapOptionalInputValue<List<StorageHealthCondition>, List<Map<String, dynamic>>>(healthConditions, (value) => pulumi.Input.encodeList<StorageHealthCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory StorageHealth.fromMap(Map<String, dynamic> map) {
    return StorageHealth(
      healthConditions: (() { final guardedValue = map['healthConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageHealthCondition>(guardedValue, (value) => StorageHealthCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
