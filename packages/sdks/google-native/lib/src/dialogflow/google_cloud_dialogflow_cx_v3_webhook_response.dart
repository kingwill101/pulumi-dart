// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_webhook_generic_web_service_response.dart';
import 'google_cloud_dialogflow_cx_v3_webhook_service_directory_config_response.dart';

/// Webhooks host the developer's business logic. During a session, webhooks allow the developer to use the data extracted by Dialogflow's natural language processing to generate dynamic responses, validate collected data, or trigger actions on the backend.
class GoogleCloudDialogflowCxV3WebhookResponse {
  /// Indicates whether the webhook is disabled.
  final pulumi.Input<bool> disabled;
  /// The human-readable name of the webhook, unique within the agent.
  final pulumi.Input<String> displayName;
  /// Configuration for a generic web service.
  final pulumi.Input<GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse> genericWebService;
  /// The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  final pulumi.Input<String> name;
  /// Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  final pulumi.Input<GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfigResponse> serviceDirectory;
  /// Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  final pulumi.Input<String> timeout;

  /// Creates a new [GoogleCloudDialogflowCxV3WebhookResponse].
  /// [disabled] Indicates whether the webhook is disabled.
  /// [displayName] The human-readable name of the webhook, unique within the agent.
  /// [genericWebService] Configuration for a generic web service.
  /// [name] The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  /// [serviceDirectory] Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  /// [timeout] Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  const GoogleCloudDialogflowCxV3WebhookResponse({
    required this.disabled,
    required this.displayName,
    required this.genericWebService,
    required this.name,
    required this.serviceDirectory,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'displayName': displayName,
      'genericWebService': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse, Map<String, dynamic>>(genericWebService, (value) => value.toMap()),
      'name': name,
      'serviceDirectory': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfigResponse, Map<String, dynamic>>(serviceDirectory, (value) => value.toMap()),
      'timeout': timeout,
    };
  }

  factory GoogleCloudDialogflowCxV3WebhookResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3WebhookResponse(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      genericWebService: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse.fromMap((map['genericWebService']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      serviceDirectory: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfigResponse.fromMap((map['serviceDirectory']! as Map).cast<String, dynamic>())),
      timeout: pulumi.Input.fromValue(map['timeout'] as String),
    );
  }
}
