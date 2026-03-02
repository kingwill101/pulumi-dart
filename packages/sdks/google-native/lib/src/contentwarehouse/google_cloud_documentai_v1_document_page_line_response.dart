// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';
import 'google_cloud_documentai_v1_document_provenance_response.dart';

/// A collection of tokens that a human would perceive as a line. Does not cross column boundaries, can be horizontal, vertical, etc.
class GoogleCloudDocumentaiV1DocumentPageLineResponse {
  /// A list of detected languages together with confidence.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>> detectedLanguages;
  /// Layout for Line.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayoutResponse> layout;
  /// The history of this annotation.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentProvenanceResponse> provenance;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageLineResponse].
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for Line.
  /// [provenance] The history of this annotation.
  GoogleCloudDocumentaiV1DocumentPageLineResponse({
    required this.detectedLanguages,
    required this.layout,
    required this.provenance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectedLanguages': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>, List<Map<String, dynamic>>>(detectedLanguages, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'layout': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentPageLayoutResponse, Map<String, dynamic>>(layout, (value) => value.toMap()),
      'provenance': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentProvenanceResponse, Map<String, dynamic>>(provenance, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageLineResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageLineResponse(
      detectedLanguages: (pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(map['detectedLanguages'], (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      layout: (GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap((map['layout'] as Map).cast<String, dynamic>())).input(),
      provenance: (GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap((map['provenance'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

