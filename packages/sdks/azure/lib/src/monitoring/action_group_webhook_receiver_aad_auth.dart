// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGroupWebhookReceiverAadAuth {
  /// The identifier URI for AAD auth.
  final pulumi.Input<String>? identifierUri;
  /// The webhook application object Id for AAD auth.
  final pulumi.Input<String> objectId;
  /// The tenant id for AAD auth.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ActionGroupWebhookReceiverAadAuth].
  /// [identifierUri] The identifier URI for AAD auth.
  /// [objectId] The webhook application object Id for AAD auth.
  /// [tenantId] The tenant id for AAD auth.
  const ActionGroupWebhookReceiverAadAuth({
    this.identifierUri,
    required this.objectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifierUri': ?identifierUri,
      'objectId': objectId,
      'tenantId': ?tenantId,
    };
  }

  factory ActionGroupWebhookReceiverAadAuth.fromMap(Map<String, dynamic> map) {
    return ActionGroupWebhookReceiverAadAuth(
      identifierUri: (() { final guardedValue = map['identifierUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
