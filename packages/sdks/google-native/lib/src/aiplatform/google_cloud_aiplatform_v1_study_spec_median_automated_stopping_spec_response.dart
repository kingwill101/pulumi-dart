// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The median automated stopping rule stops a pending Trial if the Trial's best objective_value is strictly below the median 'performance' of all completed Trials reported up to the Trial's last measurement. Currently, 'performance' refers to the running average of the objective values reported by the Trial in each measurement.
class GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpecResponse {
  /// True if median automated stopping rule applies on Measurement.elapsed_duration. It means that elapsed_duration field of latest measurement of current Trial is used to compute median objective value for each completed Trials.
  final pulumi.Input<bool> useElapsedDuration;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpecResponse].
  /// [useElapsedDuration] True if median automated stopping rule applies on Measurement.elapsed_duration. It means that elapsed_duration field of latest measurement of current Trial is used to compute median objective value for each completed Trials.
  const GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpecResponse({
    required this.useElapsedDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useElapsedDuration': useElapsedDuration,
    };
  }

  factory GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpecResponse(
      useElapsedDuration: pulumi.Input.fromValue(map['useElapsedDuration'] as bool),
    );
  }
}

