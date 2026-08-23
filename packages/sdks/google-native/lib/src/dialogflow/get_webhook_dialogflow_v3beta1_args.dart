// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_webhook_dialogflow_v3beta1_args_doc}
/// Arguments for getWebhook.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_webhook_dialogflow_v3beta1_args_doc}
class GetWebhookDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> webhookId;

  /// Creates a new [GetWebhookDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [webhookId] Required.
  const GetWebhookDialogflowV3beta1Args({
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

  factory GetWebhookDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetWebhookDialogflowV3beta1Args(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookId: pulumi.Input.fromValue(map['webhookId'] as String),
    );
  }
}
