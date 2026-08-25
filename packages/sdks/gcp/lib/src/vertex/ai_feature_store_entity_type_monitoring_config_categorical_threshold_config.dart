// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfig {
  /// Specify a threshold value that can trigger the alert. For categorical feature, the distribution distance is calculated by L-inifinity norm. Each feature must have a non-zero threshold if they need to be monitored. Otherwise no alert will be triggered for that feature. The default value is 0.3.
  final pulumi.Input<double> value;

  /// Creates a new [AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfig].
  /// [value] Specify a threshold value that can trigger the alert. For categorical feature, the distribution distance is calculated by L-inifinity norm. Each feature must have a non-zero threshold if they need to be monitored. Otherwise no alert will be triggered for that feature. The default value is 0.3.
  const AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfig({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfig.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfig(
      value: pulumi.Input.fromValue((map['value'] as num).toDouble()),
    );
  }
}
