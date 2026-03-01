// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_configuration.dart';
import 'job_reference.dart';

/// {@template pulumi_bigquery_v2_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_bigquery_v2_job_args_doc}
class JobArgs {
  /// [Required] Describes the job configuration.
  final pulumi.Input<JobConfiguration>? configuration;
  /// [Optional] Reference describing the unique-per-user name of the job.
  final pulumi.Input<JobReference>? jobReference;
  final pulumi.Input<String>? project;
  final pulumi.Input<dynamic>? source;

  /// Creates a new [JobArgs].
  /// [configuration] [Required] Describes the job configuration.
  /// [jobReference] [Optional] Reference describing the unique-per-user name of the job.
  /// [project] Optional.
  /// [source] Optional.
  JobArgs({
    pulumi.Output<JobConfiguration>? configuration,
    pulumi.Output<JobReference>? jobReference,
    pulumi.Output<String>? project,
    pulumi.Output<dynamic>? source,
  }) :
      configuration = pulumi.Input.asOptionalInput<JobConfiguration>(configuration),
      jobReference = pulumi.Input.asOptionalInput<JobReference>(jobReference),
      project = pulumi.Input.asOptionalInput<String>(project),
      source = pulumi.Input.asOptionalInput<dynamic>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<JobConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'jobReference': ?pulumi.Input.mapOptionalInputValue<JobReference, Map<String, dynamic>>(jobReference, (value) => value.toMap()),
      'project': ?project,
      'source': ?source,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      configuration: map['configuration'] == null ? null : pulumi.Output.create<JobConfiguration>(JobConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      jobReference: map['jobReference'] == null ? null : pulumi.Output.create<JobReference>(JobReference.fromMap((map['jobReference'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<dynamic>(map['source']),
    );
  }
}

