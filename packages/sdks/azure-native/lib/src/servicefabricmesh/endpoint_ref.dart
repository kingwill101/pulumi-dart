// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a reference to a service endpoint.
class EndpointRef {
  /// Name of the endpoint.
  final pulumi.Input<String>? name;

  /// Creates a new [EndpointRef].
  /// [name] Name of the endpoint.
  EndpointRef({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory EndpointRef.fromMap(Map<String, dynamic> map) {
    return EndpointRef(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

