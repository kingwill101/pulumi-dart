// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_networkcloud_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_volume_args_doc}
class VolumeArgs {
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The size of the allocation for this volume in Mebibytes.
  final pulumi.Input<double> sizeMiB;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the volume.
  final pulumi.Input<String>? volumeName;

  /// Creates a new [VolumeArgs].
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sizeMiB] The size of the allocation for this volume in Mebibytes.
  /// [tags] Resource tags.
  /// [volumeName] The name of the volume.
  VolumeArgs({
    required this.extendedLocation,
    this.location,
    required this.resourceGroupName,
    required this.sizeMiB,
    this.tags,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sizeMiB': sizeMiB,
      'tags': ?tags,
      'volumeName': ?volumeName,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sizeMiB: (map['sizeMiB'] as double).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      volumeName: map['volumeName'] == null ? null : (map['volumeName']! as String).input(),
    );
  }
}

