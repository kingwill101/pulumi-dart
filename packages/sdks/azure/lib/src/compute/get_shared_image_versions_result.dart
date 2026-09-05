// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_shared_image_versions_image.dart';

/// Result data returned by getSharedImageVersions.
class GetSharedImageVersionsResult {
  final String? galleryName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? imageName;
  /// An `images` block as defined below:
  final List<GetSharedImageVersionsImage>? images;
  final String? resourceGroupName;
  final Map<String, String>? tagsFilter;

  /// Creates a new [GetSharedImageVersionsResult].
  /// [galleryName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageName] Optional.
  /// [images] An `images` block as defined below:
  /// [resourceGroupName] Optional.
  /// [tagsFilter] Optional.
  const GetSharedImageVersionsResult({
    this.galleryName,
    this.id,
    this.imageName,
    this.images,
    this.resourceGroupName,
    this.tagsFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryName': ?galleryName,
      'id': ?id,
      'imageName': ?imageName,
      'images': ?(() { final guardedValue = images; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSharedImageVersionsImage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'tagsFilter': ?tagsFilter,
    };
  }

  factory GetSharedImageVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetSharedImageVersionsResult(
      galleryName: (() { final guardedValue = map['galleryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSharedImageVersionsImage>(guardedValue, (value) => GetSharedImageVersionsImage.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tagsFilter: (() { final guardedValue = map['tagsFilter']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
