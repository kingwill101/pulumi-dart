import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'resource_claim_patch_resource_k8s_io_v1beta2_args.dart';
import 'resource_claim_spec_patch_resource_k8s_io_v1beta2.dart';
import 'resource_claim_status_patch_resource_k8s_io_v1beta2.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ResourceClaim describes a request for access to resources in the cluster, for use by workloads. For example, if a workload needs an accelerator device with specific properties, this is how that request is expressed. The status stanza tracks whether this claim has been satisfied and what specific resources have been allocated.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClaimPatchResourceK8sIoV1beta2Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Spec describes what is being requested and how to configure it. The spec is immutable.
  late final pulumi.Output<ResourceClaimSpecPatchResourceK8sIoV1beta2?> spec;
  /// Status describes whether the claim is ready to use and what has been allocated.
  late final pulumi.Output<ResourceClaimStatusPatchResourceK8sIoV1beta2?> status;

  /// Creates a new [ResourceClaimPatchResourceK8sIoV1beta2Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClaimPatchResourceK8sIoV1beta2Resource]. {@macro pulumi_resource_k8s_io_v1beta2_resource_claim_patch_resource_k8s_io_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClaimPatchResourceK8sIoV1beta2Resource(
    String name, {
    ResourceClaimPatchResourceK8sIoV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1beta2:ResourceClaimPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ResourceClaimSpecPatchResourceK8sIoV1beta2?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClaimSpecPatchResourceK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ResourceClaimStatusPatchResourceK8sIoV1beta2?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClaimStatusPatchResourceK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ResourceClaimPatchResourceK8sIoV1beta2Resource] resource.
  ResourceClaimPatchResourceK8sIoV1beta2Resource.reference(String urn)
    : super(
        'kubernetes:resource.k8s.io/v1beta2:ResourceClaimPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ResourceClaimSpecPatchResourceK8sIoV1beta2?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClaimSpecPatchResourceK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ResourceClaimStatusPatchResourceK8sIoV1beta2?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClaimStatusPatchResourceK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
