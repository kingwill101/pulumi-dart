// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a reference to a service endpoint.
class EndpointRefResponse {
  /// Name of the endpoint.
  final pulumi.Input<String>? name;

  /// Creates a new [EndpointRefResponse].
  /// [name] Name of the endpoint.
  EndpointRefResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory EndpointRefResponse.fromMap(Map<String, dynamic> map) {
    return EndpointRefResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

