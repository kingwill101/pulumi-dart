// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Active Directory identity configuration for a resource.
class DatabaseUserIdentityResponse {
  /// The Azure Active Directory client id.
  final pulumi.Input<String> clientId;
  /// The Azure Active Directory principal id.
  final pulumi.Input<String> principalId;

  /// Creates a new [DatabaseUserIdentityResponse].
  /// [clientId] The Azure Active Directory client id.
  /// [principalId] The Azure Active Directory principal id.
  DatabaseUserIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory DatabaseUserIdentityResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseUserIdentityResponse(
      clientId: (map['clientId'] as String).input(),
      principalId: (map['principalId'] as String).input(),
    );
  }
}

