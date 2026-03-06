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
  const LandingZoneRegistrationResourceProperties({
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
      existingLandingZoneConfigurationId: pulumi.Input.fromValue(map['existingLandingZoneConfigurationId'] as String),
      existingTopLevelMgId: pulumi.Input.fromValue(map['existingTopLevelMgId'] as String),
      managedIdentity: (() { final guardedValue = map['managedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

