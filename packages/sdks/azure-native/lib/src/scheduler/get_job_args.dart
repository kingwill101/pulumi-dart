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
  GetJobArgs({
    required pulumi.Output<String> jobCollectionName,
    required pulumi.Output<String> jobName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      jobCollectionName = pulumi.Input.asInput<String>(jobCollectionName),
      jobName = pulumi.Input.asInput<String>(jobName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobCollectionName': jobCollectionName,
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      jobCollectionName: pulumi.Output.create<String>(map['jobCollectionName'] as String),
      jobName: pulumi.Output.create<String>(map['jobName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

