// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The gateway installation reference
class ConnectionGatewayReference {
  /// Resource reference id
  final pulumi.Input<String>? id;
  /// Resource reference location
  final pulumi.Input<String>? location;
  /// Resource reference name
  final pulumi.Input<String>? name;
  /// Resource reference type
  final pulumi.Input<String>? type;

  /// Creates a new [ConnectionGatewayReference].
  /// [id] Resource reference id
  /// [location] Resource reference location
  /// [name] Resource reference name
  /// [type] Resource reference type
  ConnectionGatewayReference({
    this.id,
    this.location,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'type': ?type,
    };
  }

  factory ConnectionGatewayReference.fromMap(Map<String, dynamic> map) {
    return ConnectionGatewayReference(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

