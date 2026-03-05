import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_webhook_generic_web_service_response.dart';
import 'google_cloud_dialogflow_cx_v3_webhook_service_directory_config_response.dart';
import 'webhook_args.dart';

/// Creates a webhook in the specified agent.
class Webhook extends pulumi.CustomResource {
  late final pulumi.Output<String> agentId;

  /// Indicates whether the webhook is disabled.
  late final pulumi.Output<bool> disabled;

  /// The human-readable name of the webhook, unique within the agent.
  late final pulumi.Output<String> displayName;

  /// Configuration for a generic web service.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse
  >
  genericWebService;
  late final pulumi.Output<String> location;

  /// The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfigResponse
  >
  serviceDirectory;

  /// Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  late final pulumi.Output<String> timeout;

  /// Creates a new [Webhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Webhook]. {@macro pulumi_dialogflow_v3_webhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Webhook(
    String name, {
    WebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dialogflow/v3:Webhook',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentId = registerOutput<String>('agentId');
    disabled = registerOutput<bool>('disabled');
    displayName = registerOutput<String>('displayName');
    genericWebService =
        registerOutput<
          GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse
        >(
          'genericWebService',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    serviceDirectory =
        registerOutput<
          GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfigResponse
        >(
          'serviceDirectory',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfigResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    timeout = registerOutput<String>('timeout');
  }
}
