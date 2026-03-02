// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_properties_response.dart';

/// The properties of landing zone registration resource type.
class LandingZoneRegistrationResourcePropertiesResponse {
  /// The resource id of the associated landing zone configuration.
  final pulumi.Input<String> existingLandingZoneConfigurationId;
  /// The resource id of the top level management group
  final pulumi.Input<String> existingTopLevelMgId;
  /// The managed identity to be assigned to this landing zone registration.
  final pulumi.Input<ManagedIdentityPropertiesResponse>? managedIdentity;
  /// The state that reflects the current stage in the creation, updating, or deletion process of the landing zone registration resource type.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [LandingZoneRegistrationResourcePropertiesResponse].
  /// [existingLandingZoneConfigurationId] The resource id of the associated landing zone configuration.
  /// [existingTopLevelMgId] The resource id of the top level management group
  /// [managedIdentity] The managed identity to be assigned to this landing zone registration.
  /// [provisioningState] The state that reflects the current stage in the creation, updating, or deletion process of the landing zone registration resource type.
  LandingZoneRegistrationResourcePropertiesResponse({
    required this.existingLandingZoneConfigurationId,
    required this.existingTopLevelMgId,
    this.managedIdentity,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'existingLandingZoneConfigurationId': existingLandingZoneConfigurationId,
      'existingTopLevelMgId': existingTopLevelMgId,
      'managedIdentity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityPropertiesResponse, Map<String, dynamic>>(managedIdentity, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory LandingZoneRegistrationResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LandingZoneRegistrationResourcePropertiesResponse(
      existingLandingZoneConfigurationId: (map['existingLandingZoneConfigurationId'] as String).input(),
      existingTopLevelMgId: (map['existingTopLevelMgId'] as String).input(),
      managedIdentity: map['managedIdentity'] == null ? null : (ManagedIdentityPropertiesResponse.fromMap((map['managedIdentity']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

