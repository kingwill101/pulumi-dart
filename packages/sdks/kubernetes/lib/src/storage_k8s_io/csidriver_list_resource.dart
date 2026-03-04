import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'csidriver_list_storage_k8s_io_v1beta1_args.dart';

/// CSIDriverList is a collection of CSIDriver objects.
class CSIDriverListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// items is the list of CSIDriver
  late final pulumi.Output<List<Map<String, dynamic>>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [CSIDriverListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CSIDriverListResource]. {@macro pulumi_storage_k8s_io_v1beta1_csidriver_list_storage_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CSIDriverListResource(
    String name, {
    CSIDriverListStorageK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:storage.k8s.io/v1beta1:CSIDriverList',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<Map<String, dynamic>>>('items');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata');
  }
}
