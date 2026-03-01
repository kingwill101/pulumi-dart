import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'lease_coordination_k8s_io_v1.dart';
import 'lease_list_args.dart';

/// LeaseList is a list of Lease objects.
class LeaseListCoordinationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is a list of schema objects.
  late final pulumi.Output<List<LeaseCoordinationK8sIoV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [LeaseListCoordinationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LeaseListCoordinationK8sIoV1]. {@macro pulumi_coordination_k8s_io_v1_lease_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LeaseListCoordinationK8sIoV1(
    String name, {
    LeaseListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:coordination.k8s.io/v1:LeaseList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<LeaseCoordinationK8sIoV1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
