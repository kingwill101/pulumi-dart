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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

