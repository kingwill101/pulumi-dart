// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_study_args_doc}
/// Arguments for getStudy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_study_args_doc}
class GetStudyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> studyId;

  /// Creates a new [GetStudyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [studyId] Required.
  GetStudyArgs({
    required this.location,
    this.project,
    required this.studyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'studyId': studyId,
    };
  }

  factory GetStudyArgs.fromMap(Map<String, dynamic> map) {
    return GetStudyArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      studyId: pulumi.Input.fromValue(map['studyId'] as String),
    );
  }
}

