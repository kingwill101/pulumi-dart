// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1beta1_get_note_iam_policy_containeranalysis_v1beta1_args_doc}
/// Arguments for getNoteIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1beta1_get_note_iam_policy_containeranalysis_v1beta1_args_doc}
class GetNoteIamPolicyContaineranalysisV1beta1Args {
  final pulumi.Input<String> noteId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNoteIamPolicyContaineranalysisV1beta1Args].
  /// [noteId] Required.
  /// [project] Optional.
  const GetNoteIamPolicyContaineranalysisV1beta1Args({
    required this.noteId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noteId': noteId,
      'project': ?project,
    };
  }

  factory GetNoteIamPolicyContaineranalysisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetNoteIamPolicyContaineranalysisV1beta1Args(
      noteId: pulumi.Input.fromValue(map['noteId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
