// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_analysis_result_response.dart';
import 'google_cloud_contactcenterinsights_v1_annotator_selector_response.dart';

/// The analysis resource.
class GoogleCloudContactcenterinsightsV1AnalysisResponse {
  /// The result of the analysis, which is populated when the analysis finishes.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1AnalysisResultResponse> analysisResult;
  /// To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse> annotatorSelector;
  /// The time at which the analysis was created, which occurs when the long-running operation completes.
  final pulumi.Input<String> createTime;
  /// Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/conversations/{conversation}/analyses/{analysis}
  final pulumi.Input<String> name;
  /// The time at which the analysis was requested.
  final pulumi.Input<String> requestTime;

  /// Creates a new [GoogleCloudContactcenterinsightsV1AnalysisResponse].
  /// [analysisResult] The result of the analysis, which is populated when the analysis finishes.
  /// [annotatorSelector] To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.
  /// [createTime] The time at which the analysis was created, which occurs when the long-running operation completes.
  /// [name] Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/conversations/{conversation}/analyses/{analysis}
  /// [requestTime] The time at which the analysis was requested.
  GoogleCloudContactcenterinsightsV1AnalysisResponse({
    required this.analysisResult,
    required this.annotatorSelector,
    required this.createTime,
    required this.name,
    required this.requestTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisResult': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1AnalysisResultResponse, Map<String, dynamic>>(analysisResult, (value) => value.toMap()),
      'annotatorSelector': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse, Map<String, dynamic>>(annotatorSelector, (value) => value.toMap()),
      'createTime': createTime,
      'name': name,
      'requestTime': requestTime,
    };
  }

  factory GoogleCloudContactcenterinsightsV1AnalysisResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnalysisResponse(
      analysisResult: (GoogleCloudContactcenterinsightsV1AnalysisResultResponse.fromMap((map['analysisResult'] as Map).cast<String, dynamic>())).input(),
      annotatorSelector: (GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse.fromMap((map['annotatorSelector'] as Map).cast<String, dynamic>())).input(),
      createTime: (map['createTime'] as String).input(),
      name: (map['name'] as String).input(),
      requestTime: (map['requestTime'] as String).input(),
    );
  }
}

