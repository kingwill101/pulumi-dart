// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_search_response_summary_safety_attributes.dart';
import 'google_cloud_discoveryengine_v1alpha_search_response_summary_summary_skipped_reasons_item.dart';

/// Summary of the top N search result specified by the summary spec.
class GoogleCloudDiscoveryengineV1alphaSearchResponseSummary {
  /// A collection of Safety Attribute categories and their associated confidence scores.
  final GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributes? safetyAttributes;
  /// Additional summary-skipped reasons. This provides the reason for ignored cases. If nothing is skipped, this field is not set.
  final List<GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem>? summarySkippedReasons;
  /// The summary content.
  final String? summaryText;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaSearchResponseSummary].
  /// [safetyAttributes] A collection of Safety Attribute categories and their associated confidence scores.
  /// [summarySkippedReasons] Additional summary-skipped reasons. This provides the reason for ignored cases. If nothing is skipped, this field is not set.
  /// [summaryText] The summary content.
  GoogleCloudDiscoveryengineV1alphaSearchResponseSummary({
    this.safetyAttributes,
    this.summarySkippedReasons,
    this.summaryText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'safetyAttributes': ?safetyAttributes == null ? null : safetyAttributes!.toMap(),
      'summarySkippedReasons': ?summarySkippedReasons == null ? null : pulumi.Input.encodeList<GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem, String>(summarySkippedReasons!, (value) => value.value),
      'summaryText': ?summaryText,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaSearchResponseSummary.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaSearchResponseSummary(
      safetyAttributes: map['safetyAttributes'] == null ? null : GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributes.fromMap((map['safetyAttributes'] as Map).cast<String, dynamic>()),
      summarySkippedReasons: map['summarySkippedReasons'] == null ? null : pulumi.Input.decodeList<GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem>(map['summarySkippedReasons'], (value) => GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem.fromValue(value as String)),
      summaryText: map['summaryText'] == null ? null : map['summaryText'] as String,
    );
  }
}

