// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_action.dart';
import 'google_privacy_dlp_v2_big_query_table.dart';
import 'google_privacy_dlp_v2_privacy_metric.dart';

/// Configuration for a risk analysis job. See https://cloud.google.com/dlp/docs/concepts-risk-analysis to learn more.
class GooglePrivacyDlpV2RiskAnalysisJobConfig {
  /// Actions to execute at the completion of the job. Are executed in the order provided.
  final pulumi.Input<List<GooglePrivacyDlpV2Action>>? actions;

  /// Privacy metric to compute.
  final pulumi.Input<GooglePrivacyDlpV2PrivacyMetric>? privacyMetric;

  /// Input dataset to compute metrics over.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryTable>? sourceTable;

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
      'actions':
          ?pulumi.Input.mapOptionalInputValue<
            List<GooglePrivacyDlpV2Action>,
            List<Map<String, dynamic>>
          >(
            actions,
            (value) =>
                pulumi.Input.encodeList<
                  GooglePrivacyDlpV2Action,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'privacyMetric':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2PrivacyMetric,
            Map<String, dynamic>
          >(privacyMetric, (value) => value.toMap()),
      'sourceTable':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2BigQueryTable,
            Map<String, dynamic>
          >(sourceTable, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2RiskAnalysisJobConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2RiskAnalysisJobConfig(
      actions: (() {
        final guardedValue = map['actions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GooglePrivacyDlpV2Action>(
            guardedValue,
            (value) => GooglePrivacyDlpV2Action.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      privacyMetric: (() {
        final guardedValue = map['privacyMetric'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2PrivacyMetric.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sourceTable: (() {
        final guardedValue = map['sourceTable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2BigQueryTable.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
