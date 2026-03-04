import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'namespace_list_args.dart';

/// NamespaceList is a list of Namespaces.
class NamespaceListCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Items is the list of Namespace objects in the list. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
  late final pulumi.Output<List<Map<String, dynamic>>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [NamespaceListCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceListCoreV1]. {@macro pulumi_core_v1_namespace_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceListCoreV1(
    String name, {
    NamespaceListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:core/v1:NamespaceList',
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
