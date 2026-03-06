// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'landing_zone_configuration_resource_properties.dart';

/// {@template pulumi_sovereign_landing_zone_configuration_operation_args_doc}
/// The set of arguments for LandingZoneConfigurationOperation.
/// {@endtemplate}
/// {@macro pulumi_sovereign_landing_zone_configuration_operation_args_doc}
class LandingZoneConfigurationOperationArgs {
  /// The landing zone account.
  final pulumi.Input<String> landingZoneAccountName;
  /// The landing zone configuration name
  final pulumi.Input<String>? landingZoneConfigurationName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<LandingZoneConfigurationResourceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [LandingZoneConfigurationOperationArgs].
  /// [landingZoneAccountName] The landing zone account.
  /// [landingZoneConfigurationName] The landing zone configuration name
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const LandingZoneConfigurationOperationArgs({
    required this.landingZoneAccountName,
    this.landingZoneConfigurationName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'landingZoneAccountName': landingZoneAccountName,
      'landingZoneConfigurationName': ?landingZoneConfigurationName,
      'properties': ?pulumi.Input.mapOptionalInputValue<LandingZoneConfigurationResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory LandingZoneConfigurationOperationArgs.fromMap(Map<String, dynamic> map) {
    return LandingZoneConfigurationOperationArgs(
      landingZoneAccountName: pulumi.Input.fromValue(map['landingZoneAccountName'] as String),
      landingZoneConfigurationName: (() { final guardedValue = map['landingZoneConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LandingZoneConfigurationResourceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

