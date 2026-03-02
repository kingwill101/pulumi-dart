// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAssignedIdentityPropertiesResponse {
  /// ARM ID of user Identity selected for encryption
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [UserAssignedIdentityPropertiesResponse].
  /// [userAssignedIdentity] ARM ID of user Identity selected for encryption
  UserAssignedIdentityPropertiesResponse({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory UserAssignedIdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityPropertiesResponse(
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (map['userAssignedIdentity']! as String).input(),
    );
  }
}

