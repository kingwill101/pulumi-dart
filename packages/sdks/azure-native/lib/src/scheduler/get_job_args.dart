// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scheduler_get_job_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_scheduler_get_job_args_doc}
class GetJobArgs {
  /// The job collection name.
  final pulumi.Input<String> jobCollectionName;
  /// The job name.
  final pulumi.Input<String> jobName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetJobArgs].
  /// [jobCollectionName] The job collection name.
  /// [jobName] The job name.
  /// [resourceGroupName] The resource group name.
  const GetJobArgs({
    required this.jobCollectionName,
    required this.jobName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobCollectionName': jobCollectionName,
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      jobCollectionName: pulumi.Input.fromValue(map['jobCollectionName'] as String),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
