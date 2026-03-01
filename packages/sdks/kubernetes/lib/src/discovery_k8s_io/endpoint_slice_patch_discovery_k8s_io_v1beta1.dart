// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'endpoint_patch_discovery_k8s_io_v1beta1.dart';
import 'endpoint_port_patch_discovery_k8s_io_v1beta1.dart';

/// EndpointSlice represents a subset of the endpoints that implement a service. For a given service there may be multiple EndpointSlice objects, selected by labels, which must be joined to produce the full set of endpoints.
class EndpointSlicePatchDiscoveryK8sIoV1beta1 {
  /// addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.
  final String? addressType;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
  final List<EndpointPatchDiscoveryK8sIoV1beta1>? endpoints;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object's metadata.
  final ObjectMetaPatch? metadata;
  /// ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates "all ports". Each slice may include a maximum of 100 ports.
  final List<EndpointPortPatchDiscoveryK8sIoV1beta1>? ports;

  /// Creates a new [EndpointSlicePatchDiscoveryK8sIoV1beta1].
  /// [addressType] addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [endpoints] endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [ports] ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates "all ports". Each slice may include a maximum of 100 ports.
  EndpointSlicePatchDiscoveryK8sIoV1beta1({
    this.addressType,
    this.apiVersion,
    this.endpoints,
    this.kind,
    this.metadata,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressType': ?addressType,
      'apiVersion': ?apiVersion,
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<EndpointPatchDiscoveryK8sIoV1beta1, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'ports': ?ports == null ? null : pulumi.Input.encodeList<EndpointPortPatchDiscoveryK8sIoV1beta1, Map<String, dynamic>>(ports!, (value) => value.toMap()),
    };
  }

  factory EndpointSlicePatchDiscoveryK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return EndpointSlicePatchDiscoveryK8sIoV1beta1(
      addressType: map['addressType'] == null ? null : map['addressType'] as String,
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<EndpointPatchDiscoveryK8sIoV1beta1>(map['endpoints'], (value) => EndpointPatchDiscoveryK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<EndpointPortPatchDiscoveryK8sIoV1beta1>(map['ports'], (value) => EndpointPortPatchDiscoveryK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

