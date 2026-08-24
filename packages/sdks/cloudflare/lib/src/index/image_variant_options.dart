// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageVariantOptions {
  /// The fit property describes how the width and height dimensions should be interpreted.
  /// Available values: "scale-down", "contain", "cover", "crop", "pad".
  final pulumi.Input<String> fit;
  /// Maximum height in image pixels.
  final pulumi.Input<double> height;
  /// What EXIF data should be preserved in the output image.
  /// Available values: "keep", "copyright", "none".
  final pulumi.Input<String> metadata;
  /// Maximum width in image pixels.
  final pulumi.Input<double> width;

  /// Creates a new [ImageVariantOptions].
  /// [fit] The fit property describes how the width and height dimensions should be interpreted.
  /// [height] Maximum height in image pixels.
  /// [metadata] What EXIF data should be preserved in the output image.
  /// [width] Maximum width in image pixels.
  const ImageVariantOptions({
    required this.fit,
    required this.height,
    required this.metadata,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fit': fit,
      'height': height,
      'metadata': metadata,
      'width': width,
    };
  }

  factory ImageVariantOptions.fromMap(Map<String, dynamic> map) {
    return ImageVariantOptions(
      fit: pulumi.Input.fromValue(map['fit'] as String),
      height: pulumi.Input.fromValue((map['height'] as num).toDouble()),
      metadata: pulumi.Input.fromValue(map['metadata'] as String),
      width: pulumi.Input.fromValue((map['width'] as num).toDouble()),
    );
  }
}
