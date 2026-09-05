import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'storage_version_migration.dart';
import 'storage_version_migration_list_args.dart';

/// StorageVersionMigrationList is a collection of storage version migrations.
class StorageVersionMigrationListStoragemigrationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of StorageVersionMigration
  late final pulumi.Output<List<StorageVersionMigration>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [StorageVersionMigrationListStoragemigrationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageVersionMigrationListStoragemigrationK8sIoV1]. {@macro pulumi_storagemigration_k8s_io_v1_storage_version_migration_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageVersionMigrationListStoragemigrationK8sIoV1(
    String name, {
    StorageVersionMigrationListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storagemigration.k8s.io/v1:StorageVersionMigrationList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<StorageVersionMigration>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageVersionMigration>(guardedValue, (value) => StorageVersionMigration.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [StorageVersionMigrationListStoragemigrationK8sIoV1] resource.
  StorageVersionMigrationListStoragemigrationK8sIoV1.reference(String urn)
    : super(
        'kubernetes:storagemigration.k8s.io/v1:StorageVersionMigrationList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<StorageVersionMigration>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageVersionMigration>(guardedValue, (value) => StorageVersionMigration.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
