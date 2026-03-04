// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExampleMessageChunkImage {
  /// Raw bytes of the image.
  final pulumi.Input<String> data;

  /// The IANA standard MIME type of the source data.
  /// Supported image types includes:
  /// * image/png
  /// * image/jpeg
  /// * image/webp
  final pulumi.Input<String> mimeType;

  /// Creates a new [ExampleMessageChunkImage].
  /// [data] Raw bytes of the image.
  /// [mimeType] The IANA standard MIME type of the source data.
  ExampleMessageChunkImage({required this.data, required this.mimeType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'data': data, 'mimeType': mimeType};
  }

  factory ExampleMessageChunkImage.fromMap(Map<String, dynamic> map) {
    return ExampleMessageChunkImage(
      data: pulumi.Input.fromValue(map['data'] as String),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
    );
  }
}
