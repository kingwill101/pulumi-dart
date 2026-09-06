// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User assigned managed identity properties.
class UserAssignedIdentityPropertiesResponse {
  final pulumi.Input<String?>? clientId;
  final pulumi.Input<String?>? principalId;

  /// Creates a new [UserAssignedIdentityPropertiesResponse].
  /// [clientId] Optional.
  /// [principalId] Optional.
  const UserAssignedIdentityPropertiesResponse({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserAssignedIdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityPropertiesResponse(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
