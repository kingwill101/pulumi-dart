// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1_get_note_iam_policy_args_doc}
/// Arguments for getNoteIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1_get_note_iam_policy_args_doc}
class GetNoteIamPolicyArgs {
  final pulumi.Input<String> noteId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNoteIamPolicyArgs].
  /// [noteId] Required.
  /// [project] Optional.
  const GetNoteIamPolicyArgs({
    required this.noteId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noteId': noteId,
      'project': ?project,
    };
  }

  factory GetNoteIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNoteIamPolicyArgs(
      noteId: pulumi.Input.fromValue(map['noteId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
