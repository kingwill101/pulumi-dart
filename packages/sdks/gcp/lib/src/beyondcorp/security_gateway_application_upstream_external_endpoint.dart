// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGatewayApplicationUpstreamExternalEndpoint {
  /// Hostname of the endpoint.
  final pulumi.Input<String> hostname;
  /// Port of the endpoint.
  final pulumi.Input<int> port;

  /// Creates a new [SecurityGatewayApplicationUpstreamExternalEndpoint].
  /// [hostname] Hostname of the endpoint.
  /// [port] Port of the endpoint.
  const SecurityGatewayApplicationUpstreamExternalEndpoint({
    required this.hostname,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'port': port,
    };
  }

  factory SecurityGatewayApplicationUpstreamExternalEndpoint.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamExternalEndpoint(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}
