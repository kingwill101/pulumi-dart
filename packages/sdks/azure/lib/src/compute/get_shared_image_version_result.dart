// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_shared_image_version_target_region.dart';

/// Result data returned by getSharedImageVersion.
class GetSharedImageVersionResult {
  /// Is this Image Version excluded from the `latest` filter?
  final bool? excludeFromLatest;
  final String? galleryName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? imageName;
  /// The supported Azure location where the Shared Image Gallery exists.
  final String? location;
  /// The ID of the Managed Image which was the source of this Shared Image Version.
  final String? managedImageId;
  /// The Azure Region in which this Image Version exists.
  final String? name;
  /// The size of the OS disk snapshot (in Gigabytes) which was the source of this Shared Image Version.
  final int? osDiskImageSizeGb;
  /// The ID of the OS disk snapshot which was the source of this Shared Image Version.
  final String? osDiskSnapshotId;
  final String? resourceGroupName;
  final bool? sortVersionsBySemver;
  /// A mapping of tags assigned to the Shared Image.
  final Map<String, String>? tags;
  /// One or more `targetRegion` blocks as documented below.
  final List<GetSharedImageVersionTargetRegion>? targetRegions;

  /// Creates a new [GetSharedImageVersionResult].
  /// [excludeFromLatest] Is this Image Version excluded from the `latest` filter?
  /// [galleryName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageName] Optional.
  /// [location] The supported Azure location where the Shared Image Gallery exists.
  /// [managedImageId] The ID of the Managed Image which was the source of this Shared Image Version.
  /// [name] The Azure Region in which this Image Version exists.
  /// [osDiskImageSizeGb] The size of the OS disk snapshot (in Gigabytes) which was the source of this Shared Image Version.
  /// [osDiskSnapshotId] The ID of the OS disk snapshot which was the source of this Shared Image Version.
  /// [resourceGroupName] Optional.
  /// [sortVersionsBySemver] Optional.
  /// [tags] A mapping of tags assigned to the Shared Image.
  /// [targetRegions] One or more `targetRegion` blocks as documented below.
  const GetSharedImageVersionResult({
    this.excludeFromLatest,
    this.galleryName,
    this.id,
    this.imageName,
    this.location,
    this.managedImageId,
    this.name,
    this.osDiskImageSizeGb,
    this.osDiskSnapshotId,
    this.resourceGroupName,
    this.sortVersionsBySemver,
    this.tags,
    this.targetRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeFromLatest': ?excludeFromLatest,
      'galleryName': ?galleryName,
      'id': ?id,
      'imageName': ?imageName,
      'location': ?location,
      'managedImageId': ?managedImageId,
      'name': ?name,
      'osDiskImageSizeGb': ?osDiskImageSizeGb,
      'osDiskSnapshotId': ?osDiskSnapshotId,
      'resourceGroupName': ?resourceGroupName,
      'sortVersionsBySemver': ?sortVersionsBySemver,
      'tags': ?tags,
      'targetRegions': ?(() { final guardedValue = targetRegions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSharedImageVersionTargetRegion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSharedImageVersionResult.fromMap(Map<String, dynamic> map) {
    return GetSharedImageVersionResult(
      excludeFromLatest: (() { final guardedValue = map['excludeFromLatest']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      galleryName: (() { final guardedValue = map['galleryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedImageId: (() { final guardedValue = map['managedImageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osDiskImageSizeGb: (() { final guardedValue = map['osDiskImageSizeGb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      osDiskSnapshotId: (() { final guardedValue = map['osDiskSnapshotId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortVersionsBySemver: (() { final guardedValue = map['sortVersionsBySemver']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetRegions: (() { final guardedValue = map['targetRegions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSharedImageVersionTargetRegion>(guardedValue, (value) => GetSharedImageVersionTargetRegion.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
