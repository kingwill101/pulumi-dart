// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_private_zone_args_doc}
/// Arguments for getPrivateZone.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_private_zone_args_doc}
class GetPrivateZoneArgs {
  /// The name of the Private DNS zone (without a terminating dot).
  final pulumi.Input<String> privateZoneName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateZoneArgs].
  /// [privateZoneName] The name of the Private DNS zone (without a terminating dot).
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPrivateZoneArgs({
    required this.privateZoneName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateZoneName': privateZoneName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateZoneArgs(
      privateZoneName: (map['privateZoneName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

