// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A text segment in the Document.text. The indices may be out of bounds which indicate that the text extends into another document shard for large sharded documents. See ShardInfo.text_offset
class GoogleCloudDocumentaiV1DocumentTextAnchorTextSegmentResponse {
  /// TextSegment half open end UTF-8 char index in the Document.text.
  final pulumi.Input<String> endIndex;
  /// TextSegment start UTF-8 char index in the Document.text.
  final pulumi.Input<String> startIndex;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentTextAnchorTextSegmentResponse].
  /// [endIndex] TextSegment half open end UTF-8 char index in the Document.text.
  /// [startIndex] TextSegment start UTF-8 char index in the Document.text.
  const GoogleCloudDocumentaiV1DocumentTextAnchorTextSegmentResponse({
    required this.endIndex,
    required this.startIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIndex': endIndex,
      'startIndex': startIndex,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentTextAnchorTextSegmentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentTextAnchorTextSegmentResponse(
      endIndex: pulumi.Input.fromValue(map['endIndex'] as String),
      startIndex: pulumi.Input.fromValue(map['startIndex'] as String),
    );
  }
}
