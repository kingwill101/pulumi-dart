// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_automated_stopping_config_decay_curve_automated_stopping_config_response.dart';
import 'google_cloud_ml_v1_automated_stopping_config_median_automated_stopping_config_response.dart';

/// Configuration for Automated Early Stopping of Trials. If no implementation_config is set, automated early stopping will not be run.
class GoogleCloudMlV1AutomatedStoppingConfigResponse {
  final pulumi.Input<GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfigResponse> decayCurveStoppingConfig;
  final pulumi.Input<GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfigResponse> medianAutomatedStoppingConfig;

  /// Creates a new [GoogleCloudMlV1AutomatedStoppingConfigResponse].
  /// [decayCurveStoppingConfig] Required.
  /// [medianAutomatedStoppingConfig] Required.
  GoogleCloudMlV1AutomatedStoppingConfigResponse({
    required this.decayCurveStoppingConfig,
    required this.medianAutomatedStoppingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'decayCurveStoppingConfig': pulumi.Input.mapInputValue<GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfigResponse, Map<String, dynamic>>(decayCurveStoppingConfig, (value) => value.toMap()),
      'medianAutomatedStoppingConfig': pulumi.Input.mapInputValue<GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfigResponse, Map<String, dynamic>>(medianAutomatedStoppingConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudMlV1AutomatedStoppingConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1AutomatedStoppingConfigResponse(
      decayCurveStoppingConfig: pulumi.Input.fromValue(GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfigResponse.fromMap((map['decayCurveStoppingConfig']! as Map).cast<String, dynamic>())),
      medianAutomatedStoppingConfig: pulumi.Input.fromValue(GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfigResponse.fromMap((map['medianAutomatedStoppingConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

