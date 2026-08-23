// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_webhook_response.dart';

/// Configuration for webhooks.
class GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse {
  /// The list of webhooks to override for the agent environment. The webhook must exist in the agent. You can override fields in `generic_web_service` and `service_directory`.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3WebhookResponse>> webhookOverrides;

  /// Creates a new [GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse].
  /// [webhookOverrides] The list of webhooks to override for the agent environment. The webhook must exist in the agent. You can override fields in `generic_web_service` and `service_directory`.
  const GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse({
    required this.webhookOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webhookOverrides': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3WebhookResponse>, List<Map<String, dynamic>>>(webhookOverrides, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3WebhookResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse(
      webhookOverrides: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3WebhookResponse>(map['webhookOverrides']!, (value) => GoogleCloudDialogflowCxV3WebhookResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
