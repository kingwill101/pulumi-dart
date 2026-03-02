// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an image source that is a managed image in customer subscription. This image must reside in the same subscription and region as the Image Builder template.
class ImageTemplateManagedImageSourceResponse {
  /// ARM resource id of the managed image in customer subscription
  final pulumi.Input<String> imageId;
  /// Specifies the type of source image you want to start with.
  /// Expected value is 'ManagedImage'.
  final pulumi.Input<String> type;

  /// Creates a new [ImageTemplateManagedImageSourceResponse].
  /// [imageId] ARM resource id of the managed image in customer subscription
  /// [type] Specifies the type of source image you want to start with.
  ImageTemplateManagedImageSourceResponse({
    required this.imageId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageId': imageId,
      'type': type,
    };
  }

  factory ImageTemplateManagedImageSourceResponse.fromMap(Map<String, dynamic> map) {
    return ImageTemplateManagedImageSourceResponse(
      imageId: (map['imageId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

