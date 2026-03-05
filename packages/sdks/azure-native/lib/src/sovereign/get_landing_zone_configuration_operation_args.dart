// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sovereign_get_landing_zone_configuration_operation_args_doc}
/// Arguments for getLandingZoneConfigurationOperation.
/// {@endtemplate}
/// {@macro pulumi_sovereign_get_landing_zone_configuration_operation_args_doc}
class GetLandingZoneConfigurationOperationArgs {
  /// The landing zone account.
  final pulumi.Input<String> landingZoneAccountName;
  /// The landing zone configuration name
  final pulumi.Input<String> landingZoneConfigurationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLandingZoneConfigurationOperationArgs].
  /// [landingZoneAccountName] The landing zone account.
  /// [landingZoneConfigurationName] The landing zone configuration name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLandingZoneConfigurationOperationArgs({
    required this.landingZoneAccountName,
    required this.landingZoneConfigurationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'landingZoneAccountName': landingZoneAccountName,
      'landingZoneConfigurationName': landingZoneConfigurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLandingZoneConfigurationOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetLandingZoneConfigurationOperationArgs(
      landingZoneAccountName: pulumi.Input.fromValue(map['landingZoneAccountName'] as String),
      landingZoneConfigurationName: pulumi.Input.fromValue(map['landingZoneConfigurationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

