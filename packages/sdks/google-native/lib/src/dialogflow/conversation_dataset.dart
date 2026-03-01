import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_dataset_args.dart';
import 'google_cloud_dialogflow_v2_conversation_info_response.dart';
import 'google_cloud_dialogflow_v2_input_config_response.dart';

/// Creates a new conversation dataset. This method is a [long-running operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations). The returned `Operation` type has the following method-specific fields: - `metadata`: CreateConversationDatasetOperationMetadata - `response`: ConversationDataset
/// Auto-naming is currently not supported for this resource.
class ConversationDataset extends pulumi.CustomResource {
  /// The number of conversations this conversation dataset contains.
  late final pulumi.Output<String> conversationCount;
  /// Metadata set during conversation data import.
  late final pulumi.Output<GoogleCloudDialogflowV2ConversationInfoResponse> conversationInfo;
  /// Creation time of this dataset.
  late final pulumi.Output<String> createTime;
  /// Optional. The description of the dataset. Maximum of 10000 bytes.
  late final pulumi.Output<String> description;
  /// The display name of the dataset. Maximum of 64 bytes.
  late final pulumi.Output<String> displayName;
  /// Input configurations set during conversation data import.
  late final pulumi.Output<GoogleCloudDialogflowV2InputConfigResponse> inputConfig;
  late final pulumi.Output<String> location;
  /// ConversationDataset resource name. Format: `projects//locations//conversationDatasets/`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [ConversationDataset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConversationDataset]. {@macro pulumi_dialogflow_v2_conversation_dataset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConversationDataset(
    String name, {
    ConversationDatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2:ConversationDataset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.conversationCount = registerOutput<String>('conversationCount');
    this.conversationInfo = registerOutput<GoogleCloudDialogflowV2ConversationInfoResponse>('conversationInfo');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.inputConfig = registerOutput<GoogleCloudDialogflowV2InputConfigResponse>('inputConfig');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
