// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCasbPolicyActionsWebhookConfig {
  /// Display name/label of the webhook configuration.
  final pulumi.Input<String> displayName;
  /// Unique identifier for the webhook configuration.
  final pulumi.Input<String> webhookConfigId;

  /// Creates a new [GetZeroTrustCasbPolicyActionsWebhookConfig].
  /// [displayName] Display name/label of the webhook configuration.
  /// [webhookConfigId] Unique identifier for the webhook configuration.
  const GetZeroTrustCasbPolicyActionsWebhookConfig({
    required this.displayName,
    required this.webhookConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'webhookConfigId': webhookConfigId,
    };
  }

  factory GetZeroTrustCasbPolicyActionsWebhookConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbPolicyActionsWebhookConfig(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      webhookConfigId: pulumi.Input.fromValue(map['webhookConfigId'] as String),
    );
  }
}
