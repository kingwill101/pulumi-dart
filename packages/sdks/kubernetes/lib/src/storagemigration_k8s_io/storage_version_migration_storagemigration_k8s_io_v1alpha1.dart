import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'storage_version_migration_args.dart';
import 'storage_version_migration_spec.dart';
import 'storage_version_migration_status.dart';

/// StorageVersionMigration represents a migration of stored data to the latest storage version.
class StorageVersionMigrationStoragemigrationK8sIoV1alpha1
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// Specification of the migration.
  late final pulumi.Output<StorageVersionMigrationSpec> spec;

  /// Status of the migration.
  late final pulumi.Output<StorageVersionMigrationStatus?> status;

  /// Creates a new [StorageVersionMigrationStoragemigrationK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageVersionMigrationStoragemigrationK8sIoV1alpha1]. {@macro pulumi_storagemigration_k8s_io_v1alpha1_storage_version_migration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageVersionMigrationStoragemigrationK8sIoV1alpha1(
    String name, {
    StorageVersionMigrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:storagemigration.k8s.io/v1alpha1:StorageVersionMigration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectMeta.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spec = registerOutput<StorageVersionMigrationSpec>(
      'spec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StorageVersionMigrationSpec.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<StorageVersionMigrationStatus?>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StorageVersionMigrationStatus.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
