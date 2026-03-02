// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_measurement_response.dart';

/// Represents a uCAIP NasJob trial.
class GoogleCloudAiplatformV1NasTrialResponse {
  /// Time when the NasTrial's status changed to `SUCCEEDED` or `INFEASIBLE`.
  final pulumi.Input<String> endTime;
  /// The final measurement containing the objective value.
  final pulumi.Input<GoogleCloudAiplatformV1MeasurementResponse> finalMeasurement;
  /// Time when the NasTrial was started.
  final pulumi.Input<String> startTime;
  /// The detailed state of the NasTrial.
  final pulumi.Input<String> state;

  /// Creates a new [GoogleCloudAiplatformV1NasTrialResponse].
  /// [endTime] Time when the NasTrial's status changed to `SUCCEEDED` or `INFEASIBLE`.
  /// [finalMeasurement] The final measurement containing the objective value.
  /// [startTime] Time when the NasTrial was started.
  /// [state] The detailed state of the NasTrial.
  GoogleCloudAiplatformV1NasTrialResponse({
    required this.endTime,
    required this.finalMeasurement,
    required this.startTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'finalMeasurement': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1MeasurementResponse, Map<String, dynamic>>(finalMeasurement, (value) => value.toMap()),
      'startTime': startTime,
      'state': state,
    };
  }

  factory GoogleCloudAiplatformV1NasTrialResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NasTrialResponse(
      endTime: (map['endTime'] as String).input(),
      finalMeasurement: (GoogleCloudAiplatformV1MeasurementResponse.fromMap((map['finalMeasurement'] as Map).cast<String, dynamic>())).input(),
      startTime: (map['startTime'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

