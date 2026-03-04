import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'service_cidrargs.dart';
import 'service_cidrspec.dart';
import 'service_cidrstatus.dart';

/// ServiceCIDR defines a range of IP addresses using CIDR format (e.g. 192.168.0.0/24 or 2001:db2::/64). This range is used to allocate ClusterIPs to Service objects.
class ServiceCIDRNetworkingK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// spec is the desired state of the ServiceCIDR. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ServiceCIDRSpec> spec;

  /// status represents the current state of the ServiceCIDR. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ServiceCIDRStatus?> status;

  /// Creates a new [ServiceCIDRNetworkingK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceCIDRNetworkingK8sIoV1]. {@macro pulumi_networking_k8s_io_v1_service_cidrargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceCIDRNetworkingK8sIoV1(
    String name, {
    ServiceCIDRArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:networking.k8s.io/v1:ServiceCIDR',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec = registerOutput<ServiceCIDRSpec>('spec');
    status = registerOutput<ServiceCIDRStatus?>('status');
  }
}
