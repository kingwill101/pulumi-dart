// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_casb_webhook_get_zero_trust_casb_webhook_args_doc}
/// Arguments for getZeroTrustCasbWebhook.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_casb_webhook_get_zero_trust_casb_webhook_args_doc}
class GetZeroTrustCasbWebhookArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> webhookId;

  /// Creates a new [GetZeroTrustCasbWebhookArgs].
  /// [accountId] Required.
  /// [webhookId] Required.
  const GetZeroTrustCasbWebhookArgs({
    required this.accountId,
    required this.webhookId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'webhookId': webhookId,
    };
  }

  factory GetZeroTrustCasbWebhookArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbWebhookArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      webhookId: pulumi.Input.fromValue(map['webhookId'] as String),
    );
  }
}
