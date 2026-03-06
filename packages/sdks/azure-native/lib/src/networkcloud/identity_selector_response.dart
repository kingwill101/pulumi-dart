// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentitySelectorResponse {
  /// The type of managed identity that is being selected.
  final pulumi.Input<String>? identityType;
  /// The user assigned managed identity resource ID to use. Mutually exclusive with a system assigned identity type.
  final pulumi.Input<String>? userAssignedIdentityResourceId;

  /// Creates a new [IdentitySelectorResponse].
  /// [identityType] The type of managed identity that is being selected.
  /// [userAssignedIdentityResourceId] The user assigned managed identity resource ID to use. Mutually exclusive with a system assigned identity type.
  const IdentitySelectorResponse({
    this.identityType,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityType': ?identityType,
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory IdentitySelectorResponse.fromMap(Map<String, dynamic> map) {
    return IdentitySelectorResponse(
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentityResourceId: (() { final guardedValue = map['userAssignedIdentityResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

