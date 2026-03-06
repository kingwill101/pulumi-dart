// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationStoreReplica {
  /// The URL of the App Configuration Replica.
  final pulumi.Input<String>? endpoint;
  /// The ID of the Access Key.
  final pulumi.Input<String>? id;
  /// Specifies the supported Azure location where the replica exists.
  final pulumi.Input<String> location;
  /// Specifies the name of the replica.
  final pulumi.Input<String> name;

  /// Creates a new [ConfigurationStoreReplica].
  /// [endpoint] The URL of the App Configuration Replica.
  /// [id] The ID of the Access Key.
  /// [location] Specifies the supported Azure location where the replica exists.
  /// [name] Specifies the name of the replica.
  const ConfigurationStoreReplica({
    this.endpoint,
    this.id,
    required this.location,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'id': ?id,
      'location': location,
      'name': name,
    };
  }

  factory ConfigurationStoreReplica.fromMap(Map<String, dynamic> map) {
    return ConfigurationStoreReplica(
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

