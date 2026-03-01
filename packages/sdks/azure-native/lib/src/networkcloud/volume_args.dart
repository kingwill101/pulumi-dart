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
    required pulumi.Output<ExtendedLocation> extendedLocation,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<double> sizeMiB,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? volumeName,
  }) :
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sizeMiB = pulumi.Input.asInput<double>(sizeMiB),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      volumeName = pulumi.Input.asOptionalInput<String>(volumeName);

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
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sizeMiB: pulumi.Output.create<double>(map['sizeMiB'] as double),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      volumeName: map['volumeName'] == null ? null : pulumi.Output.create<String>(map['volumeName'] as String),
    );
  }
}

