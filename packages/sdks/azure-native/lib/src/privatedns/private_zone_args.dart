// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_private_zone_args_doc}
/// The set of arguments for PrivateZone.
/// {@endtemplate}
/// {@macro pulumi_privatedns_private_zone_args_doc}
class PrivateZoneArgs {
  /// The Azure Region where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the Private DNS zone (without a terminating dot).
  final pulumi.Input<String>? privateZoneName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrivateZoneArgs].
  /// [location] The Azure Region where the resource lives
  /// [privateZoneName] The name of the Private DNS zone (without a terminating dot).
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  PrivateZoneArgs({
    this.location,
    this.privateZoneName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'privateZoneName': ?privateZoneName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PrivateZoneArgs.fromMap(Map<String, dynamic> map) {
    return PrivateZoneArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      privateZoneName: map['privateZoneName'] == null ? null : (map['privateZoneName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

