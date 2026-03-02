// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_webhook_generic_web_service.dart';
import 'google_cloud_dialogflow_cx_v3beta1_webhook_service_directory_config.dart';

/// {@template pulumi_dialogflow_v3beta1_webhook_dialogflow_v3beta1_args_doc}
/// The set of arguments for Webhook.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_webhook_dialogflow_v3beta1_args_doc}
class WebhookDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  /// Indicates whether the webhook is disabled.
  final pulumi.Input<bool>? disabled;
  /// The human-readable name of the webhook, unique within the agent.
  final pulumi.Input<String> displayName;
  /// Configuration for a generic web service.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1WebhookGenericWebService>? genericWebService;
  final pulumi.Input<String>? location;
  /// The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig>? serviceDirectory;
  /// Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  final pulumi.Input<String>? timeout;

  /// Creates a new [WebhookDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [disabled] Indicates whether the webhook is disabled.
  /// [displayName] The human-readable name of the webhook, unique within the agent.
  /// [genericWebService] Configuration for a generic web service.
  /// [location] Optional.
  /// [name] The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  /// [project] Optional.
  /// [serviceDirectory] Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  /// [timeout] Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  WebhookDialogflowV3beta1Args({
    required this.agentId,
    this.disabled,
    required this.displayName,
    this.genericWebService,
    this.location,
    this.name,
    this.project,
    this.serviceDirectory,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'disabled': ?disabled,
      'displayName': displayName,
      'genericWebService': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1WebhookGenericWebService, Map<String, dynamic>>(genericWebService, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceDirectory': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectory, (value) => value.toMap()),
      'timeout': ?timeout,
    };
  }

  factory WebhookDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return WebhookDialogflowV3beta1Args(
      agentId: (map['agentId'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      displayName: (map['displayName'] as String).input(),
      genericWebService: map['genericWebService'] == null ? null : (GoogleCloudDialogflowCxV3beta1WebhookGenericWebService.fromMap((map['genericWebService'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serviceDirectory: map['serviceDirectory'] == null ? null : (GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig.fromMap((map['serviceDirectory'] as Map).cast<String, dynamic>())).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as String).input(),
    );
  }
}

