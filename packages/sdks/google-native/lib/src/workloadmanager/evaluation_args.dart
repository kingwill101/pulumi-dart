// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_filter.dart';

/// {@template pulumi_workloadmanager_v1_evaluation_args_doc}
/// The set of arguments for Evaluation.
/// {@endtemplate}
/// {@macro pulumi_workloadmanager_v1_evaluation_args_doc}
class EvaluationArgs {
  /// The Cloud Storage bucket name for custom rules.
  final pulumi.Input<String>? customRulesBucket;
  /// Description of the Evaluation
  final pulumi.Input<String>? description;
  /// Required. Id of the requesting object
  final pulumi.Input<String> evaluationId;
  /// Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// annotations as key value pairs
  final pulumi.Input<ResourceFilter>? resourceFilter;
  /// the name of the rule
  final pulumi.Input<List<String>>? ruleNames;
  /// crontab format schedule for scheduled evaluation, currently only support the following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *", "0 0 */7 * *",
  final pulumi.Input<String>? schedule;

  /// Creates a new [EvaluationArgs].
  /// [customRulesBucket] The Cloud Storage bucket name for custom rules.
  /// [description] Description of the Evaluation
  /// [evaluationId] Required. Id of the requesting object
  /// [labels] Labels as key value pairs
  /// [location] Optional.
  /// [name] name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [resourceFilter] annotations as key value pairs
  /// [ruleNames] the name of the rule
  /// [schedule] crontab format schedule for scheduled evaluation, currently only support the following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *", "0 0 */7 * *",
  const EvaluationArgs({
    this.customRulesBucket,
    this.description,
    required this.evaluationId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.resourceFilter,
    this.ruleNames,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRulesBucket': ?customRulesBucket,
      'description': ?description,
      'evaluationId': evaluationId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'resourceFilter': ?pulumi.Input.mapOptionalInputValue<ResourceFilter, Map<String, dynamic>>(resourceFilter, (value) => value.toMap()),
      'ruleNames': ?ruleNames,
      'schedule': ?schedule,
    };
  }

  factory EvaluationArgs.fromMap(Map<String, dynamic> map) {
    return EvaluationArgs(
      customRulesBucket: (() { final guardedValue = map['customRulesBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationId: pulumi.Input.fromValue(map['evaluationId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceFilter: (() { final guardedValue = map['resourceFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleNames: (() { final guardedValue = map['ruleNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
