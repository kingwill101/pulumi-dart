// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_condition_patch.dart';

/// Status of the storage version migration.
class StorageVersionMigrationStatusPatchStoragemigrationK8sIoV1alpha1 {
  /// The latest available observations of the migration's current state.
  final pulumi.Input<List<MigrationConditionPatch>?>? conditions;
  /// ResourceVersion to compare with the GC cache for performing the migration. This is the current resource version of given group, version and resource when kube-controller-manager first observes this StorageVersionMigration resource.
  final pulumi.Input<String?>? resourceVersion;

  /// Creates a new [StorageVersionMigrationStatusPatchStoragemigrationK8sIoV1alpha1].
  /// [conditions] The latest available observations of the migration's current state.
  /// [resourceVersion] ResourceVersion to compare with the GC cache for performing the migration. This is the current resource version of given group, version and resource when kube-controller-manager first observes this StorageVersionMigration resource.
  const StorageVersionMigrationStatusPatchStoragemigrationK8sIoV1alpha1({
    this.conditions,
    this.resourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<MigrationConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<MigrationConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceVersion': ?resourceVersion,
    };
  }

  factory StorageVersionMigrationStatusPatchStoragemigrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationStatusPatchStoragemigrationK8sIoV1alpha1(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MigrationConditionPatch>(guardedValue, (value) => MigrationConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceVersion: (() { final guardedValue = map['resourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
