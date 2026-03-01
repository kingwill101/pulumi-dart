// ignore_for_file: unused_element, unnecessary_cast

import '../meta/group_resource.dart';

/// Spec of the storage version migration.
class StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1 {
  /// The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  final GroupResource resource;

  /// Creates a new [StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1].
  /// [resource] The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1({
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': resource.toMap(),
    };
  }

  factory StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1(
      resource: GroupResource.fromMap((map['resource'] as Map).cast<String, dynamic>()),
    );
  }
}

