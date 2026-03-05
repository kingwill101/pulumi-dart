// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_search_response_summary_safety_attributes_response.dart';

/// Summary of the top N search result specified by the summary spec.
class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryResponse {
  /// A collection of Safety Attribute categories and their associated confidence scores.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributesResponse> safetyAttributes;
  /// Additional summary-skipped reasons. This provides the reason for ignored cases. If nothing is skipped, this field is not set.
  final pulumi.Input<List<String>> summarySkippedReasons;
  /// The summary content.
  final pulumi.Input<String> summaryText;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryResponse].
  /// [safetyAttributes] A collection of Safety Attribute categories and their associated confidence scores.
  /// [summarySkippedReasons] Additional summary-skipped reasons. This provides the reason for ignored cases. If nothing is skipped, this field is not set.
  /// [summaryText] The summary content.
  GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryResponse({
    required this.safetyAttributes,
    required this.summarySkippedReasons,
    required this.summaryText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'safetyAttributes': pulumi.Input.mapInputValue<GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributesResponse, Map<String, dynamic>>(safetyAttributes, (value) => value.toMap()),
      'summarySkippedReasons': summarySkippedReasons,
      'summaryText': summaryText,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryResponse(
      safetyAttributes: pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributesResponse.fromMap((map['safetyAttributes']! as Map).cast<String, dynamic>())),
      summarySkippedReasons: pulumi.Input.fromValue((map['summarySkippedReasons'] as List).cast<String>()),
      summaryText: pulumi.Input.fromValue(map['summaryText'] as String),
    );
  }
}

