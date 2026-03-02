// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_properties_response.dart';

/// User assigned managed identity details.
class UserAssignedManagedIdentityDetailsResponse {
  final pulumi.Input<String>? identityArmId;
  final pulumi.Input<String>? identityName;
  /// User assigned managed identity properties.
  final pulumi.Input<UserAssignedIdentityPropertiesResponse>? userAssignedIdentityProperties;

  /// Creates a new [UserAssignedManagedIdentityDetailsResponse].
  /// [identityArmId] Optional.
  /// [identityName] Optional.
  /// [userAssignedIdentityProperties] User assigned managed identity properties.
  UserAssignedManagedIdentityDetailsResponse({
    this.identityArmId,
    this.identityName,
    this.userAssignedIdentityProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityArmId': ?identityArmId,
      'identityName': ?identityName,
      'userAssignedIdentityProperties': ?pulumi.Input.mapOptionalInputValue<UserAssignedIdentityPropertiesResponse, Map<String, dynamic>>(userAssignedIdentityProperties, (value) => value.toMap()),
    };
  }

  factory UserAssignedManagedIdentityDetailsResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedManagedIdentityDetailsResponse(
      identityArmId: map['identityArmId'] == null ? null : (map['identityArmId'] as String).input(),
      identityName: map['identityName'] == null ? null : (map['identityName'] as String).input(),
      userAssignedIdentityProperties: map['userAssignedIdentityProperties'] == null ? null : (UserAssignedIdentityPropertiesResponse.fromMap((map['userAssignedIdentityProperties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

