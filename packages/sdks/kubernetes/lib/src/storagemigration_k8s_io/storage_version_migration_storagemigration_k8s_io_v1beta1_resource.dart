import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'storage_version_migration_spec_storagemigration_k8s_io_v1beta1.dart';
import 'storage_version_migration_status_storagemigration_k8s_io_v1beta1.dart';
import 'storage_version_migration_storagemigration_k8s_io_v1beta1_args.dart';

/// StorageVersionMigration represents a migration of stored data to the latest storage version.
class StorageVersionMigrationStoragemigrationK8sIoV1beta1Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Specification of the migration.
  late final pulumi.Output<StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1> spec;
  /// Status of the migration.
  late final pulumi.Output<StorageVersionMigrationStatusStoragemigrationK8sIoV1beta1?> status;

  /// Creates a new [StorageVersionMigrationStoragemigrationK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageVersionMigrationStoragemigrationK8sIoV1beta1Resource]. {@macro pulumi_storagemigration_k8s_io_v1beta1_storage_version_migration_storagemigration_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageVersionMigrationStoragemigrationK8sIoV1beta1Resource(
    String name, {
    StorageVersionMigrationStoragemigrationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storagemigration.k8s.io/v1beta1:StorageVersionMigration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<StorageVersionMigrationStatusStoragemigrationK8sIoV1beta1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageVersionMigrationStatusStoragemigrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [StorageVersionMigrationStoragemigrationK8sIoV1beta1Resource] resource.
  StorageVersionMigrationStoragemigrationK8sIoV1beta1Resource.reference(String urn)
    : super(
        'kubernetes:storagemigration.k8s.io/v1beta1:StorageVersionMigration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageVersionMigrationSpecStoragemigrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<StorageVersionMigrationStatusStoragemigrationK8sIoV1beta1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageVersionMigrationStatusStoragemigrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
