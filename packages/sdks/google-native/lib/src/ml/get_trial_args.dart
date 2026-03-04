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
    required this.location,
    this.project,
    required this.studyId,
    required this.trialId,
  });

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
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      studyId: pulumi.Input.fromValue(map['studyId'] as String),
      trialId: pulumi.Input.fromValue(map['trialId'] as String),
    );
  }
}
