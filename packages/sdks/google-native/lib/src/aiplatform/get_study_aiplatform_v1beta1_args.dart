// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_study_aiplatform_v1beta1_args_doc}
/// Arguments for getStudy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_study_aiplatform_v1beta1_args_doc}
class GetStudyAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> studyId;

  /// Creates a new [GetStudyAiplatformV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [studyId] Required.
  GetStudyAiplatformV1beta1Args({
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

  factory GetStudyAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetStudyAiplatformV1beta1Args(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      studyId: (map['studyId'] as String).input(),
    );
  }
}

