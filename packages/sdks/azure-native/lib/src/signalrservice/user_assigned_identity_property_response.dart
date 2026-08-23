// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of user assigned identity.
class UserAssignedIdentityPropertyResponse {
  /// Get the client id for the user assigned identity
  final pulumi.Input<String> clientId;
  /// Get the principal id for the user assigned identity
  final pulumi.Input<String> principalId;

  /// Creates a new [UserAssignedIdentityPropertyResponse].
  /// [clientId] Get the client id for the user assigned identity
  /// [principalId] Get the principal id for the user assigned identity
  const UserAssignedIdentityPropertyResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedIdentityPropertyResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityPropertyResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
    );
  }
}
