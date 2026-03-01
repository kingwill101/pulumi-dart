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
    pulumi.Output<GoogleCloudMlV1Measurement>? finalMeasurement,
    pulumi.Output<String>? location,
    pulumi.Output<List<GoogleCloudMlV1Measurement>>? measurements,
    pulumi.Output<List<GoogleCloudMlV1TrialParameter>>? parameters,
    pulumi.Output<String>? project,
    pulumi.Output<TrialState>? state,
    required pulumi.Output<String> studyId,
  }) :
      finalMeasurement = pulumi.Input.asOptionalInput<GoogleCloudMlV1Measurement>(finalMeasurement),
      location = pulumi.Input.asOptionalInput<String>(location),
      measurements = pulumi.Input.asOptionalInput<List<GoogleCloudMlV1Measurement>>(measurements),
      parameters = pulumi.Input.asOptionalInput<List<GoogleCloudMlV1TrialParameter>>(parameters),
      project = pulumi.Input.asOptionalInput<String>(project),
      state = pulumi.Input.asOptionalInput<TrialState>(state),
      studyId = pulumi.Input.asInput<String>(studyId);

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
      finalMeasurement: map['finalMeasurement'] == null ? null : pulumi.Output.create<GoogleCloudMlV1Measurement>(GoogleCloudMlV1Measurement.fromMap((map['finalMeasurement'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      measurements: map['measurements'] == null ? null : pulumi.Output.create<List<GoogleCloudMlV1Measurement>>(pulumi.Input.decodeList<GoogleCloudMlV1Measurement>(map['measurements'], (value) => GoogleCloudMlV1Measurement.fromMap((value as Map).cast<String, dynamic>()))),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<GoogleCloudMlV1TrialParameter>>(pulumi.Input.decodeList<GoogleCloudMlV1TrialParameter>(map['parameters'], (value) => GoogleCloudMlV1TrialParameter.fromMap((value as Map).cast<String, dynamic>()))),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<TrialState>(TrialState.fromValue(map['state'] as String)),
      studyId: pulumi.Output.create<String>(map['studyId'] as String),
    );
  }
}

