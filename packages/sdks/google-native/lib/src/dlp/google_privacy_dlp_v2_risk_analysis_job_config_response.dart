// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_action_response.dart';
import 'google_privacy_dlp_v2_big_query_table_response.dart';
import 'google_privacy_dlp_v2_privacy_metric_response.dart';

/// Configuration for a risk analysis job. See https://cloud.google.com/dlp/docs/concepts-risk-analysis to learn more.
class GooglePrivacyDlpV2RiskAnalysisJobConfigResponse {
  /// Actions to execute at the completion of the job. Are executed in the order provided.
  final pulumi.Input<List<GooglePrivacyDlpV2ActionResponse>> actions;
  /// Privacy metric to compute.
  final pulumi.Input<GooglePrivacyDlpV2PrivacyMetricResponse> privacyMetric;
  /// Input dataset to compute metrics over.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryTableResponse> sourceTable;

  /// Creates a new [GooglePrivacyDlpV2RiskAnalysisJobConfigResponse].
  /// [actions] Actions to execute at the completion of the job. Are executed in the order provided.
  /// [privacyMetric] Privacy metric to compute.
  /// [sourceTable] Input dataset to compute metrics over.
  const GooglePrivacyDlpV2RiskAnalysisJobConfigResponse({
    required this.actions,
    required this.privacyMetric,
    required this.sourceTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2ActionResponse>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2ActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privacyMetric': pulumi.Input.mapInputValue<GooglePrivacyDlpV2PrivacyMetricResponse, Map<String, dynamic>>(privacyMetric, (value) => value.toMap()),
      'sourceTable': pulumi.Input.mapInputValue<GooglePrivacyDlpV2BigQueryTableResponse, Map<String, dynamic>>(sourceTable, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2RiskAnalysisJobConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RiskAnalysisJobConfigResponse(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2ActionResponse>(map['actions']!, (value) => GooglePrivacyDlpV2ActionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      privacyMetric: pulumi.Input.fromValue(GooglePrivacyDlpV2PrivacyMetricResponse.fromMap((map['privacyMetric']! as Map).cast<String, dynamic>())),
      sourceTable: pulumi.Input.fromValue(GooglePrivacyDlpV2BigQueryTableResponse.fromMap((map['sourceTable']! as Map).cast<String, dynamic>())),
    );
  }
}
