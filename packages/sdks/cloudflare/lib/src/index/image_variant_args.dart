// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_variant_options.dart';

/// {@template pulumi_index_image_variant_image_variant_args_doc}
/// The set of arguments for ImageVariant.
/// {@endtemplate}
/// {@macro pulumi_index_image_variant_image_variant_args_doc}
class ImageVariantArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// The ID of this resource.
  final pulumi.Input<String> imageVariantId;
  /// Indicates whether the variant can access an image without a signature, regardless of image access control.
  final pulumi.Input<bool?>? neverRequireSignedUrls;
  /// Allows you to define image resizing sizes for different use cases.
  final pulumi.Input<ImageVariantOptions> options;

  /// Creates a new [ImageVariantArgs].
  /// [accountId] Account identifier tag.
  /// [imageVariantId] The ID of this resource.
  /// [neverRequireSignedUrls] Indicates whether the variant can access an image without a signature, regardless of image access control.
  /// [options] Allows you to define image resizing sizes for different use cases.
  const ImageVariantArgs({
    required this.accountId,
    required this.imageVariantId,
    this.neverRequireSignedUrls,
    required this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'imageVariantId': imageVariantId,
      'neverRequireSignedUrls': ?neverRequireSignedUrls,
      'options': pulumi.Input.mapInputValue<ImageVariantOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
    };
  }

  factory ImageVariantArgs.fromMap(Map<String, dynamic> map) {
    return ImageVariantArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      imageVariantId: pulumi.Input.fromValue(map['imageVariantId'] as String),
      neverRequireSignedUrls: (() { final guardedValue = map['neverRequireSignedUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      options: pulumi.Input.fromValue(ImageVariantOptions.fromMap((map['options']! as Map).cast<String, dynamic>())),
    );
  }
}
