// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_model_monitoring_alert_config_email_alert_config.dart';

class GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig {
  /// Email alert config.
  final pulumi.Input<
    GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfig
  >?
  emailAlertConfig;

  /// Dump the anomalies to Cloud Logging. The anomalies will be put to json payload encoded from proto google.cloud.aiplatform.logging.ModelMonitoringAnomaliesLogEntry. This can be further sinked to Pub/Sub or any other services supported by Cloud Logging.
  final pulumi.Input<bool>? enableLogging;

  /// Resource names of the NotificationChannels to send alert. Must be of the format `projects//notificationChannels/`
  final pulumi.Input<List<String>>? notificationChannels;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig].
  /// [emailAlertConfig] Email alert config.
  /// [enableLogging] Dump the anomalies to Cloud Logging. The anomalies will be put to json payload encoded from proto google.cloud.aiplatform.logging.ModelMonitoringAnomaliesLogEntry. This can be further sinked to Pub/Sub or any other services supported by Cloud Logging.
  /// [notificationChannels] Resource names of the NotificationChannels to send alert. Must be of the format `projects//notificationChannels/`
  GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig({
    this.emailAlertConfig,
    this.enableLogging,
    this.notificationChannels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAlertConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfig,
            Map<String, dynamic>
          >(emailAlertConfig, (value) => value.toMap()),
      'enableLogging': ?enableLogging,
      'notificationChannels': ?notificationChannels,
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig(
      emailAlertConfig: (() {
        final guardedValue = map['emailAlertConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enableLogging: (() {
        final guardedValue = map['enableLogging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      notificationChannels: (() {
        final guardedValue = map['notificationChannels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
