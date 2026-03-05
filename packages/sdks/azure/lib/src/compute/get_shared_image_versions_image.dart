// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_shared_image_versions_image_target_region.dart';

class GetSharedImageVersionsImage {
  /// Is this Image Version excluded from the `latest` filter?
  final pulumi.Input<bool> excludeFromLatest;
  /// The ID of this Shared Image Version.
  final pulumi.Input<String> id;
  /// The supported Azure location where the Shared Image Gallery exists.
  final pulumi.Input<String> location;
  /// The ID of the Managed Image which was the source of this Shared Image Version.
  final pulumi.Input<String> managedImageId;
  /// The Azure Region in which this Image Version exists.
  final pulumi.Input<String> name;
  /// A mapping of tags assigned to the Shared Image.
  final pulumi.Input<Map<String, String>> tags;
  /// One or more `target_region` blocks as documented below.
  final pulumi.Input<List<GetSharedImageVersionsImageTargetRegion>> targetRegions;

  /// Creates a new [GetSharedImageVersionsImage].
  /// [excludeFromLatest] Is this Image Version excluded from the `latest` filter?
  /// [id] The ID of this Shared Image Version.
  /// [location] The supported Azure location where the Shared Image Gallery exists.
  /// [managedImageId] The ID of the Managed Image which was the source of this Shared Image Version.
  /// [name] The Azure Region in which this Image Version exists.
  /// [tags] A mapping of tags assigned to the Shared Image.
  /// [targetRegions] One or more `target_region` blocks as documented below.
  GetSharedImageVersionsImage({
    required this.excludeFromLatest,
    required this.id,
    required this.location,
    required this.managedImageId,
    required this.name,
    required this.tags,
    required this.targetRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeFromLatest': excludeFromLatest,
      'id': id,
      'location': location,
      'managedImageId': managedImageId,
      'name': name,
      'tags': tags,
      'targetRegions': pulumi.Input.mapInputValue<List<GetSharedImageVersionsImageTargetRegion>, List<Map<String, dynamic>>>(targetRegions, (value) => pulumi.Input.encodeList<GetSharedImageVersionsImageTargetRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSharedImageVersionsImage.fromMap(Map<String, dynamic> map) {
    return GetSharedImageVersionsImage(
      excludeFromLatest: pulumi.Input.fromValue(map['excludeFromLatest'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      managedImageId: pulumi.Input.fromValue(map['managedImageId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      targetRegions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSharedImageVersionsImageTargetRegion>(map['targetRegions']!, (value) => GetSharedImageVersionsImageTargetRegion.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

