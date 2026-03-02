// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig {
  /// If true, measurement.elapsed_time is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.steps will be used as the x-axis.
  final pulumi.Input<bool>? useElapsedTime;

  /// Creates a new [GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig].
  /// [useElapsedTime] If true, measurement.elapsed_time is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.steps will be used as the x-axis.
  GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig({
    this.useElapsedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useElapsedTime': ?useElapsedTime,
    };
  }

  factory GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig(
      useElapsedTime: map['useElapsedTime'] == null ? null : (map['useElapsedTime']! as bool).input(),
    );
  }
}

