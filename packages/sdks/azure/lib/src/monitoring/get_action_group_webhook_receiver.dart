// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_group_webhook_receiver_aad_auth.dart';

class GetActionGroupWebhookReceiver {
  final pulumi.Input<List<GetActionGroupWebhookReceiverAadAuth>> aadAuths;
  /// Specifies the name of the Action Group.
  final pulumi.Input<String> name;
  /// The URI where webhooks should be sent.
  final pulumi.Input<String> serviceUri;
  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool> useCommonAlertSchema;

  /// Creates a new [GetActionGroupWebhookReceiver].
  /// [aadAuths] Required.
  /// [name] Specifies the name of the Action Group.
  /// [serviceUri] The URI where webhooks should be sent.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  const GetActionGroupWebhookReceiver({
    required this.aadAuths,
    required this.name,
    required this.serviceUri,
    required this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuths': pulumi.Input.mapInputValue<List<GetActionGroupWebhookReceiverAadAuth>, List<Map<String, dynamic>>>(aadAuths, (value) => pulumi.Input.encodeList<GetActionGroupWebhookReceiverAadAuth, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'serviceUri': serviceUri,
      'useCommonAlertSchema': useCommonAlertSchema,
    };
  }

  factory GetActionGroupWebhookReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupWebhookReceiver(
      aadAuths: pulumi.Input.fromValue(pulumi.Input.decodeList<GetActionGroupWebhookReceiverAadAuth>(map['aadAuths']!, (value) => GetActionGroupWebhookReceiverAadAuth.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      serviceUri: pulumi.Input.fromValue(map['serviceUri'] as String),
      useCommonAlertSchema: pulumi.Input.fromValue(map['useCommonAlertSchema'] as bool),
    );
  }
}

