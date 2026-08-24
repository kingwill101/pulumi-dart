// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_variant_variant_options.dart';

class GetImageVariantVariant {
  final pulumi.Input<String> id;
  /// Indicates whether the variant can access an image without a signature, regardless of image access control.
  final pulumi.Input<bool> neverRequireSignedUrls;
  /// Allows you to define image resizing sizes for different use cases.
  final pulumi.Input<GetImageVariantVariantOptions> options;

  /// Creates a new [GetImageVariantVariant].
  /// [id] Required.
  /// [neverRequireSignedUrls] Indicates whether the variant can access an image without a signature, regardless of image access control.
  /// [options] Allows you to define image resizing sizes for different use cases.
  const GetImageVariantVariant({
    required this.id,
    required this.neverRequireSignedUrls,
    required this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'neverRequireSignedUrls': neverRequireSignedUrls,
      'options': pulumi.Input.mapInputValue<GetImageVariantVariantOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
    };
  }

  factory GetImageVariantVariant.fromMap(Map<String, dynamic> map) {
    return GetImageVariantVariant(
      id: pulumi.Input.fromValue(map['id'] as String),
      neverRequireSignedUrls: pulumi.Input.fromValue(map['neverRequireSignedUrls'] as bool),
      options: pulumi.Input.fromValue(GetImageVariantVariantOptions.fromMap((map['options']! as Map).cast<String, dynamic>())),
    );
  }
}
