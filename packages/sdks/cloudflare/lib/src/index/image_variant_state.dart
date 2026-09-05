// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_variant_options.dart';

/// Input properties used for looking up and filtering ImageVariant resources.
class ImageVariantState {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// The ID of this resource.
  final pulumi.Input<String?>? imageVariantId;
  /// Indicates whether the variant can access an image without a signature, regardless of image access control.
  final pulumi.Input<bool?>? neverRequireSignedUrls;
  /// Allows you to define image resizing sizes for different use cases.
  final pulumi.Input<ImageVariantOptions?>? options;

  /// Creates a new [ImageVariantState].
  /// [accountId] Account identifier tag.
  /// [imageVariantId] The ID of this resource.
  /// [neverRequireSignedUrls] Indicates whether the variant can access an image without a signature, regardless of image access control.
  /// [options] Allows you to define image resizing sizes for different use cases.
  const ImageVariantState({
    this.accountId,
    this.imageVariantId,
    this.neverRequireSignedUrls,
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'imageVariantId': ?imageVariantId,
      'neverRequireSignedUrls': ?neverRequireSignedUrls,
      'options': ?pulumi.Input.mapOptionalInputValue<ImageVariantOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
    };
  }

  factory ImageVariantState.fromMap(Map<String, dynamic> map) {
    return ImageVariantState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageVariantId: (() { final guardedValue = map['imageVariantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      neverRequireSignedUrls: (() { final guardedValue = map['neverRequireSignedUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageVariantOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
