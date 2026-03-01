import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'ingress_list_args.dart';
import 'ingress_networking_k8s_io_v1.dart';

/// IngressList is a collection of Ingress.
class IngressListNetworkingK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is the list of Ingress.
  late final pulumi.Output<List<IngressNetworkingK8sIoV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [IngressListNetworkingK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IngressListNetworkingK8sIoV1]. {@macro pulumi_networking_k8s_io_v1_ingress_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IngressListNetworkingK8sIoV1(
    String name, {
    IngressListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:networking.k8s.io/v1:IngressList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<IngressNetworkingK8sIoV1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
