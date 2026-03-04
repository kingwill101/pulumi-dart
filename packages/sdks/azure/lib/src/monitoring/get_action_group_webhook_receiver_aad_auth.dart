// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGroupWebhookReceiverAadAuth {
  final pulumi.Input<String> identifierUri;
  final pulumi.Input<String> objectId;

  /// The Tenant ID for the subscription containing this Event Hub.
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetActionGroupWebhookReceiverAadAuth].
  /// [identifierUri] Required.
  /// [objectId] Required.
  /// [tenantId] The Tenant ID for the subscription containing this Event Hub.
  GetActionGroupWebhookReceiverAadAuth({
    required this.identifierUri,
    required this.objectId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifierUri': identifierUri,
      'objectId': objectId,
      'tenantId': tenantId,
    };
  }

  factory GetActionGroupWebhookReceiverAadAuth.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetActionGroupWebhookReceiverAadAuth(
      identifierUri: pulumi.Input.fromValue(map['identifierUri'] as String),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
