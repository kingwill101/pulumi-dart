// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_webhook_args_doc}
/// Arguments for getWebhook.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_webhook_args_doc}
class GetWebhookArgs {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> webhookId;

  /// Creates a new [GetWebhookArgs].
  /// [agentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [webhookId] Required.
  GetWebhookArgs({
    required pulumi.Output<String> agentId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> webhookId,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      webhookId = pulumi.Input.asInput<String>(webhookId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'location': location,
      'project': ?project,
      'webhookId': webhookId,
    };
  }

  factory GetWebhookArgs.fromMap(Map<String, dynamic> map) {
    return GetWebhookArgs(
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      webhookId: pulumi.Output.create<String>(map['webhookId'] as String),
    );
  }
}

