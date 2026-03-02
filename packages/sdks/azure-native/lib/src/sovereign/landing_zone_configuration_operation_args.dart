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
  LandingZoneConfigurationOperationArgs({
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
      landingZoneAccountName: (map['landingZoneAccountName'] as String).input(),
      landingZoneConfigurationName: map['landingZoneConfigurationName'] == null ? null : (map['landingZoneConfigurationName'] as String).input(),
      properties: map['properties'] == null ? null : (LandingZoneConfigurationResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

