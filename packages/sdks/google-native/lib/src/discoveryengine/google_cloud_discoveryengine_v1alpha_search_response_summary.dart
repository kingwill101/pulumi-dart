// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_search_response_summary_safety_attributes.dart';
import 'google_cloud_discoveryengine_v1alpha_search_response_summary_summary_skipped_reasons_item.dart';

/// Summary of the top N search result specified by the summary spec.
class GoogleCloudDiscoveryengineV1alphaSearchResponseSummary {
  /// A collection of Safety Attribute categories and their associated confidence scores.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributes>? safetyAttributes;
  /// Additional summary-skipped reasons. This provides the reason for ignored cases. If nothing is skipped, this field is not set.
  final pulumi.Input<List<GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem>>? summarySkippedReasons;
  /// The summary content.
  final pulumi.Input<String>? summaryText;

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
      'safetyAttributes': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributes, Map<String, dynamic>>(safetyAttributes, (value) => value.toMap()),
      'summarySkippedReasons': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem>, List<String>>(summarySkippedReasons, (value) => pulumi.Input.encodeList<GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem, String>(value, (value) => value.wireValue)),
      'summaryText': ?summaryText,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaSearchResponseSummary.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaSearchResponseSummary(
      safetyAttributes: (() { final guardedValue = map['safetyAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      summarySkippedReasons: (() { final guardedValue = map['summarySkippedReasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem>(guardedValue, (value) => GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem.fromValue(value as String))); })(),
      summaryText: (() { final guardedValue = map['summaryText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

