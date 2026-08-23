// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_study_spec.dart';

/// {@template pulumi_aiplatform_v1_study_args_doc}
/// The set of arguments for Study.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_study_args_doc}
class StudyArgs {
  /// Describes the Study, default value is empty string.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Configuration of the Study.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpec> studySpec;

  /// Creates a new [StudyArgs].
  /// [displayName] Describes the Study, default value is empty string.
  /// [location] Optional.
  /// [project] Optional.
  /// [studySpec] Configuration of the Study.
  const StudyArgs({
    required this.displayName,
    this.location,
    this.project,
    required this.studySpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'location': ?location,
      'project': ?project,
      'studySpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1StudySpec, Map<String, dynamic>>(studySpec, (value) => value.toMap()),
    };
  }

  factory StudyArgs.fromMap(Map<String, dynamic> map) {
    return StudyArgs(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      studySpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1StudySpec.fromMap((map['studySpec']! as Map).cast<String, dynamic>())),
    );
  }
}
