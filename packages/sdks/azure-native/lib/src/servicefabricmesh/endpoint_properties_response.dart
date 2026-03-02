// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a container endpoint.
class EndpointPropertiesResponse {
  /// The name of the endpoint.
  final pulumi.Input<String> name;
  /// Port used by the container.
  final pulumi.Input<int>? port;

  /// Creates a new [EndpointPropertiesResponse].
  /// [name] The name of the endpoint.
  /// [port] Port used by the container.
  EndpointPropertiesResponse({
    required this.name,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': ?port,
    };
  }

  factory EndpointPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EndpointPropertiesResponse(
      name: (map['name'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
    );
  }
}

