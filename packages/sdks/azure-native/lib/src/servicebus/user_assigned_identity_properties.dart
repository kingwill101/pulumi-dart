// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAssignedIdentityProperties {
  /// ARM ID of user Identity selected for encryption
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [UserAssignedIdentityProperties].
  /// [userAssignedIdentity] ARM ID of user Identity selected for encryption
  UserAssignedIdentityProperties({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory UserAssignedIdentityProperties.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityProperties(
      userAssignedIdentity: (() { final guardedValue = map['userAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

