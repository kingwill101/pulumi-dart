// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';

/// A cell representation inside the table.
class GoogleCloudDocumentaiV1DocumentPageTableTableCellResponse {
  /// How many columns this cell spans.
  final pulumi.Input<int> colSpan;
  /// A list of detected languages together with confidence.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>> detectedLanguages;
  /// Layout for TableCell.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayoutResponse> layout;
  /// How many rows this cell spans.
  final pulumi.Input<int> rowSpan;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTableTableCellResponse].
  /// [colSpan] How many columns this cell spans.
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for TableCell.
  /// [rowSpan] How many rows this cell spans.
  const GoogleCloudDocumentaiV1DocumentPageTableTableCellResponse({
    required this.colSpan,
    required this.detectedLanguages,
    required this.layout,
    required this.rowSpan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'colSpan': colSpan,
      'detectedLanguages': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>, List<Map<String, dynamic>>>(detectedLanguages, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'layout': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentPageLayoutResponse, Map<String, dynamic>>(layout, (value) => value.toMap()),
      'rowSpan': rowSpan,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageTableTableCellResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTableTableCellResponse(
      colSpan: pulumi.Input.fromValue(map['colSpan'] as int),
      detectedLanguages: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(map['detectedLanguages']!, (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse.fromMap((value as Map).cast<String, dynamic>()))),
      layout: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap((map['layout']! as Map).cast<String, dynamic>())),
      rowSpan: pulumi.Input.fromValue(map['rowSpan'] as int),
    );
  }
}
