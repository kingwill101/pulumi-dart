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
  const ApplicationGatewayPrivateEndpointConnection({
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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

