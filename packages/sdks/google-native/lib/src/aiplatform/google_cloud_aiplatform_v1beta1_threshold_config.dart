// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The config for feature monitoring threshold.
class GoogleCloudAiplatformV1beta1ThresholdConfig {
  /// Specify a threshold value that can trigger the alert. If this threshold config is for feature distribution distance: 1. For categorical feature, the distribution distance is calculated by L-inifinity norm. 2. For numerical feature, the distribution distance is calculated by Jensen–Shannon divergence. Each feature must have a non-zero threshold if they need to be monitored. Otherwise no alert will be triggered for that feature.
  final pulumi.Input<double>? value;

  /// Creates a new [GoogleCloudAiplatformV1beta1ThresholdConfig].
  /// [value] Specify a threshold value that can trigger the alert. If this threshold config is for feature distribution distance: 1. For categorical feature, the distribution distance is calculated by L-inifinity norm. 2. For numerical feature, the distribution distance is calculated by Jensen–Shannon divergence. Each feature must have a non-zero threshold if they need to be monitored. Otherwise no alert will be triggered for that feature.
  GoogleCloudAiplatformV1beta1ThresholdConfig({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory GoogleCloudAiplatformV1beta1ThresholdConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1ThresholdConfig(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
