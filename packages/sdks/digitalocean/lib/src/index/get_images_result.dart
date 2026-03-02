// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_filter.dart';
import 'get_images_image.dart';
import 'get_images_sort.dart';

/// Result data returned by getImages.
class GetImagesResult {
  final List<GetImagesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A set of images satisfying any `filter` and `sort` criteria. Each image has the following attributes:
  final List<GetImagesImage> images;
  final List<GetImagesSort>? sorts;

  /// Creates a new [GetImagesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [images] A set of images satisfying any `filter` and `sort` criteria. Each image has the following attributes:
  /// [sorts] Optional.
  GetImagesResult({
    this.filters,
    required this.id,
    required this.images,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetImagesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'images': pulumi.Input.encodeList<GetImagesImage, Map<String, dynamic>>(images, (value) => value.toMap()),
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetImagesSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetImagesFilter>(map['filters']!, (value) => GetImagesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      images: pulumi.Input.decodeList<GetImagesImage>(map['images'], (value) => GetImagesImage.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetImagesSort>(map['sorts']!, (value) => GetImagesSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

