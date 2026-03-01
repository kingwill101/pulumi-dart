// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image.dart';

/// Result data returned by getImages.
class GetImagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (list) List of all matching images. See `data.hcloud_image` for schema.
  final List<GetImagesImage> images;
  final bool? includeDeprecated;
  final bool? mostRecent;
  final List<String>? withArchitectures;
  final String? withSelector;
  final List<String>? withStatuses;

  /// Creates a new [GetImagesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [images] (list) List of all matching images. See `data.hcloud_image` for schema.
  /// [includeDeprecated] Optional.
  /// [mostRecent] Optional.
  /// [withArchitectures] Optional.
  /// [withSelector] Optional.
  /// [withStatuses] Optional.
  GetImagesResult({
    required this.id,
    required this.images,
    this.includeDeprecated,
    this.mostRecent,
    this.withArchitectures,
    this.withSelector,
    this.withStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'images': pulumi.Input.encodeList<GetImagesImage, Map<String, dynamic>>(images, (value) => value.toMap()),
      'includeDeprecated': ?includeDeprecated,
      'mostRecent': ?mostRecent,
      'withArchitectures': ?withArchitectures,
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      id: map['id'] as String,
      images: pulumi.Input.decodeList<GetImagesImage>(map['images'], (value) => GetImagesImage.fromMap((value as Map).cast<String, dynamic>())),
      includeDeprecated: map['includeDeprecated'] == null ? null : map['includeDeprecated'] as bool,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      withArchitectures: map['withArchitectures'] == null ? null : (map['withArchitectures'] as List).cast<String>(),
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
      withStatuses: map['withStatuses'] == null ? null : (map['withStatuses'] as List).cast<String>(),
    );
  }
}

