// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_measurement_response.dart';
import 'google_cloud_ml_v1_trial_parameter_response.dart';

/// Result data returned by getTrial.
class GetTrialResult {
  /// The identifier of the client that originally requested this trial.
  final String? clientId;
  /// Time at which the trial's status changed to COMPLETED.
  final String? endTime;
  /// The final measurement containing the objective value.
  final GoogleCloudMlV1MeasurementResponse? finalMeasurement;
  /// A human readable string describing why the trial is infeasible. This should only be set if trial_infeasible is true.
  final String? infeasibleReason;
  /// A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_time). These are used for early stopping computations.
  final List<GoogleCloudMlV1MeasurementResponse>? measurements;
  /// Name of the trial assigned by the service.
  final String? name;
  /// The parameters of the trial.
  final List<GoogleCloudMlV1TrialParameterResponse>? parameters;
  /// Time at which the trial was started.
  final String? startTime;
  /// The detailed state of a trial.
  final String? state;
  /// If true, the parameters in this trial are not attempted again.
  final bool? trialInfeasible;

  /// Creates a new [GetTrialResult].
  /// [clientId] The identifier of the client that originally requested this trial.
  /// [endTime] Time at which the trial's status changed to COMPLETED.
  /// [finalMeasurement] The final measurement containing the objective value.
  /// [infeasibleReason] A human readable string describing why the trial is infeasible. This should only be set if trial_infeasible is true.
  /// [measurements] A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_time). These are used for early stopping computations.
  /// [name] Name of the trial assigned by the service.
  /// [parameters] The parameters of the trial.
  /// [startTime] Time at which the trial was started.
  /// [state] The detailed state of a trial.
  /// [trialInfeasible] If true, the parameters in this trial are not attempted again.
  const GetTrialResult({
    this.clientId,
    this.endTime,
    this.finalMeasurement,
    this.infeasibleReason,
    this.measurements,
    this.name,
    this.parameters,
    this.startTime,
    this.state,
    this.trialInfeasible,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'endTime': ?endTime,
      'finalMeasurement': ?finalMeasurement?.toMap(),
      'infeasibleReason': ?infeasibleReason,
      'measurements': ?(() { final guardedValue = measurements; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudMlV1MeasurementResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudMlV1TrialParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'startTime': ?startTime,
      'state': ?state,
      'trialInfeasible': ?trialInfeasible,
    };
  }

  factory GetTrialResult.fromMap(Map<String, dynamic> map) {
    return GetTrialResult(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      finalMeasurement: (() { final guardedValue = map['finalMeasurement']; if (guardedValue == null) return null; return GoogleCloudMlV1MeasurementResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      infeasibleReason: (() { final guardedValue = map['infeasibleReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      measurements: (() { final guardedValue = map['measurements']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudMlV1MeasurementResponse>(guardedValue, (value) => GoogleCloudMlV1MeasurementResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudMlV1TrialParameterResponse>(guardedValue, (value) => GoogleCloudMlV1TrialParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trialInfeasible: (() { final guardedValue = map['trialInfeasible']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
