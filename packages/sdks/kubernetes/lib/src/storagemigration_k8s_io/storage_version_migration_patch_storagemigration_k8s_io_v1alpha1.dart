import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'storage_version_migration_patch_args.dart';
import 'storage_version_migration_spec_patch.dart';
import 'storage_version_migration_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// StorageVersionMigration represents a migration of stored data to the latest storage version.
class StorageVersionMigrationPatchStoragemigrationK8sIoV1alpha1
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;

  /// Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;

  /// Specification of the migration.
  late final pulumi.Output<StorageVersionMigrationSpecPatch?> spec;

  /// Status of the migration.
  late final pulumi.Output<StorageVersionMigrationStatusPatch?> status;

  /// Creates a new [StorageVersionMigrationPatchStoragemigrationK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageVersionMigrationPatchStoragemigrationK8sIoV1alpha1]. {@macro pulumi_storagemigration_k8s_io_v1alpha1_storage_version_migration_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageVersionMigrationPatchStoragemigrationK8sIoV1alpha1(
    String name, {
    StorageVersionMigrationPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:storagemigration.k8s.io/v1alpha1:StorageVersionMigrationPatch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectMetaPatch.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spec = registerOutput<StorageVersionMigrationSpecPatch?>(
      'spec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StorageVersionMigrationSpecPatch.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<StorageVersionMigrationStatusPatch?>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StorageVersionMigrationStatusPatch.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
