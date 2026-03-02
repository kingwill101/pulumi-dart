// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'driver_scheduling_config.dart';
import 'flink_job.dart';
import 'hadoop_job.dart';
import 'hive_job.dart';
import 'job_placement.dart';
import 'job_reference.dart';
import 'job_scheduling.dart';
import 'pig_job.dart';
import 'presto_job.dart';
import 'py_spark_job.dart';
import 'spark_job.dart';
import 'spark_rjob.dart';
import 'spark_sql_job.dart';
import 'trino_job.dart';

/// {@template pulumi_dataproc_v1_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_job_args_doc}
class JobArgs {
  /// Optional. Driver scheduling configuration.
  final pulumi.Input<DriverSchedulingConfig>? driverSchedulingConfig;
  /// Optional. Job is a Flink job.
  final pulumi.Input<FlinkJob>? flinkJob;
  /// Optional. Job is a Hadoop job.
  final pulumi.Input<HadoopJob>? hadoopJob;
  /// Optional. Job is a Hive job.
  final pulumi.Input<HiveJob>? hiveJob;
  /// Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  final pulumi.Input<Map<String, String>>? labels;
  /// Optional. Job is a Pig job.
  final pulumi.Input<PigJob>? pigJob;
  /// Job information, including how, when, and where to run the job.
  final pulumi.Input<JobPlacement> placement;
  /// Optional. Job is a Presto job.
  final pulumi.Input<PrestoJob>? prestoJob;
  final pulumi.Input<String>? project;
  /// Optional. Job is a PySpark job.
  final pulumi.Input<PySparkJob>? pysparkJob;
  /// Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  final pulumi.Input<JobReference>? reference;
  final pulumi.Input<String> region;
  /// Optional. A unique id used to identify the request. If the server receives two SubmitJobRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.SubmitJobRequest)s with the same id, then the second request will be ignored and the first Job created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;
  /// Optional. Job scheduling configuration.
  final pulumi.Input<JobScheduling>? scheduling;
  /// Optional. Job is a Spark job.
  final pulumi.Input<SparkJob>? sparkJob;
  /// Optional. Job is a SparkR job.
  final pulumi.Input<SparkRJob>? sparkRJob;
  /// Optional. Job is a SparkSql job.
  final pulumi.Input<SparkSqlJob>? sparkSqlJob;
  /// Optional. Job is a Trino job.
  final pulumi.Input<TrinoJob>? trinoJob;

