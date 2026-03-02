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
    required this.occurrenceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'occurrenceId': occurrenceId,
      'project': ?project,
    };
  }

  factory GetOccurrenceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceIamPolicyArgs(
      occurrenceId: (map['occurrenceId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

