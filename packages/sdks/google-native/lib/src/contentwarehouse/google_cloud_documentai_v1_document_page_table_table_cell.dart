// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';

/// A cell representation inside the table.
class GoogleCloudDocumentaiV1DocumentPageTableTableCell {
  /// How many columns this cell spans.
  final int? colSpan;
  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>? detectedLanguages;
  /// Layout for TableCell.
  final GoogleCloudDocumentaiV1DocumentPageLayout? layout;
  /// How many rows this cell spans.
  final int? rowSpan;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTableTableCell].
  /// [colSpan] How many columns this cell spans.
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for TableCell.
  /// [rowSpan] How many rows this cell spans.
  GoogleCloudDocumentaiV1DocumentPageTableTableCell({
    this.colSpan,
    this.detectedLanguages,
    this.layout,
    this.rowSpan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'colSpan': ?colSpan,
      'detectedLanguages': ?detectedLanguages == null ? null : pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, Map<String, dynamic>>(detectedLanguages!, (value) => value.toMap()),
      'layout': ?layout == null ? null : layout!.toMap(),
      'rowSpan': ?rowSpan,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageTableTableCell.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTableTableCell(
      colSpan: map['colSpan'] == null ? null : map['colSpan'] as int,
      detectedLanguages: map['detectedLanguages'] == null ? null : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(map['detectedLanguages'], (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap((value as Map).cast<String, dynamic>())),
      layout: map['layout'] == null ? null : GoogleCloudDocumentaiV1DocumentPageLayout.fromMap((map['layout'] as Map).cast<String, dynamic>()),
      rowSpan: map['rowSpan'] == null ? null : map['rowSpan'] as int,
    );
  }
}

