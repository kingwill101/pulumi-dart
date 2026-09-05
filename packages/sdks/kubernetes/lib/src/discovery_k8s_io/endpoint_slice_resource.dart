import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'endpoint_discovery_k8s_io_v1beta1.dart';
import 'endpoint_port_discovery_k8s_io_v1beta1.dart';
import 'endpoint_slice_discovery_k8s_io_v1beta1_args.dart';

/// EndpointSlice represents a subset of the endpoints that implement a service. For a given service there may be multiple EndpointSlice objects, selected by labels, which must be joined to produce the full set of endpoints.
class EndpointSliceResource extends pulumi.CustomResource {
  /// addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.
  late final pulumi.Output<String> addressType;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
  late final pulumi.Output<List<EndpointDiscoveryK8sIoV1beta1>> endpoints;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata.
  late final pulumi.Output<ObjectMeta> metadata;
  /// ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates "all ports". Each slice may include a maximum of 100 ports.
  late final pulumi.Output<List<EndpointPortDiscoveryK8sIoV1beta1>> ports;

  /// Creates a new [EndpointSliceResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointSliceResource]. {@macro pulumi_discovery_k8s_io_v1beta1_endpoint_slice_discovery_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointSliceResource(
    String name, {
    EndpointSliceDiscoveryK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:discovery.k8s.io/v1beta1:EndpointSlice',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressType = registerOutput<String>('addressType');
    apiVersion = registerOutput<String>('apiVersion');
    endpoints = registerOutput<List<EndpointDiscoveryK8sIoV1beta1>>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointDiscoveryK8sIoV1beta1>(guardedValue, (value) => EndpointDiscoveryK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ports = registerOutput<List<EndpointPortDiscoveryK8sIoV1beta1>>('ports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointPortDiscoveryK8sIoV1beta1>(guardedValue, (value) => EndpointPortDiscoveryK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [EndpointSliceResource] resource.
  EndpointSliceResource.reference(String urn)
    : super(
        'kubernetes:discovery.k8s.io/v1beta1:EndpointSlice',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    addressType = registerOutput<String>('addressType');
    apiVersion = registerOutput<String>('apiVersion');
    endpoints = registerOutput<List<EndpointDiscoveryK8sIoV1beta1>>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointDiscoveryK8sIoV1beta1>(guardedValue, (value) => EndpointDiscoveryK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ports = registerOutput<List<EndpointPortDiscoveryK8sIoV1beta1>>('ports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointPortDiscoveryK8sIoV1beta1>(guardedValue, (value) => EndpointPortDiscoveryK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
