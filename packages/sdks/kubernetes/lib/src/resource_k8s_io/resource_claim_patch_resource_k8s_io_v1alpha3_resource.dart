import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'resource_claim_patch_resource_k8s_io_v1alpha3_args.dart';
import 'resource_claim_spec_patch_resource_k8s_io_v1alpha3.dart';
import 'resource_claim_status_patch_resource_k8s_io_v1alpha3.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ResourceClaim describes a request for access to resources in the cluster, for use by workloads. For example, if a workload needs an accelerator device with specific properties, this is how that request is expressed. The status stanza tracks whether this claim has been satisfied and what specific resources have been allocated.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClaimPatchResourceK8sIoV1alpha3Resource
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;

  /// Standard object metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;

  /// Spec describes what is being requested and how to configure it. The spec is immutable.
  late final pulumi.Output<ResourceClaimSpecPatchResourceK8sIoV1alpha3?> spec;

  /// Status describes whether the claim is ready to use and what has been allocated.
  late final pulumi.Output<ResourceClaimStatusPatchResourceK8sIoV1alpha3?>
  status;

  /// Creates a new [ResourceClaimPatchResourceK8sIoV1alpha3Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClaimPatchResourceK8sIoV1alpha3Resource]. {@macro pulumi_resource_k8s_io_v1alpha3_resource_claim_patch_resource_k8s_io_v1alpha3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClaimPatchResourceK8sIoV1alpha3Resource(
    String name, {
    ResourceClaimPatchResourceK8sIoV1alpha3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:resource.k8s.io/v1alpha3:ResourceClaimPatch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata');
    spec = registerOutput<ResourceClaimSpecPatchResourceK8sIoV1alpha3?>('spec');
    status = registerOutput<ResourceClaimStatusPatchResourceK8sIoV1alpha3?>(
      'status',
    );
  }
}
