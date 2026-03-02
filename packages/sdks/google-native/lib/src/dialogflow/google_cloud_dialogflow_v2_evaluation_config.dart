// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_evaluation_config_smart_compose_config.dart';
import 'google_cloud_dialogflow_v2_evaluation_config_smart_reply_config.dart';
import 'google_cloud_dialogflow_v2_input_dataset.dart';

/// The configuration for model evaluation.
class GoogleCloudDialogflowV2EvaluationConfig {
  /// Datasets used for evaluation.
  final pulumi.Input<List<GoogleCloudDialogflowV2InputDataset>> datasets;
  /// Configuration for smart compose model evalution.
  final pulumi.Input<GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig>? smartComposeConfig;
  /// Configuration for smart reply model evalution.
  final pulumi.Input<GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig>? smartReplyConfig;

  /// Creates a new [GoogleCloudDialogflowV2EvaluationConfig].
  /// [datasets] Datasets used for evaluation.
  /// [smartComposeConfig] Configuration for smart compose model evalution.
  /// [smartReplyConfig] Configuration for smart reply model evalution.
  GoogleCloudDialogflowV2EvaluationConfig({
    required this.datasets,
    this.smartComposeConfig,
    this.smartReplyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2InputDataset>, List<Map<String, dynamic>>>(datasets, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2InputDataset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'smartComposeConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig, Map<String, dynamic>>(smartComposeConfig, (value) => value.toMap()),
      'smartReplyConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig, Map<String, dynamic>>(smartReplyConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2EvaluationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2EvaluationConfig(
      datasets: (pulumi.Input.decodeList<GoogleCloudDialogflowV2InputDataset>(map['datasets'], (value) => GoogleCloudDialogflowV2InputDataset.fromMap((value as Map).cast<String, dynamic>()))).input(),
      smartComposeConfig: map['smartComposeConfig'] == null ? null : (GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig.fromMap((map['smartComposeConfig'] as Map).cast<String, dynamic>())).input(),
      smartReplyConfig: map['smartReplyConfig'] == null ? null : (GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig.fromMap((map['smartReplyConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

