// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_trial_aiplatform_v1beta1_args_doc}
/// The set of arguments for Trial.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_trial_aiplatform_v1beta1_args_doc}
class TrialAiplatformV1beta1Args {
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> studyId;

  /// Creates a new [TrialAiplatformV1beta1Args].
  /// [location] Optional.
  /// [project] Optional.
  /// [studyId] Required.
  TrialAiplatformV1beta1Args({
    this.location,
    this.project,
    required this.studyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'studyId': studyId,
    };
  }

  factory TrialAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TrialAiplatformV1beta1Args(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      studyId: pulumi.Input.fromValue(map['studyId'] as String),
    );
  }
}
