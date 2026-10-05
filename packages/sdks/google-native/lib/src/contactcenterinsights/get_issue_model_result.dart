// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_issue_model_input_data_config_response.dart';
import 'google_cloud_contactcenterinsights_v1_issue_model_label_stats_response.dart';

/// Result data returned by getIssueModel.
class GetIssueModelResult {
  /// The time at which this issue model was created.
  final String? createTime;
  /// The representative name for the issue model.
  final String? displayName;
  /// Configs for the input data that used to create the issue model.
  final GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse? inputDataConfig;
  /// Number of issues in this issue model.
  final String? issueCount;
  /// Language of the model.
  final String? languageCode;
  /// Type of the model.
  final String? modelType;
  /// Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  final String? name;
  /// State of the model.
  final String? state;
  /// Immutable. The issue model's label statistics on its training data.
  final GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse? trainingStats;
  /// The most recent time at which the issue model was updated.
  final String? updateTime;

  /// Creates a new [GetIssueModelResult].
  /// [createTime] The time at which this issue model was created.
  /// [displayName] The representative name for the issue model.
  /// [inputDataConfig] Configs for the input data that used to create the issue model.
  /// [issueCount] Number of issues in this issue model.
  /// [languageCode] Language of the model.
  /// [modelType] Type of the model.
  /// [name] Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  /// [state] State of the model.
  /// [trainingStats] Immutable. The issue model's label statistics on its training data.
  /// [updateTime] The most recent time at which the issue model was updated.
  const GetIssueModelResult({
    this.createTime,
    this.displayName,
    this.inputDataConfig,
    this.issueCount,
    this.languageCode,
    this.modelType,
    this.name,
    this.state,
    this.trainingStats,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'inputDataConfig': ?inputDataConfig?.toMap(),
      'issueCount': ?issueCount,
      'languageCode': ?languageCode,
      'modelType': ?modelType,
      'name': ?name,
      'state': ?state,
      'trainingStats': ?trainingStats?.toMap(),
      'updateTime': ?updateTime,
    };
  }

  factory GetIssueModelResult.fromMap(Map<String, dynamic> map) {
    return GetIssueModelResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inputDataConfig: (() { final guardedValue = map['inputDataConfig']; if (guardedValue == null) return null; return GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      issueCount: (() { final guardedValue = map['issueCount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelType: (() { final guardedValue = map['modelType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trainingStats: (() { final guardedValue = map['trainingStats']; if (guardedValue == null) return null; return GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
