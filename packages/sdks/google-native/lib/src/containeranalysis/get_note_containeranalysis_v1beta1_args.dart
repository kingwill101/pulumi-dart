// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1beta1_get_note_containeranalysis_v1beta1_args_doc}
/// Arguments for getNote.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1beta1_get_note_containeranalysis_v1beta1_args_doc}
class GetNoteContaineranalysisV1beta1Args {
  final pulumi.Input<String> noteId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNoteContaineranalysisV1beta1Args].
  /// [noteId] Required.
  /// [project] Optional.
  GetNoteContaineranalysisV1beta1Args({
    required this.noteId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noteId': noteId,
      'project': ?project,
    };
  }

  factory GetNoteContaineranalysisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetNoteContaineranalysisV1beta1Args(
      noteId: (map['noteId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

