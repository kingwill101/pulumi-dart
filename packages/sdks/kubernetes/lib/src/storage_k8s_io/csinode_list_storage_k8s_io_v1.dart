import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'csinode.dart';
import 'csinode_list_args.dart';

/// CSINodeList is a collection of CSINode objects.
class CSINodeListStorageK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is the list of CSINode
  late final pulumi.Output<List<CSINode>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [CSINodeListStorageK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CSINodeListStorageK8sIoV1]. {@macro pulumi_storage_k8s_io_v1_csinode_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CSINodeListStorageK8sIoV1(
    String name, {
    CSINodeListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storage.k8s.io/v1:CSINodeList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<CSINode>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CSINode>(guardedValue, (value) => CSINode.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CSINodeListStorageK8sIoV1] resource.
  CSINodeListStorageK8sIoV1.reference(String urn)
    : super(
        'kubernetes:storage.k8s.io/v1:CSINodeList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<CSINode>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CSINode>(guardedValue, (value) => CSINode.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
