// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_webhook_generic_web_service.dart';

/// Represents configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
class GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig {
  /// Generic Service configuration of this webhook.
  final pulumi.Input<GoogleCloudDialogflowCxV3WebhookGenericWebService>? genericWebService;
  /// The name of [Service Directory](https://cloud.google.com/service-directory) service. Format: `projects//locations//namespaces//services/`. `Location ID` of the service directory must be the same as the location of the agent.
  final pulumi.Input<String> service;

  /// Creates a new [GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig].
  /// [genericWebService] Generic Service configuration of this webhook.
  /// [service] The name of [Service Directory](https://cloud.google.com/service-directory) service. Format: `projects//locations//namespaces//services/`. `Location ID` of the service directory must be the same as the location of the agent.
  const GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig({
    this.genericWebService,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genericWebService': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3WebhookGenericWebService, Map<String, dynamic>>(genericWebService, (value) => value.toMap()),
      'service': service,
    };
  }

  factory GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig(
      genericWebService: (() { final guardedValue = map['genericWebService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3WebhookGenericWebService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

