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
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> studyId,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      studyId = pulumi.Input.asInput<String>(studyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'studyId': studyId,
    };
  }

  factory TrialAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TrialAiplatformV1beta1Args(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      studyId: pulumi.Output.create<String>(map['studyId'] as String),
    );
  }
}

