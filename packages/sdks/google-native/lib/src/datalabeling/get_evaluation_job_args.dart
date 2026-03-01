// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalabeling_v1beta1_get_evaluation_job_args_doc}
/// Arguments for getEvaluationJob.
/// {@endtemplate}
/// {@macro pulumi_datalabeling_v1beta1_get_evaluation_job_args_doc}
class GetEvaluationJobArgs {
  final pulumi.Input<String> evaluationJobId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEvaluationJobArgs].
  /// [evaluationJobId] Required.
  /// [project] Optional.
  GetEvaluationJobArgs({
    required pulumi.Output<String> evaluationJobId,
    pulumi.Output<String>? project,
  }) :
      evaluationJobId = pulumi.Input.asInput<String>(evaluationJobId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationJobId': evaluationJobId,
      'project': ?project,
    };
  }

  factory GetEvaluationJobArgs.fromMap(Map<String, dynamic> map) {
    return GetEvaluationJobArgs(
      evaluationJobId: pulumi.Output.create<String>(map['evaluationJobId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

