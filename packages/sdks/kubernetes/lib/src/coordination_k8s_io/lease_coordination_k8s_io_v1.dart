import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'lease_args.dart';
import 'lease_spec.dart';

/// Lease defines a lease concept.
class LeaseCoordinationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec contains the specification of the Lease. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<LeaseSpec> spec;

  /// Creates a new [LeaseCoordinationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LeaseCoordinationK8sIoV1]. {@macro pulumi_coordination_k8s_io_v1_lease_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LeaseCoordinationK8sIoV1(
    String name, {
    LeaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:coordination.k8s.io/v1:Lease',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<LeaseSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LeaseSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [LeaseCoordinationK8sIoV1] resource.
  LeaseCoordinationK8sIoV1.reference(String urn)
    : super(
        'kubernetes:coordination.k8s.io/v1:Lease',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<LeaseSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LeaseSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
