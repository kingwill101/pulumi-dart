// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LightHouseAuthorizationResponse {
  /// The principal id.
  final pulumi.Input<String> principalId;
  /// The role definition id.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [LightHouseAuthorizationResponse].
  /// [principalId] The principal id.
  /// [roleDefinitionId] The role definition id.
  LightHouseAuthorizationResponse({
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory LightHouseAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return LightHouseAuthorizationResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      roleDefinitionId: pulumi.Input.fromValue(map['roleDefinitionId'] as String),
    );
  }
}

