// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfig {
  /// Specify a threshold value that can trigger the alert. For numerical feature, the distribution distance is calculated by Jensen–Shannon divergence. Each feature must have a non-zero threshold if they need to be monitored. Otherwise no alert will be triggered for that feature. The default value is 0.3.
  final pulumi.Input<double> value;

  /// Creates a new [AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfig].
  /// [value] Specify a threshold value that can trigger the alert. For numerical feature, the distribution distance is calculated by Jensen–Shannon divergence. Each feature must have a non-zero threshold if they need to be monitored. Otherwise no alert will be triggered for that feature. The default value is 0.3.
  AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfig({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfig(
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}
