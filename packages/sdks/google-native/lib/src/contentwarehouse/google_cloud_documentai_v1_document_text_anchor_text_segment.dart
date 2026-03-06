// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A text segment in the Document.text. The indices may be out of bounds which indicate that the text extends into another document shard for large sharded documents. See ShardInfo.text_offset
class GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment {
  /// TextSegment half open end UTF-8 char index in the Document.text.
  final pulumi.Input<String>? endIndex;
  /// TextSegment start UTF-8 char index in the Document.text.
  final pulumi.Input<String>? startIndex;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment].
  /// [endIndex] TextSegment half open end UTF-8 char index in the Document.text.
  /// [startIndex] TextSegment start UTF-8 char index in the Document.text.
  const GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment({
    this.endIndex,
    this.startIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIndex': ?endIndex,
      'startIndex': ?startIndex,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(
      endIndex: (() { final guardedValue = map['endIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startIndex: (() { final guardedValue = map['startIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

