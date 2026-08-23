// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The threshold value of the metric, above or below which the alert should be triggered. See EventAlertConfig or TaskAlertConfig for the different alert metric types in each case. For the *RATE metrics, one or both of these fields may be set. Zero is the default value and can be left at that. For *PERCENTILE_DURATION metrics, one or both of these fields may be set, and also, the duration threshold value should be specified in the threshold_duration_ms member below. For *AVERAGE_DURATION metrics, these fields should not be set at all. A different member, threshold_duration_ms, must be set in the EventAlertConfig or the TaskAlertConfig.
class GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue {
  /// Absolute value threshold.
  final pulumi.Input<String>? absolute;
  /// Percentage threshold.
  final pulumi.Input<int>? percentage;

  /// Creates a new [GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue].
  /// [absolute] Absolute value threshold.
  /// [percentage] Percentage threshold.
  const GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue({
    this.absolute,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absolute': ?absolute,
      'percentage': ?percentage,
    };
  }

  factory GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue(
      absolute: (() { final guardedValue = map['absolute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
