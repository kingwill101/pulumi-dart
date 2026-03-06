// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud Logging details for execution info
class GoogleCloudIntegrationsV1alphaCloudLoggingDetailsResponse {
  /// Optional. Severity selected by the customer for the logs to be sent to Cloud Logging, for the integration version getting executed.
  final pulumi.Input<String> cloudLoggingSeverity;
  /// Optional. Status of whether Cloud Logging is enabled or not for the integration version getting executed.
  final pulumi.Input<bool> enableCloudLogging;

  /// Creates a new [GoogleCloudIntegrationsV1alphaCloudLoggingDetailsResponse].
  /// [cloudLoggingSeverity] Optional. Severity selected by the customer for the logs to be sent to Cloud Logging, for the integration version getting executed.
  /// [enableCloudLogging] Optional. Status of whether Cloud Logging is enabled or not for the integration version getting executed.
  const GoogleCloudIntegrationsV1alphaCloudLoggingDetailsResponse({
    required this.cloudLoggingSeverity,
    required this.enableCloudLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudLoggingSeverity': cloudLoggingSeverity,
      'enableCloudLogging': enableCloudLogging,
    };
  }

  factory GoogleCloudIntegrationsV1alphaCloudLoggingDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaCloudLoggingDetailsResponse(
      cloudLoggingSeverity: pulumi.Input.fromValue(map['cloudLoggingSeverity'] as String),
      enableCloudLogging: pulumi.Input.fromValue(map['enableCloudLogging'] as bool),
    );
  }
}

