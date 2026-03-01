// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_properties.dart';

/// {@template pulumi_scheduler_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_scheduler_job_args_doc}
class JobArgs {
  /// The job collection name.
  final pulumi.Input<String> jobCollectionName;
  /// The job name.
  final pulumi.Input<String>? jobName;
  /// Gets or sets the job properties.
  final pulumi.Input<JobProperties>? properties;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [JobArgs].
  /// [jobCollectionName] The job collection name.
  /// [jobName] The job name.
  /// [properties] Gets or sets the job properties.
  /// [resourceGroupName] The resource group name.
  JobArgs({
    required pulumi.Output<String> jobCollectionName,
    pulumi.Output<String>? jobName,
    pulumi.Output<JobProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      jobCollectionName = pulumi.Input.asInput<String>(jobCollectionName),
      jobName = pulumi.Input.asOptionalInput<String>(jobName),
      properties = pulumi.Input.asOptionalInput<JobProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobCollectionName': jobCollectionName,
      'jobName': ?jobName,
      'properties': ?pulumi.Input.mapOptionalInputValue<JobProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      jobCollectionName: pulumi.Output.create<String>(map['jobCollectionName'] as String),
      jobName: map['jobName'] == null ? null : pulumi.Output.create<String>(map['jobName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<JobProperties>(JobProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

