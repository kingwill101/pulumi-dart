// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_automated_stopping_config_decay_curve_automated_stopping_config.dart';
import 'google_cloud_ml_v1_automated_stopping_config_median_automated_stopping_config.dart';

/// Configuration for Automated Early Stopping of Trials. If no implementation_config is set, automated early stopping will not be run.
class GoogleCloudMlV1AutomatedStoppingConfig {
  final pulumi.Input<GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig>? decayCurveStoppingConfig;
  final pulumi.Input<GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig>? medianAutomatedStoppingConfig;

  /// Creates a new [GoogleCloudMlV1AutomatedStoppingConfig].
  /// [decayCurveStoppingConfig] Optional.
  /// [medianAutomatedStoppingConfig] Optional.
  const GoogleCloudMlV1AutomatedStoppingConfig({
    this.decayCurveStoppingConfig,
    this.medianAutomatedStoppingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'decayCurveStoppingConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig, Map<String, dynamic>>(decayCurveStoppingConfig, (value) => value.toMap()),
      'medianAutomatedStoppingConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig, Map<String, dynamic>>(medianAutomatedStoppingConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudMlV1AutomatedStoppingConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1AutomatedStoppingConfig(
      decayCurveStoppingConfig: (() { final guardedValue = map['decayCurveStoppingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      medianAutomatedStoppingConfig: (() { final guardedValue = map['medianAutomatedStoppingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

