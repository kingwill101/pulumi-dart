import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'lease_candidate_coordination_k8s_io_v1beta1_resource.dart';
import 'lease_candidate_list_coordination_k8s_io_v1beta1_args.dart';

/// LeaseCandidateList is a list of Lease objects.
class LeaseCandidateListCoordinationK8sIoV1beta1Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is a list of schema objects.
  late final pulumi.Output<List<LeaseCandidateCoordinationK8sIoV1beta1Resource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [LeaseCandidateListCoordinationK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LeaseCandidateListCoordinationK8sIoV1beta1Resource]. {@macro pulumi_coordination_k8s_io_v1beta1_lease_candidate_list_coordination_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LeaseCandidateListCoordinationK8sIoV1beta1Resource(
    String name, {
    LeaseCandidateListCoordinationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:coordination.k8s.io/v1beta1:LeaseCandidateList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<LeaseCandidateCoordinationK8sIoV1beta1Resource>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
