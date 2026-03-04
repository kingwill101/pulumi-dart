import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'resource_claim_template_list_args.dart';

/// ResourceClaimTemplateList is a collection of claim templates.
class ResourceClaimTemplateListResourceK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Items is the list of resource claim templates.
  late final pulumi.Output<List<Map<String, dynamic>>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard list metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ResourceClaimTemplateListResourceK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClaimTemplateListResourceK8sIoV1]. {@macro pulumi_resource_k8s_io_v1_resource_claim_template_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClaimTemplateListResourceK8sIoV1(
    String name, {
    ResourceClaimTemplateListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:resource.k8s.io/v1:ResourceClaimTemplateList',
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
