// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uses client ID and Principal ID
class UserAssignedIdentityResponse {
  /// Gets or Sets Client ID
  final pulumi.Input<String> clientId;

  /// Gets or Sets Principal ID
  final pulumi.Input<String> principalId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] Gets or Sets Client ID
  /// [principalId] Gets or Sets Principal ID
  UserAssignedIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'clientId': clientId, 'principalId': principalId};
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
    );
  }
}
