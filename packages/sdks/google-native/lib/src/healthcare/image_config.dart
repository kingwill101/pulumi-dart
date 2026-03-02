// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_config_text_redaction_mode.dart';

/// Specifies how to handle de-identification of image pixels.
class ImageConfig {
  /// Determines how to redact text from image.
  final pulumi.Input<ImageConfigTextRedactionMode>? textRedactionMode;

  /// Creates a new [ImageConfig].
  /// [textRedactionMode] Determines how to redact text from image.
  ImageConfig({
    this.textRedactionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textRedactionMode': ?pulumi.Input.mapOptionalInputValue<ImageConfigTextRedactionMode, String>(textRedactionMode, (value) => value.value),
    };
  }

  factory ImageConfig.fromMap(Map<String, dynamic> map) {
    return ImageConfig(
      textRedactionMode: map['textRedactionMode'] == null ? null : (ImageConfigTextRedactionMode.fromValue(map['textRedactionMode']! as String)).input(),
    );
  }
}

