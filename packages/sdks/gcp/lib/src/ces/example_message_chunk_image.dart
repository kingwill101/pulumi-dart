// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExampleMessageChunkImage {
  /// The alternative text for the image.
  final pulumi.Input<String?>? altText;
  /// Raw bytes of the image.
  final pulumi.Input<String> data;
  /// The IANA standard MIME type of the source data.
  /// Supported image types includes:
  /// * image/png
  /// * image/jpeg
  /// * image/webp
  final pulumi.Input<String> mimeType;

  /// Creates a new [ExampleMessageChunkImage].
  /// [altText] The alternative text for the image.
  /// [data] Raw bytes of the image.
  /// [mimeType] The IANA standard MIME type of the source data.
  const ExampleMessageChunkImage({
    this.altText,
    required this.data,
    required this.mimeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'altText': ?altText,
      'data': data,
      'mimeType': mimeType,
    };
  }

  factory ExampleMessageChunkImage.fromMap(Map<String, dynamic> map) {
    return ExampleMessageChunkImage(
      altText: (() { final guardedValue = map['altText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: pulumi.Input.fromValue(map['data'] as String),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
    );
  }
}
