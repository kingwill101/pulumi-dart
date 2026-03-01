import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_claim_resource_k8s_io_v1alpha1_args.dart';
import 'resource_claim_spec_resource_k8s_io_v1alpha1.dart';
import 'resource_claim_status_resource_k8s_io_v1alpha1.dart';

/// ResourceClaim describes which resources are needed by a resource consumer. Its status tracks whether the resource has been allocated and what the resulting attributes are.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClaimResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec describes the desired attributes of a resource that then needs to be allocated. It can only be set once when creating the ResourceClaim.
  late final pulumi.Output<ResourceClaimSpecResourceK8sIoV1alpha1> spec;
  /// Status describes whether the resource is available and with which attributes.
  late final pulumi.Output<ResourceClaimStatusResourceK8sIoV1alpha1?> status;

  /// Creates a new [ResourceClaimResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClaimResource]. {@macro pulumi_resource_k8s_io_v1alpha1_resource_claim_resource_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClaimResource(
    String name, {
    ResourceClaimResourceK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha1:ResourceClaim',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<ResourceClaimSpecResourceK8sIoV1alpha1>('spec');
    this.status = registerOutput<ResourceClaimStatusResourceK8sIoV1alpha1?>('status');
  }
}
