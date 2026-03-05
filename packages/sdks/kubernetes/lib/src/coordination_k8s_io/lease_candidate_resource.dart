import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'lease_candidate_coordination_k8s_io_v1alpha2_args.dart';
import 'lease_candidate_spec_coordination_k8s_io_v1alpha2.dart';

/// LeaseCandidate defines a candidate for a Lease object. Candidates are created such that coordinated leader election will pick the best leader from the list of candidates.
class LeaseCandidateResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// spec contains the specification of the Lease. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<LeaseCandidateSpecCoordinationK8sIoV1alpha2> spec;

  /// Creates a new [LeaseCandidateResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LeaseCandidateResource]. {@macro pulumi_coordination_k8s_io_v1alpha2_lease_candidate_coordination_k8s_io_v1alpha2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LeaseCandidateResource(
    String name, {
    LeaseCandidateCoordinationK8sIoV1alpha2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:coordination.k8s.io/v1alpha2:LeaseCandidate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectMeta.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spec = registerOutput<LeaseCandidateSpecCoordinationK8sIoV1alpha2>(
      'spec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LeaseCandidateSpecCoordinationK8sIoV1alpha2.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
