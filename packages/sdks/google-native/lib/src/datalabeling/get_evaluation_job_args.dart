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
    required this.evaluationJobId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationJobId': evaluationJobId,
      'project': ?project,
    };
  }

  factory GetEvaluationJobArgs.fromMap(Map<String, dynamic> map) {
    return GetEvaluationJobArgs(
      evaluationJobId: (map['evaluationJobId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

