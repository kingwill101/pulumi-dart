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
import 'job_status.dart';

/// Input properties used for looking up and filtering Job resources.
class JobState {
  /// If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver_output_uri.
  final pulumi.Input<String>? driverControlsFilesUri;
  /// A URI pointing to the location of the stdout of the job's driver program.
  final pulumi.Input<String>? driverOutputResourceUri;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  ///
  /// * `scheduling.max_failures_per_hour` - (Required) Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  ///
  /// * `scheduling.max_failures_total` - (Required) Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  final pulumi.Input<JobPlacement>? placement;
  /// The config of presto job
  final pulumi.Input<JobPrestoConfig>? prestoConfig;
  /// The project in which the `cluster` can be found and jobs
  /// subsequently run against. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
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
  /// The status of the job.
  final pulumi.Input<List<JobStatus>>? statuses;

  /// Creates a new [JobState].
  /// [driverControlsFilesUri] If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver_output_uri.
  /// [driverOutputResourceUri] A URI pointing to the location of the stdout of the job's driver program.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [forceDelete] By default, you can only delete inactive jobs within
  /// [hadoopConfig] The config of Hadoop job
  /// [hiveConfig] The config of hive job
  /// [labels] The list of labels (key/value pairs) to add to the job.
  /// [pigConfig] The config of pag job.
  /// [placement] The config of job placement.
  /// [prestoConfig] The config of presto job
  /// [project] The project in which the `cluster` can be found and jobs
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [pysparkConfig] The config of pySpark job.
  /// [reference] The reference of the job
  /// [region] The Cloud Dataproc region. This essentially determines which clusters are available
  /// [scheduling] Optional. Job scheduling configuration.
  /// [sparkConfig] The config of the Spark job.
  /// [sparksqlConfig] The config of SparkSql job
  /// [statuses] The status of the job.
  JobState({
    this.driverControlsFilesUri,
    this.driverOutputResourceUri,
    this.effectiveLabels,
    this.forceDelete,
    this.hadoopConfig,
    this.hiveConfig,
    this.labels,
    this.pigConfig,
    this.placement,
    this.prestoConfig,
    this.project,
    this.pulumiLabels,
    this.pysparkConfig,
    this.reference,
    this.region,
    this.scheduling,
    this.sparkConfig,
    this.sparksqlConfig,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverControlsFilesUri': ?driverControlsFilesUri,
      'driverOutputResourceUri': ?driverOutputResourceUri,
      'effectiveLabels': ?effectiveLabels,
      'forceDelete': ?forceDelete,
      'hadoopConfig': ?pulumi.Input.mapOptionalInputValue<JobHadoopConfig, Map<String, dynamic>>(hadoopConfig, (value) => value.toMap()),
      'hiveConfig': ?pulumi.Input.mapOptionalInputValue<JobHiveConfig, Map<String, dynamic>>(hiveConfig, (value) => value.toMap()),
      'labels': ?labels,
      'pigConfig': ?pulumi.Input.mapOptionalInputValue<JobPigConfig, Map<String, dynamic>>(pigConfig, (value) => value.toMap()),
      'placement': ?pulumi.Input.mapOptionalInputValue<JobPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'prestoConfig': ?pulumi.Input.mapOptionalInputValue<JobPrestoConfig, Map<String, dynamic>>(prestoConfig, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'pysparkConfig': ?pulumi.Input.mapOptionalInputValue<JobPysparkConfig, Map<String, dynamic>>(pysparkConfig, (value) => value.toMap()),
      'reference': ?pulumi.Input.mapOptionalInputValue<JobReference, Map<String, dynamic>>(reference, (value) => value.toMap()),
      'region': ?region,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<JobScheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'sparkConfig': ?pulumi.Input.mapOptionalInputValue<JobSparkConfig, Map<String, dynamic>>(sparkConfig, (value) => value.toMap()),
      'sparksqlConfig': ?pulumi.Input.mapOptionalInputValue<JobSparksqlConfig, Map<String, dynamic>>(sparksqlConfig, (value) => value.toMap()),
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<JobStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<JobStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      driverControlsFilesUri: map['driverControlsFilesUri'] == null ? null : (map['driverControlsFilesUri'] as String).input(),
      driverOutputResourceUri: map['driverOutputResourceUri'] == null ? null : (map['driverOutputResourceUri'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      forceDelete: map['forceDelete'] == null ? null : (map['forceDelete'] as bool).input(),
      hadoopConfig: map['hadoopConfig'] == null ? null : (JobHadoopConfig.fromMap((map['hadoopConfig'] as Map).cast<String, dynamic>())).input(),
      hiveConfig: map['hiveConfig'] == null ? null : (JobHiveConfig.fromMap((map['hiveConfig'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      pigConfig: map['pigConfig'] == null ? null : (JobPigConfig.fromMap((map['pigConfig'] as Map).cast<String, dynamic>())).input(),
      placement: map['placement'] == null ? null : (JobPlacement.fromMap((map['placement'] as Map).cast<String, dynamic>())).input(),
      prestoConfig: map['prestoConfig'] == null ? null : (JobPrestoConfig.fromMap((map['prestoConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      pysparkConfig: map['pysparkConfig'] == null ? null : (JobPysparkConfig.fromMap((map['pysparkConfig'] as Map).cast<String, dynamic>())).input(),
      reference: map['reference'] == null ? null : (JobReference.fromMap((map['reference'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      scheduling: map['scheduling'] == null ? null : (JobScheduling.fromMap((map['scheduling'] as Map).cast<String, dynamic>())).input(),
      sparkConfig: map['sparkConfig'] == null ? null : (JobSparkConfig.fromMap((map['sparkConfig'] as Map).cast<String, dynamic>())).input(),
      sparksqlConfig: map['sparksqlConfig'] == null ? null : (JobSparksqlConfig.fromMap((map['sparksqlConfig'] as Map).cast<String, dynamic>())).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<JobStatus>(map['statuses'], (value) => JobStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

