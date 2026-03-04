// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The median automated stopping rule stops a pending trial if the trial's best objective_value is strictly below the median 'performance' of all completed trials reported up to the trial's last measurement. Currently, 'performance' refers to the running average of the objective values reported by the trial in each measurement.
class GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfigResponse {
  /// If true, the median automated stopping rule applies to measurement.use_elapsed_time, which means the elapsed_time field of the current trial's latest measurement is used to compute the median objective value for each completed trial.
  final pulumi.Input<bool> useElapsedTime;

  /// Creates a new [GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfigResponse].
  /// [useElapsedTime] If true, the median automated stopping rule applies to measurement.use_elapsed_time, which means the elapsed_time field of the current trial's latest measurement is used to compute the median objective value for each completed trial.
  GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfigResponse({
    required this.useElapsedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'useElapsedTime': useElapsedTime};
  }

  factory GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfigResponse(
      useElapsedTime: pulumi.Input.fromValue(map['useElapsedTime'] as bool),
    );
  }
}
