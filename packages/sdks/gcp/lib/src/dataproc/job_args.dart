// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_hadoop_config.dart';
import 'job_hive_config.dart';
import 'job_pig_config.dart';
import 'job_placement.dart';
import 'job_presto_config.dart';
import 'job_pyspark_config.dart';
import 'job_reference.dart';
import 'job_scheduling.dart';
import 'job_spark_config.dart';
import 'job_sparksql_config.dart';

/// {@template pulumi_dataproc_job_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_dataproc_job_job_args_doc}
class JobArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// By default, you can only delete inactive jobs within
  /// Dataproc. Setting this to true, and calling destroy, will ensure that the
  /// job is first cancelled before issuing the delete.
  final pulumi.Input<bool>? forceDelete;
  /// The config of Hadoop job
  final pulumi.Input<JobHadoopConfig>? hadoopConfig;
  /// The config of hive job
  final pulumi.Input<JobHiveConfig>? hiveConfig;
  /// The list of labels (key/value pairs) to add to the job.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The config of pag job.
  final pulumi.Input<JobPigConfig>? pigConfig;
  /// The config of job placement.
  final pulumi.Input<JobPlacement> placement;
  /// The config of presto job
  final pulumi.Input<JobPrestoConfig>? prestoConfig;
  /// The project in which the `cluster` can be found and jobs
  /// subsequently run against. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The config of pySpark job.
  final pulumi.Input<JobPysparkConfig>? pysparkConfig;
  /// The reference of the job
  final pulumi.Input<JobReference>? reference;
  /// The Cloud Dataproc region. This essentially determines which clusters are available
  /// for this job to be submitted to. If not specified, defaults to `global`.
  final pulumi.Input<String>? region;
  /// Optional. Job scheduling configuration.
  final pulumi.Input<JobScheduling>? scheduling;
  /// The config of the Spark job.
  final pulumi.Input<JobSparkConfig>? sparkConfig;
  /// The config of SparkSql job
  final pulumi.Input<JobSparksqlConfig>? sparksqlConfig;
  /// If set to true, Terraform will wait for the job to reach a terminal state (`DONE`, `ERROR`, `CANCELLED`, `ATTEMPT_FAILURE`). Otherwise, Terraform will consider the job 'created' once it is in the `RUNNING` state.
  final pulumi.Input<bool>? waitForCompletion;

  /// Creates a new [JobArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [forceDelete] By default, you can only delete inactive jobs within
  /// [hadoopConfig] The config of Hadoop job
  /// [hiveConfig] The config of hive job
  /// [labels] The list of labels (key/value pairs) to add to the job.
  /// [pigConfig] The config of pag job.
  /// [placement] The config of job placement.
  /// [prestoConfig] The config of presto job
  /// [project] The project in which the `cluster` can be found and jobs
  /// [pysparkConfig] The config of pySpark job.
  /// [reference] The reference of the job
  /// [region] The Cloud Dataproc region. This essentially determines which clusters are available
  /// [scheduling] Optional. Job scheduling configuration.
  /// [sparkConfig] The config of the Spark job.
  /// [sparksqlConfig] The config of SparkSql job
  /// [waitForCompletion] If set to true, Terraform will wait for the job to reach a terminal state (`DONE`, `ERROR`, `CANCELLED`, `ATTEMPT_FAILURE`). Otherwise, Terraform will consider the job 'created' once it is in the `RUNNING` state.
  const JobArgs({
    this.deletionPolicy,
    this.forceDelete,
    this.hadoopConfig,
    this.hiveConfig,
    this.labels,
    this.pigConfig,
    required this.placement,
    this.prestoConfig,
    this.project,
    this.pysparkConfig,
    this.reference,
    this.region,
    this.scheduling,
    this.sparkConfig,
    this.sparksqlConfig,
    this.waitForCompletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'forceDelete': ?forceDelete,
      'hadoopConfig': ?pulumi.Input.mapOptionalInputValue<JobHadoopConfig, Map<String, dynamic>>(hadoopConfig, (value) => value.toMap()),
      'hiveConfig': ?pulumi.Input.mapOptionalInputValue<JobHiveConfig, Map<String, dynamic>>(hiveConfig, (value) => value.toMap()),
      'labels': ?labels,
      'pigConfig': ?pulumi.Input.mapOptionalInputValue<JobPigConfig, Map<String, dynamic>>(pigConfig, (value) => value.toMap()),
      'placement': pulumi.Input.mapInputValue<JobPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'prestoConfig': ?pulumi.Input.mapOptionalInputValue<JobPrestoConfig, Map<String, dynamic>>(prestoConfig, (value) => value.toMap()),
      'project': ?project,
      'pysparkConfig': ?pulumi.Input.mapOptionalInputValue<JobPysparkConfig, Map<String, dynamic>>(pysparkConfig, (value) => value.toMap()),
      'reference': ?pulumi.Input.mapOptionalInputValue<JobReference, Map<String, dynamic>>(reference, (value) => value.toMap()),
      'region': ?region,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<JobScheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'sparkConfig': ?pulumi.Input.mapOptionalInputValue<JobSparkConfig, Map<String, dynamic>>(sparkConfig, (value) => value.toMap()),
      'sparksqlConfig': ?pulumi.Input.mapOptionalInputValue<JobSparksqlConfig, Map<String, dynamic>>(sparksqlConfig, (value) => value.toMap()),
      'waitForCompletion': ?waitForCompletion,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hadoopConfig: (() { final guardedValue = map['hadoopConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobHadoopConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hiveConfig: (() { final guardedValue = map['hiveConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobHiveConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pigConfig: (() { final guardedValue = map['pigConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobPigConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      placement: pulumi.Input.fromValue(JobPlacement.fromMap((map['placement']! as Map).cast<String, dynamic>())),
      prestoConfig: (() { final guardedValue = map['prestoConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobPrestoConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pysparkConfig: (() { final guardedValue = map['pysparkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobPysparkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reference: (() { final guardedValue = map['reference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduling: (() { final guardedValue = map['scheduling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobScheduling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkConfig: (() { final guardedValue = map['sparkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobSparkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparksqlConfig: (() { final guardedValue = map['sparksqlConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobSparksqlConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      waitForCompletion: (() { final guardedValue = map['waitForCompletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
