// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_version_resource_patch.dart';

/// Spec of the storage version migration.
class StorageVersionMigrationSpecPatch {
  /// The token used in the list options to get the next chunk of objects to migrate. When the .status.conditions indicates the migration is "Running", users can use this token to check the progress of the migration.
  final pulumi.Input<String>? continueToken;
  /// The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  final pulumi.Input<GroupVersionResourcePatch>? resource;

  /// Creates a new [StorageVersionMigrationSpecPatch].
  /// [continueToken] The token used in the list options to get the next chunk of objects to migrate. When the .status.conditions indicates the migration is "Running", users can use this token to check the progress of the migration.
  /// [resource] The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  const StorageVersionMigrationSpecPatch({
    this.continueToken,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueToken': ?continueToken,
      'resource': ?pulumi.Input.mapOptionalInputValue<GroupVersionResourcePatch, Map<String, dynamic>>(resource, (value) => value.toMap()),
    };
  }

  factory StorageVersionMigrationSpecPatch.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationSpecPatch(
      continueToken: (() { final guardedValue = map['continueToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupVersionResourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

