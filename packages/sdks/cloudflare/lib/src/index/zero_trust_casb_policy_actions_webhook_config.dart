// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCasbPolicyActionsWebhookConfig {
  /// The ID of the webhook configuration to use.
  final pulumi.Input<String> webhookConfigId;

  /// Creates a new [ZeroTrustCasbPolicyActionsWebhookConfig].
  /// [webhookConfigId] The ID of the webhook configuration to use.
  const ZeroTrustCasbPolicyActionsWebhookConfig({
    required this.webhookConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webhookConfigId': webhookConfigId,
    };
  }

  factory ZeroTrustCasbPolicyActionsWebhookConfig.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbPolicyActionsWebhookConfig(
      webhookConfigId: pulumi.Input.fromValue(map['webhookConfigId'] as String),
    );
  }
}
