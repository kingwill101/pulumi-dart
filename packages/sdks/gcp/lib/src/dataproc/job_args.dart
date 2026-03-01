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

  /// Creates a new [JobArgs].
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
  JobArgs({
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<JobHadoopConfig>? hadoopConfig,
    pulumi.Output<JobHiveConfig>? hiveConfig,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<JobPigConfig>? pigConfig,
    required pulumi.Output<JobPlacement> placement,
    pulumi.Output<JobPrestoConfig>? prestoConfig,
    pulumi.Output<String>? project,
    pulumi.Output<JobPysparkConfig>? pysparkConfig,
    pulumi.Output<JobReference>? reference,
    pulumi.Output<String>? region,
    pulumi.Output<JobScheduling>? scheduling,
    pulumi.Output<JobSparkConfig>? sparkConfig,
    pulumi.Output<JobSparksqlConfig>? sparksqlConfig,
  }) :
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      hadoopConfig = pulumi.Input.asOptionalInput<JobHadoopConfig>(hadoopConfig),
      hiveConfig = pulumi.Input.asOptionalInput<JobHiveConfig>(hiveConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      pigConfig = pulumi.Input.asOptionalInput<JobPigConfig>(pigConfig),
      placement = pulumi.Input.asInput<JobPlacement>(placement),
      prestoConfig = pulumi.Input.asOptionalInput<JobPrestoConfig>(prestoConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      pysparkConfig = pulumi.Input.asOptionalInput<JobPysparkConfig>(pysparkConfig),
      reference = pulumi.Input.asOptionalInput<JobReference>(reference),
      region = pulumi.Input.asOptionalInput<String>(region),
      scheduling = pulumi.Input.asOptionalInput<JobScheduling>(scheduling),
      sparkConfig = pulumi.Input.asOptionalInput<JobSparkConfig>(sparkConfig),
      sparksqlConfig = pulumi.Input.asOptionalInput<JobSparksqlConfig>(sparksqlConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      hadoopConfig: map['hadoopConfig'] == null ? null : pulumi.Output.create<JobHadoopConfig>(JobHadoopConfig.fromMap((map['hadoopConfig'] as Map).cast<String, dynamic>())),
      hiveConfig: map['hiveConfig'] == null ? null : pulumi.Output.create<JobHiveConfig>(JobHiveConfig.fromMap((map['hiveConfig'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      pigConfig: map['pigConfig'] == null ? null : pulumi.Output.create<JobPigConfig>(JobPigConfig.fromMap((map['pigConfig'] as Map).cast<String, dynamic>())),
      placement: pulumi.Output.create<JobPlacement>(JobPlacement.fromMap((map['placement'] as Map).cast<String, dynamic>())),
      prestoConfig: map['prestoConfig'] == null ? null : pulumi.Output.create<JobPrestoConfig>(JobPrestoConfig.fromMap((map['prestoConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pysparkConfig: map['pysparkConfig'] == null ? null : pulumi.Output.create<JobPysparkConfig>(JobPysparkConfig.fromMap((map['pysparkConfig'] as Map).cast<String, dynamic>())),
      reference: map['reference'] == null ? null : pulumi.Output.create<JobReference>(JobReference.fromMap((map['reference'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scheduling: map['scheduling'] == null ? null : pulumi.Output.create<JobScheduling>(JobScheduling.fromMap((map['scheduling'] as Map).cast<String, dynamic>())),
      sparkConfig: map['sparkConfig'] == null ? null : pulumi.Output.create<JobSparkConfig>(JobSparkConfig.fromMap((map['sparkConfig'] as Map).cast<String, dynamic>())),
      sparksqlConfig: map['sparksqlConfig'] == null ? null : pulumi.Output.create<JobSparksqlConfig>(JobSparksqlConfig.fromMap((map['sparksqlConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

