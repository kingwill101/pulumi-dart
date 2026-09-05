// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_condition.dart';

/// Status of the storage version migration.
class StorageVersionMigrationStatusStoragemigrationK8sIoV1alpha1 {
  /// The latest available observations of the migration's current state.
  final pulumi.Input<List<MigrationCondition>?>? conditions;
  /// ResourceVersion to compare with the GC cache for performing the migration. This is the current resource version of given group, version and resource when kube-controller-manager first observes this StorageVersionMigration resource.
  final pulumi.Input<String?>? resourceVersion;

  /// Creates a new [StorageVersionMigrationStatusStoragemigrationK8sIoV1alpha1].
  /// [conditions] The latest available observations of the migration's current state.
  /// [resourceVersion] ResourceVersion to compare with the GC cache for performing the migration. This is the current resource version of given group, version and resource when kube-controller-manager first observes this StorageVersionMigration resource.
  const StorageVersionMigrationStatusStoragemigrationK8sIoV1alpha1({
    this.conditions,
    this.resourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<MigrationCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<MigrationCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceVersion': ?resourceVersion,
    };
  }

  factory StorageVersionMigrationStatusStoragemigrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationStatusStoragemigrationK8sIoV1alpha1(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MigrationCondition>(guardedValue, (value) => MigrationCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceVersion: (() { final guardedValue = map['resourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
