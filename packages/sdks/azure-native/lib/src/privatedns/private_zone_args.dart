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
    pulumi.Output<String>? location,
    pulumi.Output<String>? privateZoneName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      privateZoneName = pulumi.Input.asOptionalInput<String>(privateZoneName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      privateZoneName: map['privateZoneName'] == null ? null : pulumi.Output.create<String>(map['privateZoneName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

