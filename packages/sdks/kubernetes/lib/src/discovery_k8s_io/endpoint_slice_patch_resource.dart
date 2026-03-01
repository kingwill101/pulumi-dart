import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'endpoint_patch_discovery_k8s_io_v1beta1.dart';
import 'endpoint_port_patch_discovery_k8s_io_v1beta1.dart';
import 'endpoint_slice_patch_discovery_k8s_io_v1beta1_args.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// EndpointSlice represents a subset of the endpoints that implement a service. For a given service there may be multiple EndpointSlice objects, selected by labels, which must be joined to produce the full set of endpoints.
class EndpointSlicePatchResource extends pulumi.CustomResource {
  /// addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.
  late final pulumi.Output<String?> addressType;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
  late final pulumi.Output<List<EndpointPatchDiscoveryK8sIoV1beta1>?> endpoints;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object's metadata.
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates "all ports". Each slice may include a maximum of 100 ports.
  late final pulumi.Output<List<EndpointPortPatchDiscoveryK8sIoV1beta1>?> ports;

  /// Creates a new [EndpointSlicePatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointSlicePatchResource]. {@macro pulumi_discovery_k8s_io_v1beta1_endpoint_slice_patch_discovery_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointSlicePatchResource(
    String name, {
    EndpointSlicePatchDiscoveryK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:discovery.k8s.io/v1beta1:EndpointSlicePatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressType = registerOutput<String?>('addressType');
    this.apiVersion = registerOutput<String?>('apiVersion');
    this.endpoints = registerOutput<List<EndpointPatchDiscoveryK8sIoV1beta1>?>('endpoints');
    this.kind = registerOutput<String?>('kind');
    this.metadata = registerOutput<ObjectMetaPatch?>('metadata');
    this.ports = registerOutput<List<EndpointPortPatchDiscoveryK8sIoV1beta1>?>('ports');
  }
}
