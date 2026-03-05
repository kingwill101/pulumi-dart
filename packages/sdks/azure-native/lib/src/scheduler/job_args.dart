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
    required this.jobCollectionName,
    this.jobName,
    this.properties,
    required this.resourceGroupName,
  });

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
      jobCollectionName: pulumi.Input.fromValue(map['jobCollectionName'] as String),
      jobName: (() { final guardedValue = map['jobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

