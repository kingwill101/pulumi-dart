// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image.dart';

/// Result data returned by getImages.
class GetImagesResult {
  /// The ID of this resource.
  final String id;
  final List<GetImagesImage> images;
  /// Include deprecated images.
  final bool? includeDeprecated;
  /// Sort results by created date.
  final bool? mostRecent;
  /// Filter results by architecture, for example `x86` or `arm`.
  final List<String>? withArchitectures;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  final String? withSelector;
  /// Filter results by statuses, for example `creating` or `available`.
  final List<String>? withStatuses;

  /// Creates a new [GetImagesResult].
  /// [id] The ID of this resource.
  /// [images] Required.
  /// [includeDeprecated] Include deprecated images.
  /// [mostRecent] Sort results by created date.
  /// [withArchitectures] Filter results by architecture, for example `x86` or `arm`.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  /// [withStatuses] Filter results by statuses, for example `creating` or `available`.
  const GetImagesResult({
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
      images: pulumi.Input.decodeList<GetImagesImage>(map['images']!, (value) => GetImagesImage.fromMap((value as Map).cast<String, dynamic>())),
      includeDeprecated: (() { final guardedValue = map['includeDeprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      withArchitectures: (() { final guardedValue = map['withArchitectures']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withStatuses: (() { final guardedValue = map['withStatuses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
