// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_evaluation_config_response.dart';
import 'google_cloud_dialogflow_v2_smart_reply_metrics_response.dart';

/// Result data returned by getEvaluation.
class GetEvaluationResult {
  /// Creation time of this model.
  final String? createTime;
  /// Optional. The display name of the model evaluation. At most 64 bytes long.
  final String? displayName;
  /// Optional. The configuration of the evaluation task.
  final GoogleCloudDialogflowV2EvaluationConfigResponse? evaluationConfig;
  /// The resource name of the evaluation. Format: `projects//conversationModels//evaluations/`
  final String? name;
  /// Human eval template in csv format. It tooks real-world conversations provided through input dataset, generates example suggestions for customer to verify quality of the model. For Smart Reply, the generated csv file contains columns of Context, (Suggestions,Q1,Q2)*3, Actual reply. Context contains at most 10 latest messages in the conversation prior to the current suggestion. Q1: "Would you send it as the next message of agent?" Evaluated based on whether the suggest is appropriate to be sent by agent in current context. Q2: "Does the suggestion move the conversation closer to resolution?" Evaluated based on whether the suggestion provide solutions, or answers customer's question or collect information from customer to resolve the customer's issue. Actual reply column contains the actual agent reply sent in the context.
  final String? rawHumanEvalTemplateCsv;
  /// Only available when model is for smart reply.
  final GoogleCloudDialogflowV2SmartReplyMetricsResponse? smartReplyMetrics;

  /// Creates a new [GetEvaluationResult].
  /// [createTime] Creation time of this model.
  /// [displayName] Optional. The display name of the model evaluation. At most 64 bytes long.
  /// [evaluationConfig] Optional. The configuration of the evaluation task.
  /// [name] The resource name of the evaluation. Format: `projects//conversationModels//evaluations/`
  /// [rawHumanEvalTemplateCsv] Human eval template in csv format. It tooks real-world conversations provided through input dataset, generates example suggestions for customer to verify quality of the model. For Smart Reply, the generated csv file contains columns of Context, (Suggestions,Q1,Q2)*3, Actual reply. Context contains at most 10 latest messages in the conversation prior to the current suggestion. Q1: "Would you send it as the next message of agent?" Evaluated based on whether the suggest is appropriate to be sent by agent in current context. Q2: "Does the suggestion move the conversation closer to resolution?" Evaluated based on whether the suggestion provide solutions, or answers customer's question or collect information from customer to resolve the customer's issue. Actual reply column contains the actual agent reply sent in the context.
  /// [smartReplyMetrics] Only available when model is for smart reply.
  const GetEvaluationResult({
    this.createTime,
    this.displayName,
    this.evaluationConfig,
    this.name,
    this.rawHumanEvalTemplateCsv,
    this.smartReplyMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'evaluationConfig': ?evaluationConfig?.toMap(),
      'name': ?name,
      'rawHumanEvalTemplateCsv': ?rawHumanEvalTemplateCsv,
      'smartReplyMetrics': ?smartReplyMetrics?.toMap(),
    };
  }

  factory GetEvaluationResult.fromMap(Map<String, dynamic> map) {
    return GetEvaluationResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      evaluationConfig: (() { final guardedValue = map['evaluationConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2EvaluationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rawHumanEvalTemplateCsv: (() { final guardedValue = map['rawHumanEvalTemplateCsv']; if (guardedValue == null) return null; return guardedValue as String; })(),
      smartReplyMetrics: (() { final guardedValue = map['smartReplyMetrics']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2SmartReplyMetricsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
