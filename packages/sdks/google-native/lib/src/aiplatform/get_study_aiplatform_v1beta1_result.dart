// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_study_spec_response.dart';

/// Result data returned by getStudy.
class GetStudyAiplatformV1beta1Result {
  /// Time at which the study was created.
  final String? createTime;
  /// Describes the Study, default value is empty string.
  final String? displayName;
  /// A human readable reason why the Study is inactive. This should be empty if a study is ACTIVE or COMPLETED.
  final String? inactiveReason;
  /// The name of a study. The study's globally unique identifier. Format: `projects/{project}/locations/{location}/studies/{study}`
  final String? name;
  /// The detailed state of a Study.
  final String? state;
  /// Configuration of the Study.
  final GoogleCloudAiplatformV1beta1StudySpecResponse? studySpec;

  /// Creates a new [GetStudyAiplatformV1beta1Result].
  /// [createTime] Time at which the study was created.
  /// [displayName] Describes the Study, default value is empty string.
  /// [inactiveReason] A human readable reason why the Study is inactive. This should be empty if a study is ACTIVE or COMPLETED.
  /// [name] The name of a study. The study's globally unique identifier. Format: `projects/{project}/locations/{location}/studies/{study}`
  /// [state] The detailed state of a Study.
  /// [studySpec] Configuration of the Study.
  const GetStudyAiplatformV1beta1Result({
    this.createTime,
    this.displayName,
    this.inactiveReason,
    this.name,
    this.state,
    this.studySpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'inactiveReason': ?inactiveReason,
      'name': ?name,
      'state': ?state,
      'studySpec': ?studySpec?.toMap(),
    };
  }

  factory GetStudyAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetStudyAiplatformV1beta1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inactiveReason: (() { final guardedValue = map['inactiveReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      studySpec: (() { final guardedValue = map['studySpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1StudySpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
