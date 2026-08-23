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
  const GetWebhookArgs({
    required this.agentId,
    required this.location,
    this.project,
    required this.webhookId,
  });

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
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookId: pulumi.Input.fromValue(map['webhookId'] as String),
    );
  }
}
