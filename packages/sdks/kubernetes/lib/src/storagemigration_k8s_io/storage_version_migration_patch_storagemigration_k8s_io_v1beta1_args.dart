// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'storage_version_migration_spec_patch_storagemigration_k8s_io_v1beta1.dart';

/// {@template pulumi_storagemigration_k8s_io_v1beta1_storage_version_migration_patch_storagemigration_k8s_io_v1beta1_args_doc}
/// The set of arguments for StorageVersionMigrationPatch.
/// {@endtemplate}
/// {@macro pulumi_storagemigration_k8s_io_v1beta1_storage_version_migration_patch_storagemigration_k8s_io_v1beta1_args_doc}
class StorageVersionMigrationPatchStoragemigrationK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch?>? metadata;
  /// Specification of the migration.
  final pulumi.Input<StorageVersionMigrationSpecPatchStoragemigrationK8sIoV1beta1?>? spec;

  /// Creates a new [StorageVersionMigrationPatchStoragemigrationK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] Specification of the migration.
  const StorageVersionMigrationPatchStoragemigrationK8sIoV1beta1Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<StorageVersionMigrationSpecPatchStoragemigrationK8sIoV1beta1, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory StorageVersionMigrationPatchStoragemigrationK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationPatchStoragemigrationK8sIoV1beta1Args(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageVersionMigrationSpecPatchStoragemigrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
