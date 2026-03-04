// ignore_for_file: unused_element, unnecessary_cast

import 'resource_filter_response.dart';
import 'resource_status_response.dart';

/// Result data returned by getEvaluation.
class GetEvaluationResult {
  /// [Output only] Create time stamp
  final String createTime;

  /// The Cloud Storage bucket name for custom rules.
  final String customRulesBucket;

  /// Description of the Evaluation
  final String description;

  /// Labels as key value pairs
  final Map<String, String> labels;

  /// name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'
  final String name;

  /// annotations as key value pairs
  final ResourceFilterResponse resourceFilter;

  /// [Output only] The updated rule ids if exist.
  final ResourceStatusResponse resourceStatus;

  /// the name of the rule
  final List<String> ruleNames;

  /// [Output only] The updated rule ids if exist.
  final List<String> ruleVersions;

  /// crontab format schedule for scheduled evaluation, currently only support the following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *", "0 0 */7 * *",
  final String schedule;

  /// [Output only] Update time stamp
  final String updateTime;

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
  GetEvaluationResult({
    required this.createTime,
    required this.customRulesBucket,
    required this.description,
    required this.labels,
    required this.name,
    required this.resourceFilter,
    required this.resourceStatus,
    required this.ruleNames,
    required this.ruleVersions,
    required this.schedule,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'customRulesBucket': customRulesBucket,
      'description': description,
      'labels': labels,
      'name': name,
      'resourceFilter': resourceFilter.toMap(),
      'resourceStatus': resourceStatus.toMap(),
      'ruleNames': ruleNames,
      'ruleVersions': ruleVersions,
      'schedule': schedule,
      'updateTime': updateTime,
    };
  }

  factory GetEvaluationResult.fromMap(Map<String, dynamic> map) {
    return GetEvaluationResult(
      createTime: map['createTime'] as String,
      customRulesBucket: map['customRulesBucket'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      resourceFilter: ResourceFilterResponse.fromMap(
        (map['resourceFilter']! as Map).cast<String, dynamic>(),
      ),
      resourceStatus: ResourceStatusResponse.fromMap(
        (map['resourceStatus']! as Map).cast<String, dynamic>(),
      ),
      ruleNames: (map['ruleNames'] as List).cast<String>(),
      ruleVersions: (map['ruleVersions'] as List).cast<String>(),
      schedule: map['schedule'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
