// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayPrivateEndpointConnection {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// The name of the Application Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [ApplicationGatewayPrivateEndpointConnection].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of the Application Gateway. Changing this forces a new resource to be created.
  ApplicationGatewayPrivateEndpointConnection({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory ApplicationGatewayPrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPrivateEndpointConnection(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

