import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'driver_requests.dart';
import 'resource_claim_parameters_args.dart';
import 'resource_claim_parameters_reference_resource_k8s_io_v1alpha2.dart';

/// ResourceClaimParameters defines resource requests for a ResourceClaim in an in-tree format understood by Kubernetes.
class ResourceClaimParametersResourceK8sIoV1alpha2 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// DriverRequests describes all resources that are needed for the allocated claim. A single claim may use resources coming from different drivers. For each driver, this array has at most one entry which then may have one or more per-driver requests.
  ///
  /// May be empty, in which case the claim can always be allocated.
  late final pulumi.Output<List<DriverRequests>> driverRequests;
  /// If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the claim parameters when the parameter reference of the claim refers to some unknown type.
  late final pulumi.Output<ResourceClaimParametersReferenceResourceK8sIoV1alpha2> generatedFrom;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Shareable indicates whether the allocated claim is meant to be shareable by multiple consumers at the same time.
  late final pulumi.Output<bool> shareable;

  /// Creates a new [ResourceClaimParametersResourceK8sIoV1alpha2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClaimParametersResourceK8sIoV1alpha2]. {@macro pulumi_resource_k8s_io_v1alpha2_resource_claim_parameters_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClaimParametersResourceK8sIoV1alpha2(
    String name, {
    ResourceClaimParametersArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha2:ResourceClaimParameters',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    driverRequests = registerOutput<List<DriverRequests>>('driverRequests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DriverRequests>(guardedValue, (value) => DriverRequests.fromMap((value as Map).cast<String, dynamic>())); });
    generatedFrom = registerOutput<ResourceClaimParametersReferenceResourceK8sIoV1alpha2>('generatedFrom', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClaimParametersReferenceResourceK8sIoV1alpha2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shareable = registerOutput<bool>('shareable');
  }

  /// Creates a typed reference to an existing [ResourceClaimParametersResourceK8sIoV1alpha2] resource.
  ResourceClaimParametersResourceK8sIoV1alpha2.reference(String urn)
    : super(
        'kubernetes:resource.k8s.io/v1alpha2:ResourceClaimParameters',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    driverRequests = registerOutput<List<DriverRequests>>('driverRequests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DriverRequests>(guardedValue, (value) => DriverRequests.fromMap((value as Map).cast<String, dynamic>())); });
    generatedFrom = registerOutput<ResourceClaimParametersReferenceResourceK8sIoV1alpha2>('generatedFrom', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClaimParametersReferenceResourceK8sIoV1alpha2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shareable = registerOutput<bool>('shareable');
  }
}
