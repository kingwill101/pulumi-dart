// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/group_resource_patch.dart';

/// Spec of the storage version migration.
class StorageVersionMigrationSpecPatch {
  /// The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  final pulumi.Input<GroupResourcePatch?>? resource;

  /// Creates a new [StorageVersionMigrationSpecPatch].
  /// [resource] The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  const StorageVersionMigrationSpecPatch({
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?pulumi.Input.mapOptionalInputValue<GroupResourcePatch, Map<String, dynamic>>(resource, (value) => value.toMap()),
    };
  }

  factory StorageVersionMigrationSpecPatch.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationSpecPatch(
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupResourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
