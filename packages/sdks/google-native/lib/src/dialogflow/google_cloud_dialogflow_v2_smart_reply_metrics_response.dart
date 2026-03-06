// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_smart_reply_metrics_top_nmetrics_response.dart';

/// The evaluation metrics for smart reply model.
class GoogleCloudDialogflowV2SmartReplyMetricsResponse {
  /// Percentage of target participant messages in the evaluation dataset for which similar messages have appeared at least once in the allowlist. Should be [0, 1].
  final pulumi.Input<double> allowlistCoverage;
  /// Total number of conversations used to generate this metric.
  final pulumi.Input<String> conversationCount;
  /// Metrics of top n smart replies, sorted by TopNMetric.n.
  final pulumi.Input<List<GoogleCloudDialogflowV2SmartReplyMetricsTopNMetricsResponse>> topNMetrics;

  /// Creates a new [GoogleCloudDialogflowV2SmartReplyMetricsResponse].
  /// [allowlistCoverage] Percentage of target participant messages in the evaluation dataset for which similar messages have appeared at least once in the allowlist. Should be [0, 1].
  /// [conversationCount] Total number of conversations used to generate this metric.
  /// [topNMetrics] Metrics of top n smart replies, sorted by TopNMetric.n.
  const GoogleCloudDialogflowV2SmartReplyMetricsResponse({
    required this.allowlistCoverage,
    required this.conversationCount,
    required this.topNMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlistCoverage': allowlistCoverage,
      'conversationCount': conversationCount,
      'topNMetrics': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2SmartReplyMetricsTopNMetricsResponse>, List<Map<String, dynamic>>>(topNMetrics, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2SmartReplyMetricsTopNMetricsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowV2SmartReplyMetricsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2SmartReplyMetricsResponse(
      allowlistCoverage: pulumi.Input.fromValue(map['allowlistCoverage'] as double),
      conversationCount: pulumi.Input.fromValue(map['conversationCount'] as String),
      topNMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2SmartReplyMetricsTopNMetricsResponse>(map['topNMetrics']!, (value) => GoogleCloudDialogflowV2SmartReplyMetricsTopNMetricsResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

