// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotExampleMessageChunkImage {
  /// (Output)
  /// Raw bytes of the image.
  final pulumi.Input<String>? data;
  /// (Output)
  /// The IANA standard MIME type of the source data.
  /// Supported image types includes:
  /// * image/png
  /// * image/jpeg
  /// * image/webp
  final pulumi.Input<String>? mimeType;

  /// Creates a new [AppVersionSnapshotExampleMessageChunkImage].
  /// [data] (Output)
  /// [mimeType] (Output)
  AppVersionSnapshotExampleMessageChunkImage({
    this.data,
    this.mimeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'mimeType': ?mimeType,
    };
  }

  factory AppVersionSnapshotExampleMessageChunkImage.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessageChunkImage(
      data: map['data'] == null ? null : (map['data'] as String).input(),
      mimeType: map['mimeType'] == null ? null : (map['mimeType'] as String).input(),
    );
  }
}

