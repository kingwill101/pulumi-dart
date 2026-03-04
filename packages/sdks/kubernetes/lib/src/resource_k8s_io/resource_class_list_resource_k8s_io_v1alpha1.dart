import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'resource_class_list_args.dart';

/// ResourceClassList is a collection of classes.
class ResourceClassListResourceK8sIoV1alpha1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Items is the list of resource classes.
  late final pulumi.Output<List<Map<String, dynamic>>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard list metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ResourceClassListResourceK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClassListResourceK8sIoV1alpha1]. {@macro pulumi_resource_k8s_io_v1alpha1_resource_class_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClassListResourceK8sIoV1alpha1(
    String name, {
    ResourceClassListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:resource.k8s.io/v1alpha1:ResourceClassList',
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
