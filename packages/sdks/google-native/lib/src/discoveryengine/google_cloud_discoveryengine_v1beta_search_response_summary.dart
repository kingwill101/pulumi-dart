// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1beta_search_response_summary_safety_attributes.dart';
import 'google_cloud_discoveryengine_v1beta_search_response_summary_summary_skipped_reasons_item.dart';

/// Summary of the top N search result specified by the summary spec.
class GoogleCloudDiscoveryengineV1betaSearchResponseSummary {
  /// A collection of Safety Attribute categories and their associated confidence scores.
  final pulumi.Input<GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes>? safetyAttributes;
  /// Additional summary-skipped reasons. This provides the reason for ignored cases. If nothing is skipped, this field is not set.
  final pulumi.Input<List<GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem>>? summarySkippedReasons;
  /// The summary content.
  final pulumi.Input<String>? summaryText;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaSearchResponseSummary].
  /// [safetyAttributes] A collection of Safety Attribute categories and their associated confidence scores.
  /// [summarySkippedReasons] Additional summary-skipped reasons. This provides the reason for ignored cases. If nothing is skipped, this field is not set.
  /// [summaryText] The summary content.
  const GoogleCloudDiscoveryengineV1betaSearchResponseSummary({
    this.safetyAttributes,
    this.summarySkippedReasons,
    this.summaryText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'safetyAttributes': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes, Map<String, dynamic>>(safetyAttributes, (value) => value.toMap()),
      'summarySkippedReasons': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem>, List<String>>(summarySkippedReasons, (value) => pulumi.Input.encodeList<GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem, String>(value, (value) => value.wireValue)),
      'summaryText': ?summaryText,
    };
  }

  factory GoogleCloudDiscoveryengineV1betaSearchResponseSummary.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaSearchResponseSummary(
      safetyAttributes: (() { final guardedValue = map['safetyAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      summarySkippedReasons: (() { final guardedValue = map['summarySkippedReasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem>(guardedValue, (value) => GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem.fromValue(value as String))); })(),
      summaryText: (() { final guardedValue = map['summaryText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

