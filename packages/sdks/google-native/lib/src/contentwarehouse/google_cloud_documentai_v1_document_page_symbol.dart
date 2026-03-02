// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';

/// A detected symbol.
class GoogleCloudDocumentaiV1DocumentPageSymbol {
  /// A list of detected languages together with confidence.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>>? detectedLanguages;
  /// Layout for Symbol.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayout>? layout;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageSymbol].
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for Symbol.
  GoogleCloudDocumentaiV1DocumentPageSymbol({
    this.detectedLanguages,
    this.layout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectedLanguages': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>, List<Map<String, dynamic>>>(detectedLanguages, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'layout': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentPageLayout, Map<String, dynamic>>(layout, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageSymbol.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageSymbol(
      detectedLanguages: map['detectedLanguages'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(map['detectedLanguages']!, (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      layout: map['layout'] == null ? null : (GoogleCloudDocumentaiV1DocumentPageLayout.fromMap((map['layout']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

