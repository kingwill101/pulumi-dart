// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGatewayApplicationEndpointMatcher {
  /// Required. Hostname of the application.
  final pulumi.Input<String> hostname;
  /// Optional. Ports of the application.
  final pulumi.Input<List<int>> ports;

  /// Creates a new [SecurityGatewayApplicationEndpointMatcher].
  /// [hostname] Required. Hostname of the application.
  /// [ports] Optional. Ports of the application.
  const SecurityGatewayApplicationEndpointMatcher({
    required this.hostname,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'ports': ports,
    };
  }

  factory SecurityGatewayApplicationEndpointMatcher.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationEndpointMatcher(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      ports: pulumi.Input.fromValue((map['ports'] as List).cast<int>()),
    );
  }
}

