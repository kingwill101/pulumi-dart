// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';
import 'google_cloud_documentai_v1_document_provenance.dart';

/// A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.
class GoogleCloudDocumentaiV1DocumentPageBlock {
  /// A list of detected languages together with confidence.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>>? detectedLanguages;
  /// Layout for Block.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayout>? layout;
  /// The history of this annotation.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentProvenance>? provenance;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageBlock].
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for Block.
  /// [provenance] The history of this annotation.
  const GoogleCloudDocumentaiV1DocumentPageBlock({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectedLanguages': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>, List<Map<String, dynamic>>>(detectedLanguages, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'layout': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentPageLayout, Map<String, dynamic>>(layout, (value) => value.toMap()),
      'provenance': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentProvenance, Map<String, dynamic>>(provenance, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageBlock.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageBlock(
      detectedLanguages: (() { final guardedValue = map['detectedLanguages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      layout: (() { final guardedValue = map['layout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentPageLayout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provenance: (() { final guardedValue = map['provenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentProvenance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
