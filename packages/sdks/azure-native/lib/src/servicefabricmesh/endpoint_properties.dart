// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a container endpoint.
class EndpointProperties {
  /// The name of the endpoint.
  final pulumi.Input<String> name;

  /// Port used by the container.
  final pulumi.Input<int>? port;

  /// Creates a new [EndpointProperties].
  /// [name] The name of the endpoint.
  /// [port] Port used by the container.
  EndpointProperties({required this.name, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'port': ?port};
  }

  factory EndpointProperties.fromMap(Map<String, dynamic> map) {
    return EndpointProperties(
      name: pulumi.Input.fromValue(map['name'] as String),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
