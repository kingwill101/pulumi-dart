// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_properties.dart';

/// The properties of landing zone registration resource type.
class LandingZoneRegistrationResourceProperties {
  /// The resource id of the associated landing zone configuration.
  final String existingLandingZoneConfigurationId;
  /// The resource id of the top level management group
  final String existingTopLevelMgId;
  /// The managed identity to be assigned to this landing zone registration.
  final ManagedIdentityProperties? managedIdentity;

  /// Creates a new [LandingZoneRegistrationResourceProperties].
  /// [existingLandingZoneConfigurationId] The resource id of the associated landing zone configuration.
  /// [existingTopLevelMgId] The resource id of the top level management group
  /// [managedIdentity] The managed identity to be assigned to this landing zone registration.
  LandingZoneRegistrationResourceProperties({
    required this.existingLandingZoneConfigurationId,
    required this.existingTopLevelMgId,
    this.managedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'existingLandingZoneConfigurationId': existingLandingZoneConfigurationId,
      'existingTopLevelMgId': existingTopLevelMgId,
      'managedIdentity': ?managedIdentity == null ? null : managedIdentity!.toMap(),
    };
  }

  factory LandingZoneRegistrationResourceProperties.fromMap(Map<String, dynamic> map) {
    return LandingZoneRegistrationResourceProperties(
      existingLandingZoneConfigurationId: map['existingLandingZoneConfigurationId'] as String,
      existingTopLevelMgId: map['existingTopLevelMgId'] as String,
      managedIdentity: map['managedIdentity'] == null ? null : ManagedIdentityProperties.fromMap((map['managedIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

