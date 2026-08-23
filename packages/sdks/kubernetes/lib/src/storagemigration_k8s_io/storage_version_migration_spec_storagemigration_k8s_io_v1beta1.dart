// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/group_resource.dart';

/// Spec of the storage version migration.
class StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1 {
  /// The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  final pulumi.Input<GroupResource> resource;

  /// Creates a new [StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1].
  /// [resource] The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  const StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1({
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': pulumi.Input.mapInputValue<GroupResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
    };
  }

  factory StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1(
      resource: pulumi.Input.fromValue(GroupResource.fromMap((map['resource']! as Map).cast<String, dynamic>())),
    );
  }
}
