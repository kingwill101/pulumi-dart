// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Recognized Dictionary value.
class UserAssignedIdentityResponse {
  /// Client Id of user assigned identity
  final pulumi.Input<String> clientId;
  /// Principal Id of user assigned identity
  final pulumi.Input<String> principalId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] Client Id of user assigned identity
  /// [principalId] Principal Id of user assigned identity
  const UserAssignedIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
    );
  }
}
