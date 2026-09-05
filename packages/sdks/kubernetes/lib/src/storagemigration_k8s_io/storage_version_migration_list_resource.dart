import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'storage_version_migration_list_storagemigration_k8s_io_v1alpha1_args.dart';
import 'storage_version_migration_storagemigration_k8s_io_v1alpha1.dart';

/// StorageVersionMigrationList is a collection of storage version migrations.
class StorageVersionMigrationListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of StorageVersionMigration
  late final pulumi.Output<List<StorageVersionMigrationStoragemigrationK8sIoV1alpha1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [StorageVersionMigrationListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageVersionMigrationListResource]. {@macro pulumi_storagemigration_k8s_io_v1alpha1_storage_version_migration_list_storagemigration_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageVersionMigrationListResource(
    String name, {
    StorageVersionMigrationListStoragemigrationK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storagemigration.k8s.io/v1alpha1:StorageVersionMigrationList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<StorageVersionMigrationStoragemigrationK8sIoV1alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageVersionMigrationStoragemigrationK8sIoV1alpha1>(guardedValue, (value) => StorageVersionMigrationStoragemigrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [StorageVersionMigrationListResource] resource.
  StorageVersionMigrationListResource.reference(String urn)
    : super(
        'kubernetes:storagemigration.k8s.io/v1alpha1:StorageVersionMigrationList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<StorageVersionMigrationStoragemigrationK8sIoV1alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageVersionMigrationStoragemigrationK8sIoV1alpha1>(guardedValue, (value) => StorageVersionMigrationStoragemigrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
