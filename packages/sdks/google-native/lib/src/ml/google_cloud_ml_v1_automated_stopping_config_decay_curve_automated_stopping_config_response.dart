// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfigResponse {
  /// If true, measurement.elapsed_time is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.steps will be used as the x-axis.
  final pulumi.Input<bool> useElapsedTime;

  /// Creates a new [GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfigResponse].
  /// [useElapsedTime] If true, measurement.elapsed_time is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.steps will be used as the x-axis.
  const GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfigResponse({
    required this.useElapsedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useElapsedTime': useElapsedTime,
    };
  }

  factory GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfigResponse(
      useElapsedTime: pulumi.Input.fromValue(map['useElapsedTime'] as bool),
    );
  }
}
