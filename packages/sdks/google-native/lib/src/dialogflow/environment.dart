import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'google_cloud_dialogflow_v2_fulfillment_response.dart';
import 'google_cloud_dialogflow_v2_text_to_speech_settings_response.dart';

/// Creates an agent environment.
/// Auto-naming is currently not supported for this resource.
class Environment extends pulumi.CustomResource {
  /// Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  late final pulumi.Output<String> agentVersion;
  /// Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final pulumi.Output<String> description;
  /// Required. The unique id of the new environment.
  late final pulumi.Output<String> environmentId;
  /// Optional. The fulfillment settings to use for this environment.
  late final pulumi.Output<GoogleCloudDialogflowV2FulfillmentResponse> fulfillment;
  late final pulumi.Output<String> location;
  /// The unique identifier of this agent environment. Supported formats: - `projects//agent/environments/` - `projects//locations//agent/environments/` The environment ID for the default environment is `-`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The state of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  late final pulumi.Output<String> state;
  /// Optional. Text to speech settings for this environment.
  late final pulumi.Output<GoogleCloudDialogflowV2TextToSpeechSettingsResponse> textToSpeechSettings;
  /// The last update time of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_dialogflow_v2_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentVersion = registerOutput<String>('agentVersion');
    description = registerOutput<String>('description');
    environmentId = registerOutput<String>('environmentId');
    fulfillment = registerOutput<GoogleCloudDialogflowV2FulfillmentResponse>('fulfillment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudDialogflowV2FulfillmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    textToSpeechSettings = registerOutput<GoogleCloudDialogflowV2TextToSpeechSettingsResponse>('textToSpeechSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudDialogflowV2TextToSpeechSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}
