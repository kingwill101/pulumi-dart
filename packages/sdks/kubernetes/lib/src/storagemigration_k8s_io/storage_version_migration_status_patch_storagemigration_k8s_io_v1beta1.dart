// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';

/// Status of the storage version migration.
class StorageVersionMigrationStatusPatchStoragemigrationK8sIoV1beta1 {
  /// The latest available observations of the migration's current state.
  final pulumi.Input<List<ConditionPatch>>? conditions;
  /// ResourceVersion to compare with the GC cache for performing the migration. This is the current resource version of given group, version and resource when kube-controller-manager first observes this StorageVersionMigration resource.
  final pulumi.Input<String>? resourceVersion;

  /// Creates a new [StorageVersionMigrationStatusPatchStoragemigrationK8sIoV1beta1].
  /// [conditions] The latest available observations of the migration's current state.
  /// [resourceVersion] ResourceVersion to compare with the GC cache for performing the migration. This is the current resource version of given group, version and resource when kube-controller-manager first observes this StorageVersionMigration resource.
  StorageVersionMigrationStatusPatchStoragemigrationK8sIoV1beta1({
    this.conditions,
    this.resourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceVersion': ?resourceVersion,
    };
  }

  factory StorageVersionMigrationStatusPatchStoragemigrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationStatusPatchStoragemigrationK8sIoV1beta1(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ConditionPatch>(map['conditions'], (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceVersion: map['resourceVersion'] == null ? null : (map['resourceVersion'] as String).input(),
    );
  }
}

