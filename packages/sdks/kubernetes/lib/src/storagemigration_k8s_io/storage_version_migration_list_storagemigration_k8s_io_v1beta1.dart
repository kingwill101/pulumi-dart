// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'storage_version_migration_storagemigration_k8s_io_v1beta1.dart';

/// StorageVersionMigrationList is a collection of storage version migrations.
class StorageVersionMigrationListStoragemigrationK8sIoV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Items is the list of StorageVersionMigration
  final pulumi.Input<List<StorageVersionMigrationStoragemigrationK8sIoV1beta1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [StorageVersionMigrationListStoragemigrationK8sIoV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] Items is the list of StorageVersionMigration
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  StorageVersionMigrationListStoragemigrationK8sIoV1beta1({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': pulumi.Input.mapInputValue<List<StorageVersionMigrationStoragemigrationK8sIoV1beta1>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<StorageVersionMigrationStoragemigrationK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory StorageVersionMigrationListStoragemigrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationListStoragemigrationK8sIoV1beta1(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      items: (pulumi.Input.decodeList<StorageVersionMigrationStoragemigrationK8sIoV1beta1>(map['items'], (value) => StorageVersionMigrationStoragemigrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ListMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

