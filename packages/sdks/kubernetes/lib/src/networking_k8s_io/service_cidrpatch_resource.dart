import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'service_cidrpatch_networking_k8s_io_v1alpha1_args.dart';
import 'service_cidrspec_patch_networking_k8s_io_v1alpha1.dart';
import 'service_cidrstatus_patch_networking_k8s_io_v1alpha1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ServiceCIDR defines a range of IP addresses using CIDR format (e.g. 192.168.0.0/24 or 2001:db2::/64). This range is used to allocate ClusterIPs to Service objects.
class ServiceCIDRPatchResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;

  /// spec is the desired state of the ServiceCIDR. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ServiceCIDRSpecPatchNetworkingK8sIoV1alpha1?> spec;

  /// status represents the current state of the ServiceCIDR. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ServiceCIDRStatusPatchNetworkingK8sIoV1alpha1?>
  status;

  /// Creates a new [ServiceCIDRPatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceCIDRPatchResource]. {@macro pulumi_networking_k8s_io_v1alpha1_service_cidrpatch_networking_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceCIDRPatchResource(
    String name, {
    ServiceCIDRPatchNetworkingK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:networking.k8s.io/v1alpha1:ServiceCIDRPatch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata');
    spec = registerOutput<ServiceCIDRSpecPatchNetworkingK8sIoV1alpha1?>('spec');
    status = registerOutput<ServiceCIDRStatusPatchNetworkingK8sIoV1alpha1?>(
      'status',
    );
  }
}
