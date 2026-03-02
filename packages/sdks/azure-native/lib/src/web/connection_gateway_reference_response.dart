// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The gateway installation reference
class ConnectionGatewayReferenceResponse {
  /// Resource reference id
  final pulumi.Input<String>? id;
  /// Resource reference location
  final pulumi.Input<String>? location;
  /// Resource reference name
  final pulumi.Input<String>? name;
  /// Resource reference type
  final pulumi.Input<String>? type;

  /// Creates a new [ConnectionGatewayReferenceResponse].
  /// [id] Resource reference id
  /// [location] Resource reference location
  /// [name] Resource reference name
  /// [type] Resource reference type
  ConnectionGatewayReferenceResponse({
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

  factory ConnectionGatewayReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionGatewayReferenceResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

