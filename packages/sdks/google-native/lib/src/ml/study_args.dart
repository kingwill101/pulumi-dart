// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_study_config.dart';

/// {@template pulumi_ml_v1_study_args_doc}
/// The set of arguments for Study.
/// {@endtemplate}
/// {@macro pulumi_ml_v1_study_args_doc}
class StudyArgs {
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Configuration of the study.
  final pulumi.Input<GoogleCloudMlV1StudyConfig> studyConfig;

  /// Required. The ID to use for the study, which will become the final component of the study's resource name.
  final pulumi.Input<String> studyId;

  /// Creates a new [StudyArgs].
  /// [location] Optional.
  /// [project] Optional.
  /// [studyConfig] Configuration of the study.
  /// [studyId] Required. The ID to use for the study, which will become the final component of the study's resource name.
  StudyArgs({
    this.location,
    this.project,
    required this.studyConfig,
    required this.studyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'studyConfig':
          pulumi.Input.mapInputValue<
            GoogleCloudMlV1StudyConfig,
            Map<String, dynamic>
          >(studyConfig, (value) => value.toMap()),
      'studyId': studyId,
    };
  }

  factory StudyArgs.fromMap(Map<String, dynamic> map) {
    return StudyArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      studyConfig: pulumi.Input.fromValue(
        GoogleCloudMlV1StudyConfig.fromMap(
          (map['studyConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      studyId: pulumi.Input.fromValue(map['studyId'] as String),
    );
  }
}
