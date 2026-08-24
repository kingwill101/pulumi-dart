// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageVariantVariantOptions {
  /// The fit property describes how the width and height dimensions should be interpreted.
  /// Available values: "scale-down", "contain", "cover", "crop", "pad".
  final pulumi.Input<String?>? fit;
  /// Maximum height in image pixels.
  final pulumi.Input<double?>? height;
  /// What EXIF data should be preserved in the output image.
  /// Available values: "keep", "copyright", "none".
  final pulumi.Input<String?>? metadata;
  /// Maximum width in image pixels.
  final pulumi.Input<double?>? width;

  /// Creates a new [ImageVariantVariantOptions].
  /// [fit] The fit property describes how the width and height dimensions should be interpreted.
  /// [height] Maximum height in image pixels.
  /// [metadata] What EXIF data should be preserved in the output image.
  /// [width] Maximum width in image pixels.
  const ImageVariantVariantOptions({
    this.fit,
    this.height,
    this.metadata,
    this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fit': ?fit,
      'height': ?height,
      'metadata': ?metadata,
      'width': ?width,
    };
  }

  factory ImageVariantVariantOptions.fromMap(Map<String, dynamic> map) {
    return ImageVariantVariantOptions(
      fit: (() { final guardedValue = map['fit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      height: (() { final guardedValue = map['height']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      width: (() { final guardedValue = map['width']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
