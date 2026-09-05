import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'storage_class_list_storage_k8s_io_v1beta1_args.dart';
import 'storage_class_storage_k8s_io_v1beta1.dart';

/// StorageClassList is a collection of storage classes.
class StorageClassListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of StorageClasses
  late final pulumi.Output<List<StorageClassStorageK8sIoV1beta1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [StorageClassListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageClassListResource]. {@macro pulumi_storage_k8s_io_v1beta1_storage_class_list_storage_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageClassListResource(
    String name, {
    StorageClassListStorageK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storage.k8s.io/v1beta1:StorageClassList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<StorageClassStorageK8sIoV1beta1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageClassStorageK8sIoV1beta1>(guardedValue, (value) => StorageClassStorageK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [StorageClassListResource] resource.
  StorageClassListResource.reference(String urn)
    : super(
        'kubernetes:storage.k8s.io/v1beta1:StorageClassList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<StorageClassStorageK8sIoV1beta1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageClassStorageK8sIoV1beta1>(guardedValue, (value) => StorageClassStorageK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
