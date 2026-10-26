// ignore_for_file: unused_element, unnecessary_cast

import 'resource_filter_response.dart';
import 'resource_status_response.dart';

/// Result data returned by getEvaluation.
class GetEvaluationResult {
  /// [Output only] Create time stamp
  final String? createTime;
  /// The Cloud Storage bucket name for custom rules.
  final String? customRulesBucket;
  /// Description of the Evaluation
  final String? description;
  /// Labels as key value pairs
  final Map<String, String>? labels;
  /// name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'
  final String? name;
  /// annotations as key value pairs
  final ResourceFilterResponse? resourceFilter;
  /// [Output only] The updated rule ids if exist.
  final ResourceStatusResponse? resourceStatus;
  /// the name of the rule
  final List<String>? ruleNames;
  /// [Output only] The updated rule ids if exist.
  final List<String>? ruleVersions;
  /// crontab format schedule for scheduled evaluation, currently only support the following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *", "0 0 */7 * *",
  final String? schedule;
  /// [Output only] Update time stamp
  final String? updateTime;

  /// Creates a new [GetEvaluationResult].
  /// [createTime] [Output only] Create time stamp
  /// [customRulesBucket] The Cloud Storage bucket name for custom rules.
  /// [description] Description of the Evaluation
  /// [labels] Labels as key value pairs
  /// [name] name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'
  /// [resourceFilter] annotations as key value pairs
  /// [resourceStatus] [Output only] The updated rule ids if exist.
  /// [ruleNames] the name of the rule
  /// [ruleVersions] [Output only] The updated rule ids if exist.
  /// [schedule] crontab format schedule for scheduled evaluation, currently only support the following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *", "0 0 */7 * *",
  /// [updateTime] [Output only] Update time stamp
  const GetEvaluationResult({
    this.createTime,
    this.customRulesBucket,
    this.description,
    this.labels,
    this.name,
    this.resourceFilter,
    this.resourceStatus,
    this.ruleNames,
    this.ruleVersions,
    this.schedule,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'customRulesBucket': ?customRulesBucket,
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'resourceFilter': ?resourceFilter?.toMap(),
      'resourceStatus': ?resourceStatus?.toMap(),
      'ruleNames': ?ruleNames,
      'ruleVersions': ?ruleVersions,
      'schedule': ?schedule,
      'updateTime': ?updateTime,
    };
  }

  factory GetEvaluationResult.fromMap(Map<String, dynamic> map) {
    return GetEvaluationResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customRulesBucket: (() { final guardedValue = map['customRulesBucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceFilter: (() { final guardedValue = map['resourceFilter']; if (guardedValue == null) return null; return ResourceFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourceStatus: (() { final guardedValue = map['resourceStatus']; if (guardedValue == null) return null; return ResourceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ruleNames: (() { final guardedValue = map['ruleNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ruleVersions: (() { final guardedValue = map['ruleVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
