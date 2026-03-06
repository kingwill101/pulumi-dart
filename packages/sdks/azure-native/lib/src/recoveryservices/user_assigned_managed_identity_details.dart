// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_properties.dart';

/// User assigned managed identity details
class UserAssignedManagedIdentityDetails {
  /// The ARM id of the assigned identity.
  final pulumi.Input<String>? identityArmId;
  /// The name of the assigned identity.
  final pulumi.Input<String>? identityName;
  /// User assigned managed identity properties
  final pulumi.Input<UserAssignedIdentityProperties>? userAssignedIdentityProperties;

  /// Creates a new [UserAssignedManagedIdentityDetails].
  /// [identityArmId] The ARM id of the assigned identity.
  /// [identityName] The name of the assigned identity.
  /// [userAssignedIdentityProperties] User assigned managed identity properties
  const UserAssignedManagedIdentityDetails({
    this.identityArmId,
    this.identityName,
    this.userAssignedIdentityProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityArmId': ?identityArmId,
      'identityName': ?identityName,
      'userAssignedIdentityProperties': ?pulumi.Input.mapOptionalInputValue<UserAssignedIdentityProperties, Map<String, dynamic>>(userAssignedIdentityProperties, (value) => value.toMap()),
    };
  }

  factory UserAssignedManagedIdentityDetails.fromMap(Map<String, dynamic> map) {
    return UserAssignedManagedIdentityDetails(
      identityArmId: (() { final guardedValue = map['identityArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityName: (() { final guardedValue = map['identityName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentityProperties: (() { final guardedValue = map['userAssignedIdentityProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserAssignedIdentityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

