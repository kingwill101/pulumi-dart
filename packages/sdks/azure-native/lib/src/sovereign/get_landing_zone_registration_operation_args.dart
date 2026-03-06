// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sovereign_get_landing_zone_registration_operation_args_doc}
/// Arguments for getLandingZoneRegistrationOperation.
/// {@endtemplate}
/// {@macro pulumi_sovereign_get_landing_zone_registration_operation_args_doc}
class GetLandingZoneRegistrationOperationArgs {
  /// The landing zone account.
  final pulumi.Input<String> landingZoneAccountName;
  /// The name of the landing zone registration resource.
  final pulumi.Input<String> landingZoneRegistrationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLandingZoneRegistrationOperationArgs].
  /// [landingZoneAccountName] The landing zone account.
  /// [landingZoneRegistrationName] The name of the landing zone registration resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetLandingZoneRegistrationOperationArgs({
    required this.landingZoneAccountName,
    required this.landingZoneRegistrationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'landingZoneAccountName': landingZoneAccountName,
      'landingZoneRegistrationName': landingZoneRegistrationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLandingZoneRegistrationOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetLandingZoneRegistrationOperationArgs(
      landingZoneAccountName: pulumi.Input.fromValue(map['landingZoneAccountName'] as String),
      landingZoneRegistrationName: pulumi.Input.fromValue(map['landingZoneRegistrationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

