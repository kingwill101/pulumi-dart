// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EndpointPort represents a Port used by an EndpointSlice
class EndpointPortPatchDiscoveryK8sIoV1beta1 {
  /// The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names. Default is empty string.
  final pulumi.Input<String>? appProtocol;
  /// The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.
  final pulumi.Input<String>? name;
  /// The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
  final pulumi.Input<int>? port;
  /// The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
  final pulumi.Input<String>? protocol;

  /// Creates a new [EndpointPortPatchDiscoveryK8sIoV1beta1].
  /// [appProtocol] The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names. Default is empty string.
  /// [name] The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.
  /// [port] The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
  /// [protocol] The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
  const EndpointPortPatchDiscoveryK8sIoV1beta1({
    this.appProtocol,
    this.name,
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appProtocol': ?appProtocol,
      'name': ?name,
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory EndpointPortPatchDiscoveryK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return EndpointPortPatchDiscoveryK8sIoV1beta1(
      appProtocol: (() { final guardedValue = map['appProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

