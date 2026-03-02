// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_properties.dart';

/// The properties of landing zone registration resource type.
class LandingZoneRegistrationResourceProperties {
  /// The resource id of the associated landing zone configuration.
  final pulumi.Input<String> existingLandingZoneConfigurationId;
  /// The resource id of the top level management group
  final pulumi.Input<String> existingTopLevelMgId;
  /// The managed identity to be assigned to this landing zone registration.
  final pulumi.Input<ManagedIdentityProperties>? managedIdentity;

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
      'managedIdentity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityProperties, Map<String, dynamic>>(managedIdentity, (value) => value.toMap()),
    };
  }

  factory LandingZoneRegistrationResourceProperties.fromMap(Map<String, dynamic> map) {
    return LandingZoneRegistrationResourceProperties(
      existingLandingZoneConfigurationId: (map['existingLandingZoneConfigurationId'] as String).input(),
      existingTopLevelMgId: (map['existingTopLevelMgId'] as String).input(),
      managedIdentity: map['managedIdentity'] == null ? null : (ManagedIdentityProperties.fromMap((map['managedIdentity']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

