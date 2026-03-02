// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EndpointPort is a tuple that describes a single port. Deprecated: This API is deprecated in v1.33+.
class EndpointPortPatch {
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
  /// The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
  final pulumi.Input<String>? name;
  /// The port number of the endpoint.
  final pulumi.Input<int>? port;
  /// The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
  final pulumi.Input<String>? protocol;

  /// Creates a new [EndpointPortPatch].
  /// [appProtocol] The application protocol for this port. This is used as a hint for implementations to offer richer behavior for protocols that they understand. This field follows standard Kubernetes label syntax. Valid values are either:
  /// [name] The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
  /// [port] The port number of the endpoint.
  /// [protocol] The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
  EndpointPortPatch({
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

  factory EndpointPortPatch.fromMap(Map<String, dynamic> map) {
    return EndpointPortPatch(
      appProtocol: map['appProtocol'] == null ? null : (map['appProtocol']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
    );
  }
}

