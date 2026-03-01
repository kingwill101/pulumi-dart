// ignore_for_file: unused_element, unnecessary_cast

import 'action_group_webhook_receiver_aad_auth.dart';

class ActionGroupWebhookReceiver {
  /// The `aad_auth` block as defined below.
  ///
  /// > **Note:** Before adding a secure webhook receiver by setting `aad_auth`, please read [the configuration instruction of the AAD application](https://docs.microsoft.com/azure/azure-monitor/platform/action-groups#secure-webhook).
  final ActionGroupWebhookReceiverAadAuth? aadAuth;
  /// The name of the webhook receiver. Names must be unique (case-insensitive) across all receivers within an action group.
  final String name;
  /// The URI where webhooks should be sent.
  final String serviceUri;
  /// Enables or disables the common alert schema.
  final bool? useCommonAlertSchema;

  /// Creates a new [ActionGroupWebhookReceiver].
  /// [aadAuth] The `aad_auth` block as defined below.
  /// [name] The name of the webhook receiver. Names must be unique (case-insensitive) across all receivers within an action group.
  /// [serviceUri] The URI where webhooks should be sent.
  /// [useCommonAlertSchema] Enables or disables the common alert schema.
  ActionGroupWebhookReceiver({
    this.aadAuth,
    required this.name,
    required this.serviceUri,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuth': ?aadAuth == null ? null : aadAuth!.toMap(),
      'name': name,
      'serviceUri': serviceUri,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory ActionGroupWebhookReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupWebhookReceiver(
      aadAuth: map['aadAuth'] == null ? null : ActionGroupWebhookReceiverAadAuth.fromMap((map['aadAuth'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      serviceUri: map['serviceUri'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
    );
  }
}

