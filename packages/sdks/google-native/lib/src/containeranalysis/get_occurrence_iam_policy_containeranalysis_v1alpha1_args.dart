// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1alpha1_get_occurrence_iam_policy_containeranalysis_v1alpha1_args_doc}
/// Arguments for getOccurrenceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1alpha1_get_occurrence_iam_policy_containeranalysis_v1alpha1_args_doc}
class GetOccurrenceIamPolicyContaineranalysisV1alpha1Args {
  final pulumi.Input<String> occurrenceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetOccurrenceIamPolicyContaineranalysisV1alpha1Args].
  /// [occurrenceId] Required.
  /// [project] Optional.
  GetOccurrenceIamPolicyContaineranalysisV1alpha1Args({
    required pulumi.Output<String> occurrenceId,
    pulumi.Output<String>? project,
  }) :
      occurrenceId = pulumi.Input.asInput<String>(occurrenceId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'occurrenceId': occurrenceId,
      'project': ?project,
    };
  }

  factory GetOccurrenceIamPolicyContaineranalysisV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceIamPolicyContaineranalysisV1alpha1Args(
      occurrenceId: pulumi.Output.create<String>(map['occurrenceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

