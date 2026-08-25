// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image.dart';

/// Result data returned by getImages.
class GetImagesResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetImagesImage>? images;
  final String? project;

  /// Creates a new [GetImagesResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [images] Optional.
  /// [project] Optional.
  const GetImagesResult({
    this.filter,
    this.id,
    this.images,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'images': ?(() { final guardedValue = images; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImagesImage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
    };
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImagesImage>(guardedValue, (value) => GetImagesImage.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
