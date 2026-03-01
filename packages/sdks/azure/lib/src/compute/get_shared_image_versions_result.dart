// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_shared_image_versions_image.dart';

/// Result data returned by getSharedImageVersions.
class GetSharedImageVersionsResult {
  final String galleryName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String imageName;
  /// An `images` block as defined below:
  final List<GetSharedImageVersionsImage> images;
  final String resourceGroupName;
  final Map<String, String>? tagsFilter;

  /// Creates a new [GetSharedImageVersionsResult].
  /// [galleryName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageName] Required.
  /// [images] An `images` block as defined below:
  /// [resourceGroupName] Required.
  /// [tagsFilter] Optional.
  GetSharedImageVersionsResult({
    required this.galleryName,
    required this.id,
    required this.imageName,
    required this.images,
    required this.resourceGroupName,
    this.tagsFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryName': galleryName,
      'id': id,
      'imageName': imageName,
      'images': pulumi.Input.encodeList<GetSharedImageVersionsImage, Map<String, dynamic>>(images, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tagsFilter': ?tagsFilter,
    };
  }

  factory GetSharedImageVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetSharedImageVersionsResult(
      galleryName: map['galleryName'] as String,
      id: map['id'] as String,
      imageName: map['imageName'] as String,
      images: pulumi.Input.decodeList<GetSharedImageVersionsImage>(map['images'], (value) => GetSharedImageVersionsImage.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      tagsFilter: map['tagsFilter'] == null ? null : (map['tagsFilter'] as Map).cast<String, String>(),
    );
  }
}

