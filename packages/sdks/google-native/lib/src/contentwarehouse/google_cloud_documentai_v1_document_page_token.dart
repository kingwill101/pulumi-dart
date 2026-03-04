// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';
import 'google_cloud_documentai_v1_document_page_token_detected_break.dart';
import 'google_cloud_documentai_v1_document_page_token_style_info.dart';
import 'google_cloud_documentai_v1_document_provenance.dart';

/// A detected token.
class GoogleCloudDocumentaiV1DocumentPageToken {
  /// Detected break at the end of a Token.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak>?
  detectedBreak;

  /// A list of detected languages together with confidence.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>>?
  detectedLanguages;

  /// Layout for Token.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayout>? layout;

  /// The history of this annotation.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentProvenance>? provenance;

  /// Text style attributes.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo>?
  styleInfo;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageToken].
  /// [detectedBreak] Detected break at the end of a Token.
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for Token.
  /// [provenance] The history of this annotation.
  /// [styleInfo] Text style attributes.
  GoogleCloudDocumentaiV1DocumentPageToken({
    this.detectedBreak,
    this.detectedLanguages,
    this.layout,
    this.provenance,
    this.styleInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectedBreak':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak,
            Map<String, dynamic>
          >(detectedBreak, (value) => value.toMap()),
      'detectedLanguages':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>,
            List<Map<String, dynamic>>
          >(
            detectedLanguages,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'layout':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDocumentaiV1DocumentPageLayout,
            Map<String, dynamic>
          >(layout, (value) => value.toMap()),
      'provenance':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDocumentaiV1DocumentProvenance,
            Map<String, dynamic>
          >(provenance, (value) => value.toMap()),
      'styleInfo':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo,
            Map<String, dynamic>
          >(styleInfo, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageToken.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageToken(
      detectedBreak: (() {
        final guardedValue = map['detectedBreak'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      detectedLanguages: (() {
        final guardedValue = map['detectedLanguages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
          >(
            guardedValue,
            (value) =>
                GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      layout: (() {
        final guardedValue = map['layout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDocumentaiV1DocumentPageLayout.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provenance: (() {
        final guardedValue = map['provenance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDocumentaiV1DocumentProvenance.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      styleInfo: (() {
        final guardedValue = map['styleInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
