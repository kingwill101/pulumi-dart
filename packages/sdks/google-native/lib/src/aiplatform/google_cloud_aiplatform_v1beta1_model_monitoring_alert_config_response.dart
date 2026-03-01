// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_model_monitoring_alert_config_email_alert_config_response.dart';

class GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigResponse {
  /// Email alert config.
  final GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfigResponse emailAlertConfig;
  /// Dump the anomalies to Cloud Logging. The anomalies will be put to json payload encoded from proto google.cloud.aiplatform.logging.ModelMonitoringAnomaliesLogEntry. This can be further sinked to Pub/Sub or any other services supported by Cloud Logging.
  final bool enableLogging;
  /// Resource names of the NotificationChannels to send alert. Must be of the format `projects//notificationChannels/`
  final List<String> notificationChannels;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigResponse].
  /// [emailAlertConfig] Email alert config.
  /// [enableLogging] Dump the anomalies to Cloud Logging. The anomalies will be put to json payload encoded from proto google.cloud.aiplatform.logging.ModelMonitoringAnomaliesLogEntry. This can be further sinked to Pub/Sub or any other services supported by Cloud Logging.
  /// [notificationChannels] Resource names of the NotificationChannels to send alert. Must be of the format `projects//notificationChannels/`
  GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigResponse({
    required this.emailAlertConfig,
    required this.enableLogging,
    required this.notificationChannels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAlertConfig': emailAlertConfig.toMap(),
      'enableLogging': enableLogging,
      'notificationChannels': notificationChannels,
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigResponse(
      emailAlertConfig: GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfigResponse.fromMap((map['emailAlertConfig'] as Map).cast<String, dynamic>()),
      enableLogging: map['enableLogging'] as bool,
      notificationChannels: (map['notificationChannels'] as List).cast<String>(),
    );
  }
}

