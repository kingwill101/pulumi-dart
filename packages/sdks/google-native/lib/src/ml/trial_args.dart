// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_measurement.dart';
import 'google_cloud_ml_v1_trial_parameter.dart';
import 'trial_state.dart';

/// {@template pulumi_ml_v1_trial_args_doc}
/// The set of arguments for Trial.
/// {@endtemplate}
/// {@macro pulumi_ml_v1_trial_args_doc}
class TrialArgs {
  /// The final measurement containing the objective value.
  final pulumi.Input<GoogleCloudMlV1Measurement>? finalMeasurement;
  final pulumi.Input<String>? location;
  /// A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_time). These are used for early stopping computations.
  final pulumi.Input<List<GoogleCloudMlV1Measurement>>? measurements;
  /// The parameters of the trial.
  final pulumi.Input<List<GoogleCloudMlV1TrialParameter>>? parameters;
  final pulumi.Input<String>? project;
  /// The detailed state of a trial.
  final pulumi.Input<TrialState>? state;
  final pulumi.Input<String> studyId;

  /// Creates a new [TrialArgs].
  /// [finalMeasurement] The final measurement containing the objective value.
  /// [location] Optional.
  /// [measurements] A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_time). These are used for early stopping computations.
  /// [parameters] The parameters of the trial.
  /// [project] Optional.
  /// [state] The detailed state of a trial.
  /// [studyId] Required.
  TrialArgs({
    this.finalMeasurement,
    this.location,
    this.measurements,
    this.parameters,
    this.project,
    this.state,
    required this.studyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finalMeasurement': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1Measurement, Map<String, dynamic>>(finalMeasurement, (value) => value.toMap()),
      'location': ?location,
      'measurements': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudMlV1Measurement>, List<Map<String, dynamic>>>(measurements, (value) => pulumi.Input.encodeList<GoogleCloudMlV1Measurement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudMlV1TrialParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudMlV1TrialParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'state': ?pulumi.Input.mapOptionalInputValue<TrialState, String>(state, (value) => value.value),
      'studyId': studyId,
    };
  }

  factory TrialArgs.fromMap(Map<String, dynamic> map) {
    return TrialArgs(
      finalMeasurement: map['finalMeasurement'] == null ? null : (GoogleCloudMlV1Measurement.fromMap((map['finalMeasurement'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      measurements: map['measurements'] == null ? null : (pulumi.Input.decodeList<GoogleCloudMlV1Measurement>(map['measurements'], (value) => GoogleCloudMlV1Measurement.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<GoogleCloudMlV1TrialParameter>(map['parameters'], (value) => GoogleCloudMlV1TrialParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      state: map['state'] == null ? null : (TrialState.fromValue(map['state'] as String)).input(),
      studyId: (map['studyId'] as String).input(),
    );
  }
}

