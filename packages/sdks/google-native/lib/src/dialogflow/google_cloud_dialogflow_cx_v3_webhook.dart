// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_webhook_generic_web_service.dart';
import 'google_cloud_dialogflow_cx_v3_webhook_service_directory_config.dart';

/// Webhooks host the developer's business logic. During a session, webhooks allow the developer to use the data extracted by Dialogflow's natural language processing to generate dynamic responses, validate collected data, or trigger actions on the backend.
class GoogleCloudDialogflowCxV3Webhook {
  /// Indicates whether the webhook is disabled.
  final pulumi.Input<bool>? disabled;
  /// The human-readable name of the webhook, unique within the agent.
  final pulumi.Input<String> displayName;
  /// Configuration for a generic web service.
  final pulumi.Input<GoogleCloudDialogflowCxV3WebhookGenericWebService>? genericWebService;
  /// The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  final pulumi.Input<String>? name;
  /// Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  final pulumi.Input<GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig>? serviceDirectory;
  /// Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  final pulumi.Input<String>? timeout;

  /// Creates a new [GoogleCloudDialogflowCxV3Webhook].
  /// [disabled] Indicates whether the webhook is disabled.
  /// [displayName] The human-readable name of the webhook, unique within the agent.
  /// [genericWebService] Configuration for a generic web service.
  /// [name] The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  /// [serviceDirectory] Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  /// [timeout] Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  GoogleCloudDialogflowCxV3Webhook({
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
      'genericWebService': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3WebhookGenericWebService, Map<String, dynamic>>(genericWebService, (value) => value.toMap()),
      'name': ?name,
      'serviceDirectory': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectory, (value) => value.toMap()),
      'timeout': ?timeout,
    };
  }

  factory GoogleCloudDialogflowCxV3Webhook.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3Webhook(
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      displayName: (map['displayName'] as String).input(),
      genericWebService: map['genericWebService'] == null ? null : (GoogleCloudDialogflowCxV3WebhookGenericWebService.fromMap((map['genericWebService'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      serviceDirectory: map['serviceDirectory'] == null ? null : (GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig.fromMap((map['serviceDirectory'] as Map).cast<String, dynamic>())).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as String).input(),
    );
  }
}

