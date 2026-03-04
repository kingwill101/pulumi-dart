// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes properties of a network resource.
class NetworkResourceProperties {
  /// User readable description of the network.
  final pulumi.Input<String>? description;

  /// The type of a Service Fabric container network.
  /// Expected value is 'NetworkResourceProperties'.
  final pulumi.Input<String> kind;

  /// Creates a new [NetworkResourceProperties].
  /// [description] User readable description of the network.
  /// [kind] The type of a Service Fabric container network.
  NetworkResourceProperties({this.description, required this.kind});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': ?description, 'kind': kind};
  }

  factory NetworkResourceProperties.fromMap(Map<String, dynamic> map) {
    return NetworkResourceProperties(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}
