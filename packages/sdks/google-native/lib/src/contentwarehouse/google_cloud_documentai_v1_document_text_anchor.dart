// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_text_anchor_text_segment.dart';

/// Text reference indexing into the Document.text.
class GoogleCloudDocumentaiV1DocumentTextAnchor {
  /// Contains the content of the text span so that users do not have to look it up in the text_segments. It is always populated for formFields.
  final pulumi.Input<String>? content;
  /// The text segments from the Document.text.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>>? textSegments;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentTextAnchor].
  /// [content] Contains the content of the text span so that users do not have to look it up in the text_segments. It is always populated for formFields.
  /// [textSegments] The text segments from the Document.text.
  GoogleCloudDocumentaiV1DocumentTextAnchor({
    this.content,
    this.textSegments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'textSegments': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>, List<Map<String, dynamic>>>(textSegments, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentTextAnchor.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentTextAnchor(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textSegments: (() { final guardedValue = map['textSegments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

