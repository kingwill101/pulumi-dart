// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_shared_image_version_target_region.dart';

/// Result data returned by getSharedImageVersion.
class GetSharedImageVersionResult {
  /// Is this Image Version excluded from the `latest` filter?
  final bool excludeFromLatest;
  final String galleryName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String imageName;
  /// The supported Azure location where the Shared Image Gallery exists.
  final String location;
  /// The ID of the Managed Image which was the source of this Shared Image Version.
  final String managedImageId;
  /// The Azure Region in which this Image Version exists.
  final String name;
  /// The size of the OS disk snapshot (in Gigabytes) which was the source of this Shared Image Version.
  final int osDiskImageSizeGb;
  /// The ID of the OS disk snapshot which was the source of this Shared Image Version.
  final String osDiskSnapshotId;
  final String resourceGroupName;
  final bool? sortVersionsBySemver;
  /// A mapping of tags assigned to the Shared Image.
  final Map<String, String>? tags;
  /// One or more `targetRegion` blocks as documented below.
  final List<GetSharedImageVersionTargetRegion> targetRegions;

  /// Creates a new [GetSharedImageVersionResult].
  /// [excludeFromLatest] Is this Image Version excluded from the `latest` filter?
  /// [galleryName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageName] Required.
  /// [location] The supported Azure location where the Shared Image Gallery exists.
  /// [managedImageId] The ID of the Managed Image which was the source of this Shared Image Version.
  /// [name] The Azure Region in which this Image Version exists.
  /// [osDiskImageSizeGb] The size of the OS disk snapshot (in Gigabytes) which was the source of this Shared Image Version.
  /// [osDiskSnapshotId] The ID of the OS disk snapshot which was the source of this Shared Image Version.
  /// [resourceGroupName] Required.
  /// [sortVersionsBySemver] Optional.
  /// [tags] A mapping of tags assigned to the Shared Image.
  /// [targetRegions] One or more `targetRegion` blocks as documented below.
  const GetSharedImageVersionResult({
    required this.excludeFromLatest,
    required this.galleryName,
    required this.id,
    required this.imageName,
    required this.location,
    required this.managedImageId,
    required this.name,
    required this.osDiskImageSizeGb,
    required this.osDiskSnapshotId,
    required this.resourceGroupName,
    this.sortVersionsBySemver,
    this.tags,
    required this.targetRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeFromLatest': excludeFromLatest,
      'galleryName': galleryName,
      'id': id,
      'imageName': imageName,
      'location': location,
      'managedImageId': managedImageId,
      'name': name,
      'osDiskImageSizeGb': osDiskImageSizeGb,
      'osDiskSnapshotId': osDiskSnapshotId,
      'resourceGroupName': resourceGroupName,
      'sortVersionsBySemver': ?sortVersionsBySemver,
      'tags': ?tags,
      'targetRegions': pulumi.Input.encodeList<GetSharedImageVersionTargetRegion, Map<String, dynamic>>(targetRegions, (value) => value.toMap()),
    };
  }

  factory GetSharedImageVersionResult.fromMap(Map<String, dynamic> map) {
    return GetSharedImageVersionResult(
      excludeFromLatest: map['excludeFromLatest'] as bool,
      galleryName: map['galleryName'] as String,
      id: map['id'] as String,
      imageName: map['imageName'] as String,
      location: map['location'] as String,
      managedImageId: map['managedImageId'] as String,
      name: map['name'] as String,
      osDiskImageSizeGb: map['osDiskImageSizeGb'] as int,
      osDiskSnapshotId: map['osDiskSnapshotId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sortVersionsBySemver: (() { final guardedValue = map['sortVersionsBySemver']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetRegions: pulumi.Input.decodeList<GetSharedImageVersionTargetRegion>(map['targetRegions']!, (value) => GetSharedImageVersionTargetRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
