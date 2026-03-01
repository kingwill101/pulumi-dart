// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ml_v1_get_trial_args_doc}
/// Arguments for getTrial.
/// {@endtemplate}
/// {@macro pulumi_ml_v1_get_trial_args_doc}
class GetTrialArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> studyId;
  final pulumi.Input<String> trialId;

  /// Creates a new [GetTrialArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [studyId] Required.
  /// [trialId] Required.
  GetTrialArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> studyId,
    required pulumi.Output<String> trialId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      studyId = pulumi.Input.asInput<String>(studyId),
      trialId = pulumi.Input.asInput<String>(trialId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'studyId': studyId,
      'trialId': trialId,
    };
  }

  factory GetTrialArgs.fromMap(Map<String, dynamic> map) {
    return GetTrialArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      studyId: pulumi.Output.create<String>(map['studyId'] as String),
      trialId: pulumi.Output.create<String>(map['trialId'] as String),
    );
  }
}

