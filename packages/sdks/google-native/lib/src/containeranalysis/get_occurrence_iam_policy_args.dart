// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1_get_occurrence_iam_policy_args_doc}
/// Arguments for getOccurrenceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1_get_occurrence_iam_policy_args_doc}
class GetOccurrenceIamPolicyArgs {
  final pulumi.Input<String> occurrenceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetOccurrenceIamPolicyArgs].
  /// [occurrenceId] Required.
  /// [project] Optional.
  GetOccurrenceIamPolicyArgs({
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

  factory GetOccurrenceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceIamPolicyArgs(
      occurrenceId: pulumi.Output.create<String>(map['occurrenceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

