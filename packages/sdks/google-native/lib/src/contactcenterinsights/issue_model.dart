import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_issue_model_input_data_config_response.dart';
import 'google_cloud_contactcenterinsights_v1_issue_model_label_stats_response.dart';
import 'issue_model_args.dart';

/// Creates an issue model.
class IssueModel extends pulumi.CustomResource {
  /// The time at which this issue model was created.
  late final pulumi.Output<String> createTime;
  /// The representative name for the issue model.
  late final pulumi.Output<String> displayName;
  /// Configs for the input data that used to create the issue model.
  late final pulumi.Output<GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse> inputDataConfig;
  /// Number of issues in this issue model.
  late final pulumi.Output<String> issueCount;
  /// Language of the model.
  late final pulumi.Output<String> languageCode;
  late final pulumi.Output<String> location;
  /// Type of the model.
  late final pulumi.Output<String> modelType;
  /// Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// State of the model.
  late final pulumi.Output<String> state;
  /// Immutable. The issue model's label statistics on its training data.
  late final pulumi.Output<GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse> trainingStats;
  /// The most recent time at which the issue model was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [IssueModel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IssueModel]. {@macro pulumi_contactcenterinsights_v1_issue_model_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IssueModel(
    String name, {
    IssueModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:contactcenterinsights/v1:IssueModel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    inputDataConfig = registerOutput<GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse>('inputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    issueCount = registerOutput<String>('issueCount');
    languageCode = registerOutput<String>('languageCode');
    location = registerOutput<String>('location');
    modelType = registerOutput<String>('modelType');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    trainingStats = registerOutput<GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse>('trainingStats', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}