  /// Creates a new [JobArgs].
  /// [driverSchedulingConfig] Optional. Driver scheduling configuration.
  /// [flinkJob] Optional. Job is a Flink job.
  /// [hadoopJob] Optional. Job is a Hadoop job.
  /// [hiveJob] Optional. Job is a Hive job.
  /// [labels] Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  /// [pigJob] Optional. Job is a Pig job.
  /// [placement] Job information, including how, when, and where to run the job.
  /// [prestoJob] Optional. Job is a Presto job.
  /// [project] Optional.
  /// [pysparkJob] Optional. Job is a PySpark job.
  /// [reference] Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  /// [region] Required.
  /// [requestId] Optional. A unique id used to identify the request. If the server receives two SubmitJobRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.SubmitJobRequest)s with the same id, then the second request will be ignored and the first Job created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [scheduling] Optional. Job scheduling configuration.
  /// [sparkJob] Optional. Job is a Spark job.
  /// [sparkRJob] Optional. Job is a SparkR job.
  /// [sparkSqlJob] Optional. Job is a SparkSql job.
  /// [trinoJob] Optional. Job is a Trino job.
  JobArgs({
    this.driverSchedulingConfig,
    this.flinkJob,
    this.hadoopJob,
    this.hiveJob,
    this.labels,
    this.pigJob,
    required this.placement,
    this.prestoJob,
    this.project,
    this.pysparkJob,
    this.reference,
    required this.region,
    this.requestId,
    this.scheduling,
    this.sparkJob,
    this.sparkRJob,
    this.sparkSqlJob,
    this.trinoJob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverSchedulingConfig': ?pulumi.Input.mapOptionalInputValue<DriverSchedulingConfig, Map<String, dynamic>>(driverSchedulingConfig, (value) => value.toMap()),
      'flinkJob': ?pulumi.Input.mapOptionalInputValue<FlinkJob, Map<String, dynamic>>(flinkJob, (value) => value.toMap()),
      'hadoopJob': ?pulumi.Input.mapOptionalInputValue<HadoopJob, Map<String, dynamic>>(hadoopJob, (value) => value.toMap()),
      'hiveJob': ?pulumi.Input.mapOptionalInputValue<HiveJob, Map<String, dynamic>>(hiveJob, (value) => value.toMap()),
      'labels': ?labels,
      'pigJob': ?pulumi.Input.mapOptionalInputValue<PigJob, Map<String, dynamic>>(pigJob, (value) => value.toMap()),
      'placement': pulumi.Input.mapInputValue<JobPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'prestoJob': ?pulumi.Input.mapOptionalInputValue<PrestoJob, Map<String, dynamic>>(prestoJob, (value) => value.toMap()),
      'project': ?project,
      'pysparkJob': ?pulumi.Input.mapOptionalInputValue<PySparkJob, Map<String, dynamic>>(pysparkJob, (value) => value.toMap()),
      'reference': ?pulumi.Input.mapOptionalInputValue<JobReference, Map<String, dynamic>>(reference, (value) => value.toMap()),
      'region': region,
      'requestId': ?requestId,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<JobScheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'sparkJob': ?pulumi.Input.mapOptionalInputValue<SparkJob, Map<String, dynamic>>(sparkJob, (value) => value.toMap()),
      'sparkRJob': ?pulumi.Input.mapOptionalInputValue<SparkRJob, Map<String, dynamic>>(sparkRJob, (value) => value.toMap()),
      'sparkSqlJob': ?pulumi.Input.mapOptionalInputValue<SparkSqlJob, Map<String, dynamic>>(sparkSqlJob, (value) => value.toMap()),
      'trinoJob': ?pulumi.Input.mapOptionalInputValue<TrinoJob, Map<String, dynamic>>(trinoJob, (value) => value.toMap()),
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      driverSchedulingConfig: map['driverSchedulingConfig'] == null ? null : (DriverSchedulingConfig.fromMap((map['driverSchedulingConfig'] as Map).cast<String, dynamic>())).input(),
      flinkJob: map['flinkJob'] == null ? null : (FlinkJob.fromMap((map['flinkJob'] as Map).cast<String, dynamic>())).input(),
      hadoopJob: map['hadoopJob'] == null ? null : (HadoopJob.fromMap((map['hadoopJob'] as Map).cast<String, dynamic>())).input(),
      hiveJob: map['hiveJob'] == null ? null : (HiveJob.fromMap((map['hiveJob'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      pigJob: map['pigJob'] == null ? null : (PigJob.fromMap((map['pigJob'] as Map).cast<String, dynamic>())).input(),
      placement: (JobPlacement.fromMap((map['placement'] as Map).cast<String, dynamic>())).input(),
      prestoJob: map['prestoJob'] == null ? null : (PrestoJob.fromMap((map['prestoJob'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pysparkJob: map['pysparkJob'] == null ? null : (PySparkJob.fromMap((map['pysparkJob'] as Map).cast<String, dynamic>())).input(),
      reference: map['reference'] == null ? null : (JobReference.fromMap((map['reference'] as Map).cast<String, dynamic>())).input(),
      region: (map['region'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      scheduling: map['scheduling'] == null ? null : (JobScheduling.fromMap((map['scheduling'] as Map).cast<String, dynamic>())).input(),
      sparkJob: map['sparkJob'] == null ? null : (SparkJob.fromMap((map['sparkJob'] as Map).cast<String, dynamic>())).input(),
      sparkRJob: map['sparkRJob'] == null ? null : (SparkRJob.fromMap((map['sparkRJob'] as Map).cast<String, dynamic>())).input(),
      sparkSqlJob: map['sparkSqlJob'] == null ? null : (SparkSqlJob.fromMap((map['sparkSqlJob'] as Map).cast<String, dynamic>())).input(),
      trinoJob: map['trinoJob'] == null ? null : (TrinoJob.fromMap((map['trinoJob'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

