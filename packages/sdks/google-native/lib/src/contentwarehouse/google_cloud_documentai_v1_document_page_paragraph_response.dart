// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';
import 'google_cloud_documentai_v1_document_provenance_response.dart';

/// A collection of lines that a human would perceive as a paragraph.
class GoogleCloudDocumentaiV1DocumentPageParagraphResponse {
  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse> detectedLanguages;
  /// Layout for Paragraph.
  final GoogleCloudDocumentaiV1DocumentPageLayoutResponse layout;
  /// The history of this annotation.
  final GoogleCloudDocumentaiV1DocumentProvenanceResponse provenance;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageParagraphResponse].
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for Paragraph.
  /// [provenance] The history of this annotation.
  GoogleCloudDocumentaiV1DocumentPageParagraphResponse({
    required this.detectedLanguages,
    required this.layout,
    required this.provenance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectedLanguages': pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse, Map<String, dynamic>>(detectedLanguages, (value) => value.toMap()),
      'layout': layout.toMap(),
      'provenance': provenance.toMap(),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageParagraphResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageParagraphResponse(
      detectedLanguages: pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(map['detectedLanguages'], (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse.fromMap((value as Map).cast<String, dynamic>())),
      layout: GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap((map['layout'] as Map).cast<String, dynamic>()),
      provenance: GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap((map['provenance'] as Map).cast<String, dynamic>()),
    );
  }
}

