// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'endpoint_discovery_k8s_io_v1beta1.dart';
import 'endpoint_port_discovery_k8s_io_v1beta1.dart';

/// {@template pulumi_discovery_k8s_io_v1beta1_endpoint_slice_discovery_k8s_io_v1beta1_args_doc}
/// The set of arguments for EndpointSlice.
/// {@endtemplate}
/// {@macro pulumi_discovery_k8s_io_v1beta1_endpoint_slice_discovery_k8s_io_v1beta1_args_doc}
class EndpointSliceDiscoveryK8sIoV1beta1Args {
  /// addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.
  final pulumi.Input<String> addressType;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
  final pulumi.Input<List<EndpointDiscoveryK8sIoV1beta1>> endpoints;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// Standard object's metadata.
  final pulumi.Input<ObjectMeta?>? metadata;
  /// ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates "all ports". Each slice may include a maximum of 100 ports.
  final pulumi.Input<List<EndpointPortDiscoveryK8sIoV1beta1>?>? ports;

  /// Creates a new [EndpointSliceDiscoveryK8sIoV1beta1Args].
  /// [addressType] addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [endpoints] endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [ports] ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates "all ports". Each slice may include a maximum of 100 ports.
  const EndpointSliceDiscoveryK8sIoV1beta1Args({
    required this.addressType,
    this.apiVersion,
    required this.endpoints,
    this.kind,
    this.metadata,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressType': addressType,
      'apiVersion': ?apiVersion,
      'endpoints': pulumi.Input.mapInputValue<List<EndpointDiscoveryK8sIoV1beta1>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<EndpointDiscoveryK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'ports': ?pulumi.Input.mapOptionalInputValue<List<EndpointPortDiscoveryK8sIoV1beta1>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<EndpointPortDiscoveryK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EndpointSliceDiscoveryK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return EndpointSliceDiscoveryK8sIoV1beta1Args(
      addressType: pulumi.Input.fromValue(map['addressType'] as String),
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDiscoveryK8sIoV1beta1>(map['endpoints']!, (value) => EndpointDiscoveryK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointPortDiscoveryK8sIoV1beta1>(guardedValue, (value) => EndpointPortDiscoveryK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
