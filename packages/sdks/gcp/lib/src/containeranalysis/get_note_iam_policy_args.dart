// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_get_note_iam_policy_get_note_iam_policy_args_doc}
/// Arguments for getNoteIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_get_note_iam_policy_get_note_iam_policy_args_doc}
class GetNoteIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> note;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetNoteIamPolicyArgs].
  /// [note] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  GetNoteIamPolicyArgs({required this.note, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'note': note, 'project': ?project};
  }

  factory GetNoteIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNoteIamPolicyArgs(
      note: pulumi.Input.fromValue(map['note'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
