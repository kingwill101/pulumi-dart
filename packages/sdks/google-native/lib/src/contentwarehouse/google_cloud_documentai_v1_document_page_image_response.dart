// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rendered image contents for this page.
class GoogleCloudDocumentaiV1DocumentPageImageResponse {
  /// Raw byte content of the image.
  final pulumi.Input<String> content;
  /// Height of the image in pixels.
  final pulumi.Input<int> height;
  /// Encoding [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml) for the image.
  final pulumi.Input<String> mimeType;
  /// Width of the image in pixels.
  final pulumi.Input<int> width;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageImageResponse].
  /// [content] Raw byte content of the image.
  /// [height] Height of the image in pixels.
  /// [mimeType] Encoding [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml) for the image.
  /// [width] Width of the image in pixels.
  const GoogleCloudDocumentaiV1DocumentPageImageResponse({
    required this.content,
    required this.height,
    required this.mimeType,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'height': height,
      'mimeType': mimeType,
      'width': width,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageImageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageImageResponse(
      content: pulumi.Input.fromValue(map['content'] as String),
      height: pulumi.Input.fromValue(map['height'] as int),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
      width: pulumi.Input.fromValue(map['width'] as int),
    );
  }
}
