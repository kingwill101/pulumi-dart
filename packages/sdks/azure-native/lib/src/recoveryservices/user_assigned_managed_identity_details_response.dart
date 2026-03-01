// ignore_for_file: unused_element, unnecessary_cast

import 'user_assigned_identity_properties_response.dart';

/// User assigned managed identity details
class UserAssignedManagedIdentityDetailsResponse {
  /// The ARM id of the assigned identity.
  final String? identityArmId;
  /// The name of the assigned identity.
  final String? identityName;
  /// User assigned managed identity properties
  final UserAssignedIdentityPropertiesResponse? userAssignedIdentityProperties;

  /// Creates a new [UserAssignedManagedIdentityDetailsResponse].
  /// [identityArmId] The ARM id of the assigned identity.
  /// [identityName] The name of the assigned identity.
  /// [userAssignedIdentityProperties] User assigned managed identity properties
  UserAssignedManagedIdentityDetailsResponse({
    this.identityArmId,
    this.identityName,
    this.userAssignedIdentityProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityArmId': ?identityArmId,
      'identityName': ?identityName,
      'userAssignedIdentityProperties': ?userAssignedIdentityProperties == null ? null : userAssignedIdentityProperties!.toMap(),
    };
  }

  factory UserAssignedManagedIdentityDetailsResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedManagedIdentityDetailsResponse(
      identityArmId: map['identityArmId'] == null ? null : map['identityArmId'] as String,
      identityName: map['identityName'] == null ? null : map['identityName'] as String,
      userAssignedIdentityProperties: map['userAssignedIdentityProperties'] == null ? null : UserAssignedIdentityPropertiesResponse.fromMap((map['userAssignedIdentityProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

