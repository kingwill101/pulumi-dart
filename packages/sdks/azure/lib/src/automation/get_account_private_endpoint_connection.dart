// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountPrivateEndpointConnection {
  /// The ID of the Automation Account
  final pulumi.Input<String> id;
  /// The name of the Automation Account.
  final pulumi.Input<String> name;

  /// Creates a new [GetAccountPrivateEndpointConnection].
  /// [id] The ID of the Automation Account
  /// [name] The name of the Automation Account.
  GetAccountPrivateEndpointConnection({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetAccountPrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return GetAccountPrivateEndpointConnection(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

