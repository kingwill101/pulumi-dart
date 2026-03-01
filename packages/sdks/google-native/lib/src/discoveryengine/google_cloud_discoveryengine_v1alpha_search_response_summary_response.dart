// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1alpha_search_response_summary_safety_attributes_response.dart';

/// Summary of the top N search result specified by the summary spec.
class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryResponse {
  /// A collection of Safety Attribute categories and their associated confidence scores.
  final GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributesResponse safetyAttributes;
  /// Additional summary-skipped reasons. This provides the reason for ignored cases. If nothing is skipped, this field is not set.
  final List<String> summarySkippedReasons;
  /// The summary content.
  final String summaryText;

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
      'safetyAttributes': safetyAttributes.toMap(),
      'summarySkippedReasons': summarySkippedReasons,
      'summaryText': summaryText,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryResponse(
      safetyAttributes: GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributesResponse.fromMap((map['safetyAttributes'] as Map).cast<String, dynamic>()),
      summarySkippedReasons: (map['summarySkippedReasons'] as List).cast<String>(),
      summaryText: map['summaryText'] as String,
    );
  }
}

