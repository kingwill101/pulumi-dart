// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionConfigurationEndpoint {
  /// Host and port in the format of `host:port` for the connector endpoint.
  final pulumi.Input<String>? hostPort;

  /// Creates a new [ConnectionConfigurationEndpoint].
  /// [hostPort] Host and port in the format of `host:port` for the connector endpoint.
  const ConnectionConfigurationEndpoint({
    this.hostPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostPort': ?hostPort,
    };
  }

  factory ConnectionConfigurationEndpoint.fromMap(Map<String, dynamic> map) {
    return ConnectionConfigurationEndpoint(
      hostPort: (() { final guardedValue = map['hostPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
