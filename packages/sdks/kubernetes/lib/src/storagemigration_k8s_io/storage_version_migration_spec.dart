// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_version_resource.dart';

/// Spec of the storage version migration.
class StorageVersionMigrationSpec {
  /// The token used in the list options to get the next chunk of objects to migrate. When the .status.conditions indicates the migration is "Running", users can use this token to check the progress of the migration.
  final pulumi.Input<String>? continueToken;
  /// The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  final pulumi.Input<GroupVersionResource> resource;

  /// Creates a new [StorageVersionMigrationSpec].
  /// [continueToken] The token used in the list options to get the next chunk of objects to migrate. When the .status.conditions indicates the migration is "Running", users can use this token to check the progress of the migration.
  /// [resource] The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  StorageVersionMigrationSpec({
    this.continueToken,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueToken': ?continueToken,
      'resource': pulumi.Input.mapInputValue<GroupVersionResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
    };
  }

  factory StorageVersionMigrationSpec.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationSpec(
      continueToken: map['continueToken'] == null ? null : (map['continueToken']! as String).input(),
      resource: (GroupVersionResource.fromMap((map['resource'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

