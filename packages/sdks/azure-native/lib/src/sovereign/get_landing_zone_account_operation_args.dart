// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sovereign_get_landing_zone_account_operation_args_doc}
/// Arguments for getLandingZoneAccountOperation.
/// {@endtemplate}
/// {@macro pulumi_sovereign_get_landing_zone_account_operation_args_doc}
class GetLandingZoneAccountOperationArgs {
  /// The landing zone account.
  final pulumi.Input<String> landingZoneAccountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLandingZoneAccountOperationArgs].
  /// [landingZoneAccountName] The landing zone account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLandingZoneAccountOperationArgs({
    required this.landingZoneAccountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'landingZoneAccountName': landingZoneAccountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLandingZoneAccountOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetLandingZoneAccountOperationArgs(
      landingZoneAccountName: pulumi.Input.fromValue(map['landingZoneAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

