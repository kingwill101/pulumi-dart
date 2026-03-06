// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Active Directory identity configuration for a resource.
class UserIdentityResponse {
  /// The Azure Active Directory client id.
  final pulumi.Input<String> clientId;
  /// The Azure Active Directory principal id.
  final pulumi.Input<String> principalId;

  /// Creates a new [UserIdentityResponse].
  /// [clientId] The Azure Active Directory client id.
  /// [principalId] The Azure Active Directory principal id.
  const UserIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserIdentityResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
    );
  }
}

