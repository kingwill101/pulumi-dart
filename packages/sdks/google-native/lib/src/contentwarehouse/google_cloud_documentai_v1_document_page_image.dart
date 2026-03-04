// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rendered image contents for this page.
class GoogleCloudDocumentaiV1DocumentPageImage {
  /// Raw byte content of the image.
  final pulumi.Input<String>? content;

  /// Height of the image in pixels.
  final pulumi.Input<int>? height;

  /// Encoding [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml) for the image.
  final pulumi.Input<String>? mimeType;

  /// Width of the image in pixels.
  final pulumi.Input<int>? width;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageImage].
  /// [content] Raw byte content of the image.
  /// [height] Height of the image in pixels.
  /// [mimeType] Encoding [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml) for the image.
  /// [width] Width of the image in pixels.
  GoogleCloudDocumentaiV1DocumentPageImage({
    this.content,
    this.height,
    this.mimeType,
    this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'height': ?height,
      'mimeType': ?mimeType,
      'width': ?width,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageImage.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageImage(
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      height: (() {
        final guardedValue = map['height'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      mimeType: (() {
        final guardedValue = map['mimeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      width: (() {
        final guardedValue = map['width'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
