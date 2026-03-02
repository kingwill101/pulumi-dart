// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_schedule.dart';

/// {@template pulumi_sql_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_sql_job_args_doc}
class JobArgs {
  /// User-defined description of the job.
  final pulumi.Input<String>? description;
  /// The name of the job agent.
  final pulumi.Input<String> jobAgentName;
  /// The name of the job to get.
  final pulumi.Input<String>? jobName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Schedule properties of the job.
  final pulumi.Input<JobSchedule>? schedule;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [JobArgs].
  /// [description] User-defined description of the job.
  /// [jobAgentName] The name of the job agent.
  /// [jobName] The name of the job to get.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [schedule] Schedule properties of the job.
  /// [serverName] The name of the server.
  JobArgs({
    this.description,
    required this.jobAgentName,
    this.jobName,
    required this.resourceGroupName,
    this.schedule,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'jobAgentName': jobAgentName,
      'jobName': ?jobName,
      'resourceGroupName': resourceGroupName,
      'schedule': ?pulumi.Input.mapOptionalInputValue<JobSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'serverName': serverName,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      jobAgentName: (map['jobAgentName'] as String).input(),
      jobName: map['jobName'] == null ? null : (map['jobName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schedule: map['schedule'] == null ? null : (JobSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())).input(),
      serverName: (map['serverName'] as String).input(),
    );
  }
}

