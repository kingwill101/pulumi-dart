// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_condition.dart';

/// Status of the storage version migration.
class StorageVersionMigrationStatus {
  /// The latest available observations of the migration's current state.
  final pulumi.Input<List<MigrationCondition>>? conditions;
  /// ResourceVersion to compare with the GC cache for performing the migration. This is the current resource version of given group, version and resource when kube-controller-manager first observes this StorageVersionMigration resource.
  final pulumi.Input<String>? resourceVersion;

  /// Creates a new [StorageVersionMigrationStatus].
  /// [conditions] The latest available observations of the migration's current state.
  /// [resourceVersion] ResourceVersion to compare with the GC cache for performing the migration. This is the current resource version of given group, version and resource when kube-controller-manager first observes this StorageVersionMigration resource.
  StorageVersionMigrationStatus({
    this.conditions,
    this.resourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<MigrationCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<MigrationCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceVersion': ?resourceVersion,
    };
  }

  factory StorageVersionMigrationStatus.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationStatus(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<MigrationCondition>(map['conditions'], (value) => MigrationCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceVersion: map['resourceVersion'] == null ? null : (map['resourceVersion'] as String).input(),
    );
  }
}

