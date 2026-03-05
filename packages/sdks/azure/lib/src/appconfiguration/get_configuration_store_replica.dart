// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationStoreReplica {
  /// The URL of the App Configuration Replica.
  final pulumi.Input<String> endpoint;
  /// The ID of the Access Key.
  final pulumi.Input<String> id;
  /// The supported Azure location where the App Configuration Replica exists.
  final pulumi.Input<String> location;
  /// The Name of this App Configuration.
  final pulumi.Input<String> name;

  /// Creates a new [GetConfigurationStoreReplica].
  /// [endpoint] The URL of the App Configuration Replica.
  /// [id] The ID of the Access Key.
  /// [location] The supported Azure location where the App Configuration Replica exists.
  /// [name] The Name of this App Configuration.
  GetConfigurationStoreReplica({
    required this.endpoint,
    required this.id,
    required this.location,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'id': id,
      'location': location,
      'name': name,
    };
  }

  factory GetConfigurationStoreReplica.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStoreReplica(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

