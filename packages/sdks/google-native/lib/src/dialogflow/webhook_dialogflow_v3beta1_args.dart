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
    required pulumi.Output<String> agentId,
    pulumi.Output<bool>? disabled,
    required pulumi.Output<String> displayName,
    pulumi.Output<GoogleCloudDialogflowCxV3beta1WebhookGenericWebService>? genericWebService,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig>? serviceDirectory,
    pulumi.Output<String>? timeout,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      displayName = pulumi.Input.asInput<String>(displayName),
      genericWebService = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3beta1WebhookGenericWebService>(genericWebService),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceDirectory = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig>(serviceDirectory),
      timeout = pulumi.Input.asOptionalInput<String>(timeout);

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
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      genericWebService: map['genericWebService'] == null ? null : pulumi.Output.create<GoogleCloudDialogflowCxV3beta1WebhookGenericWebService>(GoogleCloudDialogflowCxV3beta1WebhookGenericWebService.fromMap((map['genericWebService'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceDirectory: map['serviceDirectory'] == null ? null : pulumi.Output.create<GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig>(GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig.fromMap((map['serviceDirectory'] as Map).cast<String, dynamic>())),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<String>(map['timeout'] as String),
    );
  }
}

