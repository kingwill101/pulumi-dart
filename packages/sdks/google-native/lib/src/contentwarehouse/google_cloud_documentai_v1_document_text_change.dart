// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_provenance.dart';
import 'google_cloud_documentai_v1_document_text_anchor.dart';

/// This message is used for text changes aka. OCR corrections.
class GoogleCloudDocumentaiV1DocumentTextChange {
  /// The text that replaces the text identified in the `text_anchor`.
  final pulumi.Input<String>? changedText;
  /// The history of this annotation.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentProvenance>>? provenance;
  /// Provenance of the correction. Text anchor indexing into the Document.text. There can only be a single `TextAnchor.text_segments` element. If the start and end index of the text segment are the same, the text change is inserted before that index.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentTextAnchor>? textAnchor;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentTextChange].
  /// [changedText] The text that replaces the text identified in the `text_anchor`.
  /// [provenance] The history of this annotation.
  /// [textAnchor] Provenance of the correction. Text anchor indexing into the Document.text. There can only be a single `TextAnchor.text_segments` element. If the start and end index of the text segment are the same, the text change is inserted before that index.
  const GoogleCloudDocumentaiV1DocumentTextChange({
    this.changedText,
    this.provenance,
    this.textAnchor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changedText': ?changedText,
      'provenance': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentProvenance>, List<Map<String, dynamic>>>(provenance, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentProvenance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'textAnchor': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentTextAnchor, Map<String, dynamic>>(textAnchor, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentTextChange.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentTextChange(
      changedText: (() { final guardedValue = map['changedText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provenance: (() { final guardedValue = map['provenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentProvenance>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentProvenance.fromMap((value as Map).cast<String, dynamic>()))); })(),
      textAnchor: (() { final guardedValue = map['textAnchor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentTextAnchor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

