// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how to handle de-identification of image pixels.
class ImageConfigResponse {
  /// Determines how to redact text from image.
  final pulumi.Input<String> textRedactionMode;

  /// Creates a new [ImageConfigResponse].
  /// [textRedactionMode] Determines how to redact text from image.
  const ImageConfigResponse({
    required this.textRedactionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textRedactionMode': textRedactionMode,
    };
  }

  factory ImageConfigResponse.fromMap(Map<String, dynamic> map) {
    return ImageConfigResponse(
      textRedactionMode: pulumi.Input.fromValue(map['textRedactionMode'] as String),
    );
  }
}

