// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_condition_patch.dart';

/// Status of the storage version migration.
class StorageVersionMigrationStatusPatch {
  /// The latest available observations of the migration's current state.
  final List<MigrationConditionPatch>? conditions;
  /// ResourceVersion to compare with the GC cache for performing the migration. This is the current resource version of given group, version and resource when kube-controller-manager first observes this StorageVersionMigration resource.
  final String? resourceVersion;

  /// Creates a new [StorageVersionMigrationStatusPatch].
  /// [conditions] The latest available observations of the migration's current state.
  /// [resourceVersion] ResourceVersion to compare with the GC cache for performing the migration. This is the current resource version of given group, version and resource when kube-controller-manager first observes this StorageVersionMigration resource.
  StorageVersionMigrationStatusPatch({
    this.conditions,
    this.resourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<MigrationConditionPatch, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'resourceVersion': ?resourceVersion,
    };
  }

  factory StorageVersionMigrationStatusPatch.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationStatusPatch(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<MigrationConditionPatch>(map['conditions'], (value) => MigrationConditionPatch.fromMap((value as Map).cast<String, dynamic>())),
      resourceVersion: map['resourceVersion'] == null ? null : map['resourceVersion'] as String,
    );
  }
}

