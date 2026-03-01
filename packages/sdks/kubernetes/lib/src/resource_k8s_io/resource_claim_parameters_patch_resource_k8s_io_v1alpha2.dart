import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'driver_requests_patch.dart';
import 'resource_claim_parameters_patch_args.dart';
import 'resource_claim_parameters_reference_patch_resource_k8s_io_v1alpha2.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ResourceClaimParameters defines resource requests for a ResourceClaim in an in-tree format understood by Kubernetes.
class ResourceClaimParametersPatchResourceK8sIoV1alpha2 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// DriverRequests describes all resources that are needed for the allocated claim. A single claim may use resources coming from different drivers. For each driver, this array has at most one entry which then may have one or more per-driver requests.
  ///
  /// May be empty, in which case the claim can always be allocated.
  late final pulumi.Output<List<DriverRequestsPatch>?> driverRequests;
  /// If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the claim parameters when the parameter reference of the claim refers to some unknown type.
  late final pulumi.Output<ResourceClaimParametersReferencePatchResourceK8sIoV1alpha2?> generatedFrom;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Shareable indicates whether the allocated claim is meant to be shareable by multiple consumers at the same time.
  late final pulumi.Output<bool?> shareable;

  /// Creates a new [ResourceClaimParametersPatchResourceK8sIoV1alpha2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClaimParametersPatchResourceK8sIoV1alpha2]. {@macro pulumi_resource_k8s_io_v1alpha2_resource_claim_parameters_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClaimParametersPatchResourceK8sIoV1alpha2(
    String name, {
    ResourceClaimParametersPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha2:ResourceClaimParametersPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String?>('apiVersion');
    this.driverRequests = registerOutput<List<DriverRequestsPatch>?>('driverRequests');
    this.generatedFrom = registerOutput<ResourceClaimParametersReferencePatchResourceK8sIoV1alpha2?>('generatedFrom');
    this.kind = registerOutput<String?>('kind');
    this.metadata = registerOutput<ObjectMetaPatch?>('metadata');
    this.shareable = registerOutput<bool?>('shareable');
  }
}
