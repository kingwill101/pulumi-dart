// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_ml_v1_study_config_response.dart';

/// Result data returned by getStudy.
class GetStudyResult {
  /// Time at which the study was created.
  final String? createTime;
  /// A human readable reason why the Study is inactive. This should be empty if a study is ACTIVE or COMPLETED.
  final String? inactiveReason;
  /// The name of a study.
  final String? name;
  /// The detailed state of a study.
  final String? state;
  /// Configuration of the study.
  final GoogleCloudMlV1StudyConfigResponse? studyConfig;

  /// Creates a new [GetStudyResult].
  /// [createTime] Time at which the study was created.
  /// [inactiveReason] A human readable reason why the Study is inactive. This should be empty if a study is ACTIVE or COMPLETED.
  /// [name] The name of a study.
  /// [state] The detailed state of a study.
  /// [studyConfig] Configuration of the study.
  const GetStudyResult({
    this.createTime,
    this.inactiveReason,
    this.name,
    this.state,
    this.studyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'inactiveReason': ?inactiveReason,
      'name': ?name,
      'state': ?state,
      'studyConfig': ?studyConfig?.toMap(),
    };
  }

  factory GetStudyResult.fromMap(Map<String, dynamic> map) {
    return GetStudyResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inactiveReason: (() { final guardedValue = map['inactiveReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      studyConfig: (() { final guardedValue = map['studyConfig']; if (guardedValue == null) return null; return GoogleCloudMlV1StudyConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
