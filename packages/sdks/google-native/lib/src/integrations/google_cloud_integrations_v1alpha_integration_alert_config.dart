// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_integration_alert_config_metric_type.dart';
import 'google_cloud_integrations_v1alpha_integration_alert_config_threshold_type.dart';
import 'google_cloud_integrations_v1alpha_integration_alert_config_threshold_value.dart';

/// Message to be used to configure custom alerting in the {@code EventConfig} protos for an event.
class GoogleCloudIntegrationsV1alphaIntegrationAlertConfig {
  /// The period over which the metric value should be aggregated and evaluated. Format is , where integer should be a positive integer and unit should be one of (s,m,h,d,w) meaning (second, minute, hour, day, week). For an EXPECTED_MIN threshold, this aggregation_period must be lesser than 24 hours.
  final pulumi.Input<String>? aggregationPeriod;
  /// For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  final pulumi.Input<int>? alertThreshold;
  /// Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this integration alert.
  final pulumi.Input<bool>? disableAlert;
  /// Name of the alert. This will be displayed in the alert subject. If set, this name should be unique within the scope of the integration.
  final pulumi.Input<String>? displayName;
  /// Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  final pulumi.Input<String>? durationThreshold;
  /// The type of metric.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaIntegrationAlertConfigMetricType>? metricType;
  /// For either events or tasks, depending on the type of alert, count only final attempts, not retries.
  final pulumi.Input<bool>? onlyFinalAttempt;
  /// The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdType>? thresholdType;
  /// The metric value, above or below which the alert should be triggered.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue>? thresholdValue;

  /// Creates a new [GoogleCloudIntegrationsV1alphaIntegrationAlertConfig].
  /// [aggregationPeriod] The period over which the metric value should be aggregated and evaluated. Format is , where integer should be a positive integer and unit should be one of (s,m,h,d,w) meaning (second, minute, hour, day, week). For an EXPECTED_MIN threshold, this aggregation_period must be lesser than 24 hours.
  /// [alertThreshold] For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  /// [disableAlert] Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this integration alert.
  /// [displayName] Name of the alert. This will be displayed in the alert subject. If set, this name should be unique within the scope of the integration.
  /// [durationThreshold] Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  /// [metricType] The type of metric.
  /// [onlyFinalAttempt] For either events or tasks, depending on the type of alert, count only final attempts, not retries.
  /// [thresholdType] The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  /// [thresholdValue] The metric value, above or below which the alert should be triggered.
  GoogleCloudIntegrationsV1alphaIntegrationAlertConfig({
    this.aggregationPeriod,
    this.alertThreshold,
    this.disableAlert,
    this.displayName,
    this.durationThreshold,
    this.metricType,
    this.onlyFinalAttempt,
    this.thresholdType,
    this.thresholdValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationPeriod': ?aggregationPeriod,
      'alertThreshold': ?alertThreshold,
      'disableAlert': ?disableAlert,
      'displayName': ?displayName,
      'durationThreshold': ?durationThreshold,
      'metricType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaIntegrationAlertConfigMetricType, String>(metricType, (value) => value.value),
      'onlyFinalAttempt': ?onlyFinalAttempt,
      'thresholdType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdType, String>(thresholdType, (value) => value.value),
      'thresholdValue': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue, Map<String, dynamic>>(thresholdValue, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIntegrationsV1alphaIntegrationAlertConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaIntegrationAlertConfig(
      aggregationPeriod: map['aggregationPeriod'] == null ? null : (map['aggregationPeriod'] as String).input(),
      alertThreshold: map['alertThreshold'] == null ? null : (map['alertThreshold'] as int).input(),
      disableAlert: map['disableAlert'] == null ? null : (map['disableAlert'] as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      durationThreshold: map['durationThreshold'] == null ? null : (map['durationThreshold'] as String).input(),
      metricType: map['metricType'] == null ? null : (GoogleCloudIntegrationsV1alphaIntegrationAlertConfigMetricType.fromValue(map['metricType'] as String)).input(),
      onlyFinalAttempt: map['onlyFinalAttempt'] == null ? null : (map['onlyFinalAttempt'] as bool).input(),
      thresholdType: map['thresholdType'] == null ? null : (GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdType.fromValue(map['thresholdType'] as String)).input(),
      thresholdValue: map['thresholdValue'] == null ? null : (GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue.fromMap((map['thresholdValue'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

