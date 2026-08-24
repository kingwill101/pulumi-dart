// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_variant_variant_options.dart';

class ImageVariantVariant {
  final pulumi.Input<String?>? id;
  /// Indicates whether the variant can access an image without a signature, regardless of image access control.
  final pulumi.Input<bool?>? neverRequireSignedUrls;
  /// Allows you to define image resizing sizes for different use cases.
  final pulumi.Input<ImageVariantVariantOptions?>? options;

  /// Creates a new [ImageVariantVariant].
  /// [id] Optional.
  /// [neverRequireSignedUrls] Indicates whether the variant can access an image without a signature, regardless of image access control.
  /// [options] Allows you to define image resizing sizes for different use cases.
  const ImageVariantVariant({
    this.id,
    this.neverRequireSignedUrls,
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'neverRequireSignedUrls': ?neverRequireSignedUrls,
      'options': ?pulumi.Input.mapOptionalInputValue<ImageVariantVariantOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
    };
  }

  factory ImageVariantVariant.fromMap(Map<String, dynamic> map) {
    return ImageVariantVariant(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      neverRequireSignedUrls: (() { final guardedValue = map['neverRequireSignedUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageVariantVariantOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
