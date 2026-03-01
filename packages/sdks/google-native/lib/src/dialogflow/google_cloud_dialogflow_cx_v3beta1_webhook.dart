// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_webhook_generic_web_service.dart';
import 'google_cloud_dialogflow_cx_v3beta1_webhook_service_directory_config.dart';

/// Webhooks host the developer's business logic. During a session, webhooks allow the developer to use the data extracted by Dialogflow's natural language processing to generate dynamic responses, validate collected data, or trigger actions on the backend.
class GoogleCloudDialogflowCxV3beta1Webhook {
  /// Indicates whether the webhook is disabled.
  final bool? disabled;
  /// The human-readable name of the webhook, unique within the agent.
  final String displayName;
  /// Configuration for a generic web service.
  final GoogleCloudDialogflowCxV3beta1WebhookGenericWebService? genericWebService;
  /// The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  final String? name;
  /// Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  final GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig? serviceDirectory;
  /// Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  final String? timeout;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1Webhook].
  /// [disabled] Indicates whether the webhook is disabled.
  /// [displayName] The human-readable name of the webhook, unique within the agent.
  /// [genericWebService] Configuration for a generic web service.
  /// [name] The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  /// [serviceDirectory] Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  /// [timeout] Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  GoogleCloudDialogflowCxV3beta1Webhook({
    this.disabled,
    required this.displayName,
    this.genericWebService,
    this.name,
    this.serviceDirectory,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'displayName': displayName,
      'genericWebService': ?genericWebService == null ? null : genericWebService!.toMap(),
      'name': ?name,
      'serviceDirectory': ?serviceDirectory == null ? null : serviceDirectory!.toMap(),
      'timeout': ?timeout,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1Webhook.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1Webhook(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      displayName: map['displayName'] as String,
      genericWebService: map['genericWebService'] == null ? null : GoogleCloudDialogflowCxV3beta1WebhookGenericWebService.fromMap((map['genericWebService'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      serviceDirectory: map['serviceDirectory'] == null ? null : GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig.fromMap((map['serviceDirectory'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

