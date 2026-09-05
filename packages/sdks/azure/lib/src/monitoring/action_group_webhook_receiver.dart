// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_group_webhook_receiver_aad_auth.dart';

class ActionGroupWebhookReceiver {
  /// The `aadAuth` block as defined below.
  ///
  /// &gt; **Note:** Before adding a secure webhook receiver by setting `aadAuth`, please read [the configuration instruction of the AAD application](https://docs.microsoft.com/azure/azure-monitor/platform/action-groups#secure-webhook).
  final pulumi.Input<ActionGroupWebhookReceiverAadAuth?>? aadAuth;
  /// The name of the webhook receiver. Names must be unique (case-insensitive) across all receivers within an action group.
  final pulumi.Input<String> name;
  /// The URI where webhooks should be sent.
  final pulumi.Input<String> serviceUri;
  /// Enables or disables the common alert schema.
  final pulumi.Input<bool?>? useCommonAlertSchema;

  /// Creates a new [ActionGroupWebhookReceiver].
  /// [aadAuth] The `aadAuth` block as defined below.
  /// [name] The name of the webhook receiver. Names must be unique (case-insensitive) across all receivers within an action group.
  /// [serviceUri] The URI where webhooks should be sent.
  /// [useCommonAlertSchema] Enables or disables the common alert schema.
  const ActionGroupWebhookReceiver({
    this.aadAuth,
    required this.name,
    required this.serviceUri,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuth': ?pulumi.Input.mapOptionalInputValue<ActionGroupWebhookReceiverAadAuth, Map<String, dynamic>>(aadAuth, (value) => value.toMap()),
      'name': name,
      'serviceUri': serviceUri,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory ActionGroupWebhookReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupWebhookReceiver(
      aadAuth: (() { final guardedValue = map['aadAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionGroupWebhookReceiverAadAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      serviceUri: pulumi.Input.fromValue(map['serviceUri'] as String),
      useCommonAlertSchema: (() { final guardedValue = map['useCommonAlertSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
