import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'ingress_class_list_args.dart';

/// IngressClassList is a collection of IngressClasses.
class IngressClassListNetworkingK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// items is the list of IngressClasses.
  late final pulumi.Output<List<Map<String, dynamic>>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [IngressClassListNetworkingK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IngressClassListNetworkingK8sIoV1]. {@macro pulumi_networking_k8s_io_v1_ingress_class_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IngressClassListNetworkingK8sIoV1(
    String name, {
    IngressClassListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:networking.k8s.io/v1:IngressClassList',
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
