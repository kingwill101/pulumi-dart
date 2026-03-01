// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_group_webhook_receiver_aad_auth.dart';

class GetActionGroupWebhookReceiver {
  final List<GetActionGroupWebhookReceiverAadAuth> aadAuths;
  /// Specifies the name of the Action Group.
  final String name;
  /// The URI where webhooks should be sent.
  final String serviceUri;
  /// Indicates whether to use common alert schema.
  final bool useCommonAlertSchema;

  /// Creates a new [GetActionGroupWebhookReceiver].
  /// [aadAuths] Required.
  /// [name] Specifies the name of the Action Group.
  /// [serviceUri] The URI where webhooks should be sent.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  GetActionGroupWebhookReceiver({
    required this.aadAuths,
    required this.name,
    required this.serviceUri,
    required this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuths': pulumi.Input.encodeList<GetActionGroupWebhookReceiverAadAuth, Map<String, dynamic>>(aadAuths, (value) => value.toMap()),
      'name': name,
      'serviceUri': serviceUri,
      'useCommonAlertSchema': useCommonAlertSchema,
    };
  }

  factory GetActionGroupWebhookReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupWebhookReceiver(
      aadAuths: pulumi.Input.decodeList<GetActionGroupWebhookReceiverAadAuth>(map['aadAuths'], (value) => GetActionGroupWebhookReceiverAadAuth.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      serviceUri: map['serviceUri'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] as bool,
    );
  }
}

