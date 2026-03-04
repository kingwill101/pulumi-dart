// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';
import 'google_cloud_documentai_v1_document_page_token_detected_break_response.dart';
import 'google_cloud_documentai_v1_document_page_token_style_info_response.dart';
import 'google_cloud_documentai_v1_document_provenance_response.dart';

/// A detected token.
class GoogleCloudDocumentaiV1DocumentPageTokenResponse {
  /// Detected break at the end of a Token.
  final pulumi.Input<
    GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse
  >
  detectedBreak;

  /// A list of detected languages together with confidence.
  final pulumi.Input<
    List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>
  >
  detectedLanguages;

  /// Layout for Token.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayoutResponse> layout;

  /// The history of this annotation.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentProvenanceResponse>
  provenance;

  /// Text style attributes.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse>
  styleInfo;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTokenResponse].
  /// [detectedBreak] Detected break at the end of a Token.
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for Token.
  /// [provenance] The history of this annotation.
  /// [styleInfo] Text style attributes.
  GoogleCloudDocumentaiV1DocumentPageTokenResponse({
    required this.detectedBreak,
    required this.detectedLanguages,
    required this.layout,
    required this.provenance,
    required this.styleInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectedBreak':
          pulumi.Input.mapInputValue<
            GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse,
            Map<String, dynamic>
          >(detectedBreak, (value) => value.toMap()),
      'detectedLanguages':
          pulumi.Input.mapInputValue<
            List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>,
            List<Map<String, dynamic>>
          >(
            detectedLanguages,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'layout':
          pulumi.Input.mapInputValue<
            GoogleCloudDocumentaiV1DocumentPageLayoutResponse,
            Map<String, dynamic>
          >(layout, (value) => value.toMap()),
      'provenance':
          pulumi.Input.mapInputValue<
            GoogleCloudDocumentaiV1DocumentProvenanceResponse,
            Map<String, dynamic>
          >(provenance, (value) => value.toMap()),
      'styleInfo':
          pulumi.Input.mapInputValue<
            GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse,
            Map<String, dynamic>
          >(styleInfo, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageTokenResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageTokenResponse(
      detectedBreak: pulumi.Input.fromValue(
        GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse.fromMap(
          (map['detectedBreak']! as Map).cast<String, dynamic>(),
        ),
      ),
      detectedLanguages: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse
        >(
          map['detectedLanguages']!,
          (value) =>
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      layout: pulumi.Input.fromValue(
        GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap(
          (map['layout']! as Map).cast<String, dynamic>(),
        ),
      ),
      provenance: pulumi.Input.fromValue(
        GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap(
          (map['provenance']! as Map).cast<String, dynamic>(),
        ),
      ),
      styleInfo: pulumi.Input.fromValue(
        GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse.fromMap(
          (map['styleInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
