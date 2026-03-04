// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_analysis_result_call_analysis_metadata_response.dart';

/// The result of an analysis.
class GoogleCloudContactcenterinsightsV1AnalysisResultResponse {
  /// Call-specific metadata created by the analysis.
  final pulumi.Input<
    GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadataResponse
  >
  callAnalysisMetadata;

  /// The time at which the analysis ended.
  final pulumi.Input<String> endTime;

  /// Creates a new [GoogleCloudContactcenterinsightsV1AnalysisResultResponse].
  /// [callAnalysisMetadata] Call-specific metadata created by the analysis.
  /// [endTime] The time at which the analysis ended.
  GoogleCloudContactcenterinsightsV1AnalysisResultResponse({
    required this.callAnalysisMetadata,
    required this.endTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callAnalysisMetadata':
          pulumi.Input.mapInputValue<
            GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadataResponse,
            Map<String, dynamic>
          >(callAnalysisMetadata, (value) => value.toMap()),
      'endTime': endTime,
    };
  }

  factory GoogleCloudContactcenterinsightsV1AnalysisResultResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1AnalysisResultResponse(
      callAnalysisMetadata: pulumi.Input.fromValue(
        GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadataResponse.fromMap(
          (map['callAnalysisMetadata']! as Map).cast<String, dynamic>(),
        ),
      ),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
    );
  }
}
