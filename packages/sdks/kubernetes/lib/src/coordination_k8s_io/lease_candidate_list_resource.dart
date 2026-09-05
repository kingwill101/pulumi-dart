import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'lease_candidate_coordination_k8s_io_v1alpha2.dart';
import 'lease_candidate_list_coordination_k8s_io_v1alpha2_args.dart';

/// LeaseCandidateList is a list of Lease objects.
class LeaseCandidateListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is a list of schema objects.
  late final pulumi.Output<List<LeaseCandidateCoordinationK8sIoV1alpha2>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [LeaseCandidateListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LeaseCandidateListResource]. {@macro pulumi_coordination_k8s_io_v1alpha2_lease_candidate_list_coordination_k8s_io_v1alpha2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LeaseCandidateListResource(
    String name, {
    LeaseCandidateListCoordinationK8sIoV1alpha2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:coordination.k8s.io/v1alpha2:LeaseCandidateList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<LeaseCandidateCoordinationK8sIoV1alpha2>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LeaseCandidateCoordinationK8sIoV1alpha2>(guardedValue, (value) => LeaseCandidateCoordinationK8sIoV1alpha2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [LeaseCandidateListResource] resource.
  LeaseCandidateListResource.reference(String urn)
    : super(
        'kubernetes:coordination.k8s.io/v1alpha2:LeaseCandidateList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<LeaseCandidateCoordinationK8sIoV1alpha2>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LeaseCandidateCoordinationK8sIoV1alpha2>(guardedValue, (value) => LeaseCandidateCoordinationK8sIoV1alpha2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
