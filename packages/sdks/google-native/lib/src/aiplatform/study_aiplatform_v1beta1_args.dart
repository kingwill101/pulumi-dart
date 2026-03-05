// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_study_spec.dart';

/// {@template pulumi_aiplatform_v1beta1_study_aiplatform_v1beta1_args_doc}
/// The set of arguments for Study.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_study_aiplatform_v1beta1_args_doc}
class StudyAiplatformV1beta1Args {
  /// Describes the Study, default value is empty string.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Configuration of the Study.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpec> studySpec;

  /// Creates a new [StudyAiplatformV1beta1Args].
  /// [displayName] Describes the Study, default value is empty string.
  /// [location] Optional.
  /// [project] Optional.
  /// [studySpec] Configuration of the Study.
  StudyAiplatformV1beta1Args({
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
      'studySpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpec, Map<String, dynamic>>(studySpec, (value) => value.toMap()),
    };
  }

  factory StudyAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return StudyAiplatformV1beta1Args(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      studySpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpec.fromMap((map['studySpec']! as Map).cast<String, dynamic>())),
    );
  }
}

