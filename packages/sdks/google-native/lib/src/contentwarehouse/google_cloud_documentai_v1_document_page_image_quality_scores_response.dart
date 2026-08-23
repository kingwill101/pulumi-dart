// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_image_quality_scores_detected_defect_response.dart';

/// Image quality scores for the page image.
class GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse {
  /// A list of detected defects.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse>> detectedDefects;
  /// The overall quality score. Range `[0, 1]` where `1` is perfect quality.
  final pulumi.Input<double> qualityScore;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse].
  /// [detectedDefects] A list of detected defects.
  /// [qualityScore] The overall quality score. Range `[0, 1]` where `1` is perfect quality.
  const GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse({
    required this.detectedDefects,
    required this.qualityScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectedDefects': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse>, List<Map<String, dynamic>>>(detectedDefects, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'qualityScore': qualityScore,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse(
      detectedDefects: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse>(map['detectedDefects']!, (value) => GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse.fromMap((value as Map).cast<String, dynamic>()))),
      qualityScore: pulumi.Input.fromValue(map['qualityScore'] as double),
    );
  }
}
