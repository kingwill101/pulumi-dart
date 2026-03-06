// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';

/// A detected symbol.
class GoogleCloudDocumentaiV1DocumentPageSymbolResponse {
  /// A list of detected languages together with confidence.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>> detectedLanguages;
  /// Layout for Symbol.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayoutResponse> layout;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageSymbolResponse].
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for Symbol.
  const GoogleCloudDocumentaiV1DocumentPageSymbolResponse({
    required this.detectedLanguages,
    required this.layout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectedLanguages': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>, List<Map<String, dynamic>>>(detectedLanguages, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'layout': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentPageLayoutResponse, Map<String, dynamic>>(layout, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageSymbolResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageSymbolResponse(
      detectedLanguages: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(map['detectedLanguages']!, (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse.fromMap((value as Map).cast<String, dynamic>()))),
      layout: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap((map['layout']! as Map).cast<String, dynamic>())),
    );
  }
}

