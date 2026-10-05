// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_analysis_result_response.dart';
import 'google_cloud_contactcenterinsights_v1_annotator_selector_response.dart';

/// Result data returned by getAnalysis.
class GetAnalysisResult {
  /// The result of the analysis, which is populated when the analysis finishes.
  final GoogleCloudContactcenterinsightsV1AnalysisResultResponse? analysisResult;
  /// To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.
  final GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse? annotatorSelector;
  /// The time at which the analysis was created, which occurs when the long-running operation completes.
  final String? createTime;
  /// Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/conversations/{conversation}/analyses/{analysis}
  final String? name;
  /// The time at which the analysis was requested.
  final String? requestTime;

  /// Creates a new [GetAnalysisResult].
  /// [analysisResult] The result of the analysis, which is populated when the analysis finishes.
  /// [annotatorSelector] To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.
  /// [createTime] The time at which the analysis was created, which occurs when the long-running operation completes.
  /// [name] Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/conversations/{conversation}/analyses/{analysis}
  /// [requestTime] The time at which the analysis was requested.
  const GetAnalysisResult({
    this.analysisResult,
    this.annotatorSelector,
    this.createTime,
    this.name,
    this.requestTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisResult': ?analysisResult?.toMap(),
      'annotatorSelector': ?annotatorSelector?.toMap(),
      'createTime': ?createTime,
      'name': ?name,
      'requestTime': ?requestTime,
    };
  }

  factory GetAnalysisResult.fromMap(Map<String, dynamic> map) {
    return GetAnalysisResult(
      analysisResult: (() { final guardedValue = map['analysisResult']; if (guardedValue == null) return null; return GoogleCloudContactcenterinsightsV1AnalysisResultResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      annotatorSelector: (() { final guardedValue = map['annotatorSelector']; if (guardedValue == null) return null; return GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestTime: (() { final guardedValue = map['requestTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
