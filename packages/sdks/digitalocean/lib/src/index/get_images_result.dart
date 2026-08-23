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
  const GetImagesResult({
    this.filters,
    required this.id,
    required this.images,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImagesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'images': pulumi.Input.encodeList<GetImagesImage, Map<String, dynamic>>(images, (value) => value.toMap()),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImagesSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImagesFilter>(guardedValue, (value) => GetImagesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      images: pulumi.Input.decodeList<GetImagesImage>(map['images']!, (value) => GetImagesImage.fromMap((value as Map).cast<String, dynamic>())),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImagesSort>(guardedValue, (value) => GetImagesSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
