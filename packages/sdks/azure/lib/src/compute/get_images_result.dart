// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image.dart';

/// Result data returned by getImages.
class GetImagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// One or more `images` blocks as defined below:
  final List<GetImagesImage>? images;
  final String? resourceGroupName;
  final Map<String, String>? tagsFilter;

  /// Creates a new [GetImagesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [images] One or more `images` blocks as defined below:
  /// [resourceGroupName] Optional.
  /// [tagsFilter] Optional.
  const GetImagesResult({
    this.id,
    this.images,
    this.resourceGroupName,
    this.tagsFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'images': ?(() { final guardedValue = images; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImagesImage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'tagsFilter': ?tagsFilter,
    };
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImagesImage>(guardedValue, (value) => GetImagesImage.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tagsFilter: (() { final guardedValue = map['tagsFilter']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
