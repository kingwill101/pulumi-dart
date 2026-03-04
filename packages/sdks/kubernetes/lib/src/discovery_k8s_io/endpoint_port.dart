// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EndpointPort represents a Port used by an EndpointSlice
class EndpointPort {
  /// The application protocol for this port. This is used as a hint for implementations to offer richer behavior for protocols that they understand. This field follows standard Kubernetes label syntax. Valid values are either:
  ///
  /// * Un-prefixed protocol names - reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names).
  ///
  /// * Kubernetes-defined prefixed names:
  /// * 'kubernetes.io/h2c' - HTTP/2 prior knowledge over cleartext as described in https://www.rfc-editor.org/rfc/rfc9113.html#name-starting-http-2-with-prior-
  /// * 'kubernetes.io/ws'  - WebSocket over cleartext as described in https://www.rfc-editor.org/rfc/rfc6455
  /// * 'kubernetes.io/wss' - WebSocket over TLS as described in https://www.rfc-editor.org/rfc/rfc6455
  ///
  /// * Other protocols should use implementation-defined prefixed names such as mycompany.com/my-custom-protocol.
  final pulumi.Input<String>? appProtocol;

  /// name represents the name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is derived from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.
  final pulumi.Input<String>? name;

  /// port represents the port number of the endpoint. If the EndpointSlice is derived from a Kubernetes service, this must be set to the service's target port. EndpointSlices used for other purposes may have a nil port.
  final pulumi.Input<int>? port;

  /// protocol represents the IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
  final pulumi.Input<String>? protocol;

  /// Creates a new [EndpointPort].
  /// [appProtocol] The application protocol for this port. This is used as a hint for implementations to offer richer behavior for protocols that they understand. This field follows standard Kubernetes label syntax. Valid values are either:
  /// [name] name represents the name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is derived from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.
  /// [port] port represents the port number of the endpoint. If the EndpointSlice is derived from a Kubernetes service, this must be set to the service's target port. EndpointSlices used for other purposes may have a nil port.
  /// [protocol] protocol represents the IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
  EndpointPort({this.appProtocol, this.name, this.port, this.protocol});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appProtocol': ?appProtocol,
      'name': ?name,
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory EndpointPort.fromMap(Map<String, dynamic> map) {
    return EndpointPort(
      appProtocol: (() {
        final guardedValue = map['appProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
