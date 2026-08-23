// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayPrivateEndpointConnection {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;

  /// Creates a new [GetApplicationGatewayPrivateEndpointConnection].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  const GetApplicationGatewayPrivateEndpointConnection({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetApplicationGatewayPrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayPrivateEndpointConnection(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
