// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_action.dart';
import 'google_privacy_dlp_v2_big_query_table.dart';
import 'google_privacy_dlp_v2_privacy_metric.dart';

/// Configuration for a risk analysis job. See https://cloud.google.com/dlp/docs/concepts-risk-analysis to learn more.
class GooglePrivacyDlpV2RiskAnalysisJobConfig {
  /// Actions to execute at the completion of the job. Are executed in the order provided.
  final List<GooglePrivacyDlpV2Action>? actions;
  /// Privacy metric to compute.
  final GooglePrivacyDlpV2PrivacyMetric? privacyMetric;
  /// Input dataset to compute metrics over.
  final GooglePrivacyDlpV2BigQueryTable? sourceTable;

  /// Creates a new [GooglePrivacyDlpV2RiskAnalysisJobConfig].
  /// [actions] Actions to execute at the completion of the job. Are executed in the order provided.
  /// [privacyMetric] Privacy metric to compute.
  /// [sourceTable] Input dataset to compute metrics over.
  GooglePrivacyDlpV2RiskAnalysisJobConfig({
    this.actions,
    this.privacyMetric,
    this.sourceTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null ? null : pulumi.Input.encodeList<GooglePrivacyDlpV2Action, Map<String, dynamic>>(actions!, (value) => value.toMap()),
      'privacyMetric': ?privacyMetric == null ? null : privacyMetric!.toMap(),
      'sourceTable': ?sourceTable == null ? null : sourceTable!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2RiskAnalysisJobConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RiskAnalysisJobConfig(
      actions: map['actions'] == null ? null : pulumi.Input.decodeList<GooglePrivacyDlpV2Action>(map['actions'], (value) => GooglePrivacyDlpV2Action.fromMap((value as Map).cast<String, dynamic>())),
      privacyMetric: map['privacyMetric'] == null ? null : GooglePrivacyDlpV2PrivacyMetric.fromMap((map['privacyMetric'] as Map).cast<String, dynamic>()),
      sourceTable: map['sourceTable'] == null ? null : GooglePrivacyDlpV2BigQueryTable.fromMap((map['sourceTable'] as Map).cast<String, dynamic>()),
    );
  }
}

