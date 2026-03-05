// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_webhook_generic_web_service_response.dart';
import 'google_cloud_dialogflow_cx_v3_webhook_service_directory_config_response.dart';

/// Result data returned by getWebhook.
class GetWebhookResult {
  /// Indicates whether the webhook is disabled.
  final bool disabled;
  /// The human-readable name of the webhook, unique within the agent.
  final String displayName;
  /// Configuration for a generic web service.
  final GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse genericWebService;
  /// The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  final String name;
  /// Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  final GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfigResponse serviceDirectory;
  /// Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  final String timeout;

  /// Creates a new [GetWebhookResult].
  /// [disabled] Indicates whether the webhook is disabled.
  /// [displayName] The human-readable name of the webhook, unique within the agent.
  /// [genericWebService] Configuration for a generic web service.
  /// [name] The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  /// [serviceDirectory] Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  /// [timeout] Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  GetWebhookResult({
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
      'genericWebService': genericWebService.toMap(),
      'name': name,
      'serviceDirectory': serviceDirectory.toMap(),
      'timeout': timeout,
    };
  }

  factory GetWebhookResult.fromMap(Map<String, dynamic> map) {
    return GetWebhookResult(
      disabled: map['disabled'] as bool,
      displayName: map['displayName'] as String,
      genericWebService: GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse.fromMap((map['genericWebService']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      serviceDirectory: GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfigResponse.fromMap((map['serviceDirectory']! as Map).cast<String, dynamic>()),
      timeout: map['timeout'] as String,
    );
  }
}

