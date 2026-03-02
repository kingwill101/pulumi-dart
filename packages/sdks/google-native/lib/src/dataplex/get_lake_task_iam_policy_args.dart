// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_lake_task_iam_policy_args_doc}
/// Arguments for getLakeTaskIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_lake_task_iam_policy_args_doc}
class GetLakeTaskIamPolicyArgs {
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taskId;

  /// Creates a new [GetLakeTaskIamPolicyArgs].
  /// [lakeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [taskId] Required.
  GetLakeTaskIamPolicyArgs({
    required this.lakeId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.taskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakeId': lakeId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'taskId': taskId,
    };
  }

  factory GetLakeTaskIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeTaskIamPolicyArgs(
      lakeId: (map['lakeId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      taskId: (map['taskId'] as String).input(),
    );
  }
}

