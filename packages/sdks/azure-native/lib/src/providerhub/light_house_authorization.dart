// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LightHouseAuthorization {
  /// The principal id.
  final pulumi.Input<String> principalId;
  /// The role definition id.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [LightHouseAuthorization].
  /// [principalId] The principal id.
  /// [roleDefinitionId] The role definition id.
  const LightHouseAuthorization({
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory LightHouseAuthorization.fromMap(Map<String, dynamic> map) {
    return LightHouseAuthorization(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      roleDefinitionId: pulumi.Input.fromValue(map['roleDefinitionId'] as String),
    );
  }
}

