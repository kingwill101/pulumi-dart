import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_args.dart';
import 'google_cloud_dialogflow_v2_evaluation_config_response.dart';
import 'google_cloud_dialogflow_v2_smart_reply_metrics_response.dart';

/// Creates evaluation of a conversation model.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Evaluation extends pulumi.CustomResource {
  late final pulumi.Output<String> conversationModelId;

  /// Creation time of this model.
  late final pulumi.Output<String> createTime;

  /// Optional. The display name of the model evaluation. At most 64 bytes long.
  late final pulumi.Output<String> displayName;

  /// Optional. The configuration of the evaluation task.
  late final pulumi.Output<GoogleCloudDialogflowV2EvaluationConfigResponse>
  evaluationConfig;
  late final pulumi.Output<String> location;

  /// The resource name of the evaluation. Format: `projects//conversationModels//evaluations/`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Human eval template in csv format. It tooks real-world conversations provided through input dataset, generates example suggestions for customer to verify quality of the model. For Smart Reply, the generated csv file contains columns of Context, (Suggestions,Q1,Q2)*3, Actual reply. Context contains at most 10 latest messages in the conversation prior to the current suggestion. Q1: "Would you send it as the next message of agent?" Evaluated based on whether the suggest is appropriate to be sent by agent in current context. Q2: "Does the suggestion move the conversation closer to resolution?" Evaluated based on whether the suggestion provide solutions, or answers customer's question or collect information from customer to resolve the customer's issue. Actual reply column contains the actual agent reply sent in the context.
  late final pulumi.Output<String> rawHumanEvalTemplateCsv;

  /// Only available when model is for smart reply.
  late final pulumi.Output<GoogleCloudDialogflowV2SmartReplyMetricsResponse>
  smartReplyMetrics;

  /// Creates a new [Evaluation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Evaluation]. {@macro pulumi_dialogflow_v2_evaluation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Evaluation(
    String name, {
    EvaluationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dialogflow/v2:Evaluation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    conversationModelId = registerOutput<String>('conversationModelId');
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    evaluationConfig =
        registerOutput<GoogleCloudDialogflowV2EvaluationConfigResponse>(
          'evaluationConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowV2EvaluationConfigResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rawHumanEvalTemplateCsv = registerOutput<String>('rawHumanEvalTemplateCsv');
    smartReplyMetrics =
        registerOutput<GoogleCloudDialogflowV2SmartReplyMetricsResponse>(
          'smartReplyMetrics',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowV2SmartReplyMetricsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }
}
