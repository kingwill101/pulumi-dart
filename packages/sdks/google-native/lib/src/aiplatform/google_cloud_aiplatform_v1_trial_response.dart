// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_measurement_response.dart';
import 'google_cloud_aiplatform_v1_trial_parameter_response.dart';

/// A message representing a Trial. A Trial contains a unique set of Parameters that has been or will be evaluated, along with the objective metrics got by running the Trial.
class GoogleCloudAiplatformV1TrialResponse {
  /// The identifier of the client that originally requested this Trial. Each client is identified by a unique client_id. When a client asks for a suggestion, Vertex AI Vizier will assign it a Trial. The client should evaluate the Trial, complete it, and report back to Vertex AI Vizier. If suggestion is asked again by same client_id before the Trial is completed, the same Trial will be returned. Multiple clients with different client_ids can ask for suggestions simultaneously, each of them will get their own Trial.
  final pulumi.Input<String> clientId;
  /// The CustomJob name linked to the Trial. It's set for a HyperparameterTuningJob's Trial.
  final pulumi.Input<String> customJob;
  /// Time when the Trial's status changed to `SUCCEEDED` or `INFEASIBLE`.
  final pulumi.Input<String> endTime;
  /// The final measurement containing the objective value.
  final pulumi.Input<GoogleCloudAiplatformV1MeasurementResponse> finalMeasurement;
  /// A human readable string describing why the Trial is infeasible. This is set only if Trial state is `INFEASIBLE`.
  final pulumi.Input<String> infeasibleReason;
  /// A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_duration). These are used for early stopping computations.
  final pulumi.Input<List<GoogleCloudAiplatformV1MeasurementResponse>> measurements;
  /// Resource name of the Trial assigned by the service.
  final pulumi.Input<String> name;
  /// The parameters of the Trial.
  final pulumi.Input<List<GoogleCloudAiplatformV1TrialParameterResponse>> parameters;
  /// Time when the Trial was started.
  final pulumi.Input<String> startTime;
  /// The detailed state of the Trial.
  final pulumi.Input<String> state;
  /// URIs for accessing [interactive shells](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell) (one URI for each training node). Only available if this trial is part of a HyperparameterTuningJob and the job's trial_job_spec.enable_web_access field is `true`. The keys are names of each node used for the trial; for example, `workerpool0-0` for the primary node, `workerpool1-0` for the first node in the second worker pool, and `workerpool1-1` for the second node in the second worker pool. The values are the URIs for each node's interactive shell.
  final pulumi.Input<Map<String, String>> webAccessUris;

  /// Creates a new [GoogleCloudAiplatformV1TrialResponse].
  /// [clientId] The identifier of the client that originally requested this Trial. Each client is identified by a unique client_id. When a client asks for a suggestion, Vertex AI Vizier will assign it a Trial. The client should evaluate the Trial, complete it, and report back to Vertex AI Vizier. If suggestion is asked again by same client_id before the Trial is completed, the same Trial will be returned. Multiple clients with different client_ids can ask for suggestions simultaneously, each of them will get their own Trial.
  /// [customJob] The CustomJob name linked to the Trial. It's set for a HyperparameterTuningJob's Trial.
  /// [endTime] Time when the Trial's status changed to `SUCCEEDED` or `INFEASIBLE`.
  /// [finalMeasurement] The final measurement containing the objective value.
  /// [infeasibleReason] A human readable string describing why the Trial is infeasible. This is set only if Trial state is `INFEASIBLE`.
  /// [measurements] A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_duration). These are used for early stopping computations.
  /// [name] Resource name of the Trial assigned by the service.
  /// [parameters] The parameters of the Trial.
  /// [startTime] Time when the Trial was started.
  /// [state] The detailed state of the Trial.
  /// [webAccessUris] URIs for accessing [interactive shells](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell) (one URI for each training node). Only available if this trial is part of a HyperparameterTuningJob and the job's trial_job_spec.enable_web_access field is `true`. The keys are names of each node used for the trial; for example, `workerpool0-0` for the primary node, `workerpool1-0` for the first node in the second worker pool, and `workerpool1-1` for the second node in the second worker pool. The values are the URIs for each node's interactive shell.
  const GoogleCloudAiplatformV1TrialResponse({
    required this.clientId,
    required this.customJob,
    required this.endTime,
    required this.finalMeasurement,
    required this.infeasibleReason,
    required this.measurements,
    required this.name,
    required this.parameters,
    required this.startTime,
    required this.state,
    required this.webAccessUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'customJob': customJob,
      'endTime': endTime,
      'finalMeasurement': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1MeasurementResponse, Map<String, dynamic>>(finalMeasurement, (value) => value.toMap()),
      'infeasibleReason': infeasibleReason,
      'measurements': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1MeasurementResponse>, List<Map<String, dynamic>>>(measurements, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1MeasurementResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'parameters': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1TrialParameterResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1TrialParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTime': startTime,
      'state': state,
      'webAccessUris': webAccessUris,
    };
  }

  factory GoogleCloudAiplatformV1TrialResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1TrialResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      customJob: pulumi.Input.fromValue(map['customJob'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      finalMeasurement: pulumi.Input.fromValue(GoogleCloudAiplatformV1MeasurementResponse.fromMap((map['finalMeasurement']! as Map).cast<String, dynamic>())),
      infeasibleReason: pulumi.Input.fromValue(map['infeasibleReason'] as String),
      measurements: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1MeasurementResponse>(map['measurements']!, (value) => GoogleCloudAiplatformV1MeasurementResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1TrialParameterResponse>(map['parameters']!, (value) => GoogleCloudAiplatformV1TrialParameterResponse.fromMap((value as Map).cast<String, dynamic>()))),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      webAccessUris: pulumi.Input.fromValue((map['webAccessUris'] as Map).cast<String, String>()),
    );
  }
}
