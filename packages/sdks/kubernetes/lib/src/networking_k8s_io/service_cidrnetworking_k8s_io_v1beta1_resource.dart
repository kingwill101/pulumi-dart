import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'service_cidrnetworking_k8s_io_v1beta1_args.dart';
import 'service_cidrspec_networking_k8s_io_v1beta1.dart';
import 'service_cidrstatus_networking_k8s_io_v1beta1.dart';

/// ServiceCIDR defines a range of IP addresses using CIDR format (e.g. 192.168.0.0/24 or 2001:db2::/64). This range is used to allocate ClusterIPs to Service objects.
class ServiceCIDRNetworkingK8sIoV1beta1Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec is the desired state of the ServiceCIDR. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ServiceCIDRSpecNetworkingK8sIoV1beta1> spec;
  /// status represents the current state of the ServiceCIDR. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ServiceCIDRStatusNetworkingK8sIoV1beta1?> status;

  /// Creates a new [ServiceCIDRNetworkingK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceCIDRNetworkingK8sIoV1beta1Resource]. {@macro pulumi_networking_k8s_io_v1beta1_service_cidrnetworking_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceCIDRNetworkingK8sIoV1beta1Resource(
    String name, {
    ServiceCIDRNetworkingK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:networking.k8s.io/v1beta1:ServiceCIDR',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ServiceCIDRSpecNetworkingK8sIoV1beta1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceCIDRSpecNetworkingK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ServiceCIDRStatusNetworkingK8sIoV1beta1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceCIDRStatusNetworkingK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ServiceCIDRNetworkingK8sIoV1beta1Resource] resource.
  ServiceCIDRNetworkingK8sIoV1beta1Resource.reference(String urn)
    : super(
        'kubernetes:networking.k8s.io/v1beta1:ServiceCIDR',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ServiceCIDRSpecNetworkingK8sIoV1beta1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceCIDRSpecNetworkingK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ServiceCIDRStatusNetworkingK8sIoV1beta1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceCIDRStatusNetworkingK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
