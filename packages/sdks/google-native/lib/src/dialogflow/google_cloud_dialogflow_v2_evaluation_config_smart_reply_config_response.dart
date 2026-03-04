// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Smart reply specific configuration for evaluation job.
class GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfigResponse {
  /// The allowlist document resource name. Format: `projects//knowledgeBases//documents/`. Only used for smart reply model.
  final pulumi.Input<String> allowlistDocument;

  /// The model to be evaluated can return multiple results with confidence score on each query. These results will be sorted by the descending order of the scores and we only keep the first max_result_count results as the final results to evaluate.
  final pulumi.Input<int> maxResultCount;

  /// Creates a new [GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfigResponse].
  /// [allowlistDocument] The allowlist document resource name. Format: `projects//knowledgeBases//documents/`. Only used for smart reply model.
  /// [maxResultCount] The model to be evaluated can return multiple results with confidence score on each query. These results will be sorted by the descending order of the scores and we only keep the first max_result_count results as the final results to evaluate.
  GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfigResponse({
    required this.allowlistDocument,
    required this.maxResultCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlistDocument': allowlistDocument,
      'maxResultCount': maxResultCount,
    };
  }

  factory GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfigResponse(
      allowlistDocument: pulumi.Input.fromValue(
        map['allowlistDocument'] as String,
      ),
      maxResultCount: pulumi.Input.fromValue(map['maxResultCount'] as int),
    );
  }
}
