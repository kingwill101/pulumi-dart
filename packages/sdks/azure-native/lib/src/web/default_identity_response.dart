// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefaultIdentityResponse {
  /// Type of managed service identity.
  final pulumi.Input<String?>? identityType;
  final pulumi.Input<String?>? userAssignedIdentityResourceId;

  /// Creates a new [DefaultIdentityResponse].
  /// [identityType] Type of managed service identity.
  /// [userAssignedIdentityResourceId] Optional.
  const DefaultIdentityResponse({
    this.identityType,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityType': ?identityType,
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory DefaultIdentityResponse.fromMap(Map<String, dynamic> map) {
    return DefaultIdentityResponse(
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentityResourceId: (() { final guardedValue = map['userAssignedIdentityResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
