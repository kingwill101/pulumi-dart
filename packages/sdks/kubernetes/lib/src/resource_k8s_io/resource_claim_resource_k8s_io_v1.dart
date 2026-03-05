import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_claim_args.dart';
import 'resource_claim_spec.dart';
import 'resource_claim_status.dart';

/// ResourceClaim describes a request for access to resources in the cluster, for use by workloads. For example, if a workload needs an accelerator device with specific properties, this is how that request is expressed. The status stanza tracks whether this claim has been satisfied and what specific resources have been allocated.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClaimResourceK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec describes what is being requested and how to configure it. The spec is immutable.
  late final pulumi.Output<ResourceClaimSpec> spec;
  /// Status describes whether the claim is ready to use and what has been allocated.
  late final pulumi.Output<ResourceClaimStatus?> status;

  /// Creates a new [ResourceClaimResourceK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClaimResourceK8sIoV1]. {@macro pulumi_resource_k8s_io_v1_resource_claim_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClaimResourceK8sIoV1(
    String name, {
    ResourceClaimArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1:ResourceClaim',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ResourceClaimSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClaimSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ResourceClaimStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClaimStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
