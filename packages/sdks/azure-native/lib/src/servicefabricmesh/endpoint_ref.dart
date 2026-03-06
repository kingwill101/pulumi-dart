// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a reference to a service endpoint.
class EndpointRef {
  /// Name of the endpoint.
  final pulumi.Input<String>? name;

  /// Creates a new [EndpointRef].
  /// [name] Name of the endpoint.
  const EndpointRef({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory EndpointRef.fromMap(Map<String, dynamic> map) {
    return EndpointRef(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

