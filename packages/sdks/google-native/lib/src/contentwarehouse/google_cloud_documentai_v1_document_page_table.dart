// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';
import 'google_cloud_documentai_v1_document_page_table_table_row.dart';
import 'google_cloud_documentai_v1_document_provenance.dart';

/// A table representation similar to HTML table structure.
class GoogleCloudDocumentaiV1DocumentPageTable {
  /// Body rows of the table.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageTableTableRow>>? bodyRows;
  /// A list of detected languages together with confidence.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>>? detectedLanguages;
  /// Header rows of the table.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageTableTableRow>>? headerRows;
  /// Layout for Table.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayout>? layout;
  /// The history of this table.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentProvenance>? provenance;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTable].
  /// [bodyRows] Body rows of the table.
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [headerRows] Header rows of the table.
  /// [layout] Layout for Table.
  /// [provenance] The history of this table.
  GoogleCloudDocumentaiV1DocumentPageTable({
    this.bodyRows,
    this.detectedLanguages,
    this.headerRows,
    this.layout,
    this.provenance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyRows': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentPageTableTableRow>, List<Map<String, dynamic>>>(bodyRows, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageTableTableRow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'detectedLanguages': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>, List<Map<String, dynamic>>>(detectedLanguages, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'headerRows': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentPageTableTableRow>, List<Map<String, dynamic>>>(headerRows, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageTableTableRow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'layout': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentPageLayout, Map<String, dynamic>>(layout, (value) => value.toMap()),
      'provenance': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentProvenance, Map<String, dynamic>>(provenance, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageTable.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTable(
      bodyRows: map['bodyRows'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageTableTableRow>(map['bodyRows']!, (value) => GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromMap((value as Map).cast<String, dynamic>()))).input(),
      detectedLanguages: map['detectedLanguages'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(map['detectedLanguages']!, (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      headerRows: map['headerRows'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageTableTableRow>(map['headerRows']!, (value) => GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromMap((value as Map).cast<String, dynamic>()))).input(),
      layout: map['layout'] == null ? null : (GoogleCloudDocumentaiV1DocumentPageLayout.fromMap((map['layout']! as Map).cast<String, dynamic>())).input(),
      provenance: map['provenance'] == null ? null : (GoogleCloudDocumentaiV1DocumentProvenance.fromMap((map['provenance']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

