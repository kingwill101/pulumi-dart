// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_webhook.dart';

/// Configuration for webhooks.
class GoogleCloudDialogflowCxV3EnvironmentWebhookConfig {
  /// The list of webhooks to override for the agent environment. The webhook must exist in the agent. You can override fields in `generic_web_service` and `service_directory`.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3Webhook>>? webhookOverrides;

  /// Creates a new [GoogleCloudDialogflowCxV3EnvironmentWebhookConfig].
  /// [webhookOverrides] The list of webhooks to override for the agent environment. The webhook must exist in the agent. You can override fields in `generic_web_service` and `service_directory`.
  const GoogleCloudDialogflowCxV3EnvironmentWebhookConfig({
    this.webhookOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webhookOverrides': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3Webhook>, List<Map<String, dynamic>>>(webhookOverrides, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3Webhook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3EnvironmentWebhookConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EnvironmentWebhookConfig(
      webhookOverrides: (() { final guardedValue = map['webhookOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3Webhook>(guardedValue, (value) => GoogleCloudDialogflowCxV3Webhook.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
