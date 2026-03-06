// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an image source that is a managed image in customer subscription. This image must reside in the same subscription and region as the Image Builder template.
class ImageTemplateManagedImageSource {
  /// ARM resource id of the managed image in customer subscription
  final pulumi.Input<String> imageId;
  /// Specifies the type of source image you want to start with.
  /// Expected value is 'ManagedImage'.
  final pulumi.Input<String> type;

  /// Creates a new [ImageTemplateManagedImageSource].
  /// [imageId] ARM resource id of the managed image in customer subscription
  /// [type] Specifies the type of source image you want to start with.
  const ImageTemplateManagedImageSource({
    required this.imageId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageId': imageId,
      'type': type,
    };
  }

  factory ImageTemplateManagedImageSource.fromMap(Map<String, dynamic> map) {
    return ImageTemplateManagedImageSource(
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

