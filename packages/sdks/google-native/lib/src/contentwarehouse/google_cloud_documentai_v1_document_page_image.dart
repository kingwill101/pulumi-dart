// ignore_for_file: unused_element, unnecessary_cast


/// Rendered image contents for this page.
class GoogleCloudDocumentaiV1DocumentPageImage {
  /// Raw byte content of the image.
  final String? content;
  /// Height of the image in pixels.
  final int? height;
  /// Encoding [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml) for the image.
  final String? mimeType;
  /// Width of the image in pixels.
  final int? width;

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

  factory GoogleCloudDocumentaiV1DocumentPageImage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageImage(
      content: map['content'] == null ? null : map['content'] as String,
      height: map['height'] == null ? null : map['height'] as int,
      mimeType: map['mimeType'] == null ? null : map['mimeType'] as String,
      width: map['width'] == null ? null : map['width'] as int,
    );
  }
}

