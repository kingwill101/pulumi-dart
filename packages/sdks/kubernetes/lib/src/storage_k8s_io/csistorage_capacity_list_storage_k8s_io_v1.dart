import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'csistorage_capacity.dart';
import 'csistorage_capacity_list_args.dart';

/// CSIStorageCapacityList is a collection of CSIStorageCapacity objects.
class CSIStorageCapacityListStorageK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is the list of CSIStorageCapacity objects.
  late final pulumi.Output<List<CSIStorageCapacity>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [CSIStorageCapacityListStorageK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CSIStorageCapacityListStorageK8sIoV1]. {@macro pulumi_storage_k8s_io_v1_csistorage_capacity_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CSIStorageCapacityListStorageK8sIoV1(
    String name, {
    CSIStorageCapacityListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storage.k8s.io/v1:CSIStorageCapacityList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<CSIStorageCapacity>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CSIStorageCapacity>(guardedValue, (value) => CSIStorageCapacity.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CSIStorageCapacityListStorageK8sIoV1] resource.
  CSIStorageCapacityListStorageK8sIoV1.reference(String urn)
    : super(
        'kubernetes:storage.k8s.io/v1:CSIStorageCapacityList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<CSIStorageCapacity>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CSIStorageCapacity>(guardedValue, (value) => CSIStorageCapacity.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
