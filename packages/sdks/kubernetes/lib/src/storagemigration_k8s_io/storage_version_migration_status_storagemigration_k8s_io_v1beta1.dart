// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';

/// Status of the storage version migration.
class StorageVersionMigrationStatusStoragemigrationK8sIoV1beta1 {
  /// The latest available observations of the migration's current state.
  final pulumi.Input<List<Condition>>? conditions;
  /// ResourceVersion to compare with the GC cache for performing the migration. This is the current resource version of given group, version and resource when kube-controller-manager first observes this StorageVersionMigration resource.
  final pulumi.Input<String>? resourceVersion;

  /// Creates a new [StorageVersionMigrationStatusStoragemigrationK8sIoV1beta1].
  /// [conditions] The latest available observations of the migration's current state.
  /// [resourceVersion] ResourceVersion to compare with the GC cache for performing the migration. This is the current resource version of given group, version and resource when kube-controller-manager first observes this StorageVersionMigration resource.
  StorageVersionMigrationStatusStoragemigrationK8sIoV1beta1({
    this.conditions,
    this.resourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceVersion': ?resourceVersion,
    };
  }

  factory StorageVersionMigrationStatusStoragemigrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationStatusStoragemigrationK8sIoV1beta1(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<Condition>(map['conditions']!, (value) => Condition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceVersion: map['resourceVersion'] == null ? null : (map['resourceVersion']! as String).input(),
    );
  }
}

