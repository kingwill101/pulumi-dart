// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User Assigned Managed Identity
class UserAssignedManagedIdentityResponse {
  /// The client ID.
  final pulumi.Input<String> clientId;
  /// The principal ID.
  final pulumi.Input<String> principalId;

  /// Creates a new [UserAssignedManagedIdentityResponse].
  /// [clientId] The client ID.
  /// [principalId] The principal ID.
  const UserAssignedManagedIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedManagedIdentityResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
    );
  }
}

