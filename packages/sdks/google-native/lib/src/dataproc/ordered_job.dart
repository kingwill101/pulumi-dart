// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flink_job.dart';
import 'hadoop_job.dart';
import 'hive_job.dart';
import 'job_scheduling.dart';
import 'pig_job.dart';
import 'presto_job.dart';
import 'py_spark_job.dart';
import 'spark_job.dart';
import 'spark_rjob.dart';
import 'spark_sql_job.dart';
import 'trino_job.dart';

/// A job executed by the workflow.
class OrderedJob {
  /// Optional. Job is a Flink job.
  final pulumi.Input<FlinkJob>? flinkJob;
  /// Optional. Job is a Hadoop job.
  final pulumi.Input<HadoopJob>? hadoopJob;
  /// Optional. Job is a Hive job.
  final pulumi.Input<HiveJob>? hiveJob;
  /// Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
  final pulumi.Input<Map<String, String>>? labels;
  /// Optional. Job is a Pig job.
  final pulumi.Input<PigJob>? pigJob;
  /// Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  final pulumi.Input<List<String>>? prerequisiteStepIds;
  /// Optional. Job is a Presto job.
  final pulumi.Input<PrestoJob>? prestoJob;
  /// Optional. Job is a PySpark job.
  final pulumi.Input<PySparkJob>? pysparkJob;
  /// Optional. Job scheduling configuration.
  final pulumi.Input<JobScheduling>? scheduling;
  /// Optional. Job is a Spark job.
  final pulumi.Input<SparkJob>? sparkJob;
  /// Optional. Job is a SparkR job.
  final pulumi.Input<SparkRJob>? sparkRJob;
  /// Optional. Job is a SparkSql job.
  final pulumi.Input<SparkSqlJob>? sparkSqlJob;
  /// The step id. The id must be unique among all jobs within the template.The step id is used as prefix for job id, as job goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field from other steps.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final pulumi.Input<String> stepId;
  /// Optional. Job is a Trino job.
  final pulumi.Input<TrinoJob>? trinoJob;

  /// Creates a new [OrderedJob].
  /// [flinkJob] Optional. Job is a Flink job.
  /// [hadoopJob] Optional. Job is a Hadoop job.
  /// [hiveJob] Optional. Job is a Hive job.
  /// [labels] Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
  /// [pigJob] Optional. Job is a Pig job.
  /// [prerequisiteStepIds] Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  /// [prestoJob] Optional. Job is a Presto job.
  /// [pysparkJob] Optional. Job is a PySpark job.
  /// [scheduling] Optional. Job scheduling configuration.
  /// [sparkJob] Optional. Job is a Spark job.
  /// [sparkRJob] Optional. Job is a SparkR job.
  /// [sparkSqlJob] Optional. Job is a SparkSql job.
  /// [stepId] The step id. The id must be unique among all jobs within the template.The step id is used as prefix for job id, as job goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field from other steps.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  /// [trinoJob] Optional. Job is a Trino job.
  OrderedJob({
    this.flinkJob,
    this.hadoopJob,
    this.hiveJob,
    this.labels,
    this.pigJob,
    this.prerequisiteStepIds,
    this.prestoJob,
    this.pysparkJob,
    this.scheduling,
    this.sparkJob,
    this.sparkRJob,
    this.sparkSqlJob,
    required this.stepId,
    this.trinoJob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flinkJob': ?pulumi.Input.mapOptionalInputValue<FlinkJob, Map<String, dynamic>>(flinkJob, (value) => value.toMap()),
      'hadoopJob': ?pulumi.Input.mapOptionalInputValue<HadoopJob, Map<String, dynamic>>(hadoopJob, (value) => value.toMap()),
      'hiveJob': ?pulumi.Input.mapOptionalInputValue<HiveJob, Map<String, dynamic>>(hiveJob, (value) => value.toMap()),
      'labels': ?labels,
      'pigJob': ?pulumi.Input.mapOptionalInputValue<PigJob, Map<String, dynamic>>(pigJob, (value) => value.toMap()),
      'prerequisiteStepIds': ?prerequisiteStepIds,
      'prestoJob': ?pulumi.Input.mapOptionalInputValue<PrestoJob, Map<String, dynamic>>(prestoJob, (value) => value.toMap()),
      'pysparkJob': ?pulumi.Input.mapOptionalInputValue<PySparkJob, Map<String, dynamic>>(pysparkJob, (value) => value.toMap()),
      'scheduling': ?pulumi.Input.mapOptionalInputValue<JobScheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'sparkJob': ?pulumi.Input.mapOptionalInputValue<SparkJob, Map<String, dynamic>>(sparkJob, (value) => value.toMap()),
      'sparkRJob': ?pulumi.Input.mapOptionalInputValue<SparkRJob, Map<String, dynamic>>(sparkRJob, (value) => value.toMap()),
      'sparkSqlJob': ?pulumi.Input.mapOptionalInputValue<SparkSqlJob, Map<String, dynamic>>(sparkSqlJob, (value) => value.toMap()),
      'stepId': stepId,
      'trinoJob': ?pulumi.Input.mapOptionalInputValue<TrinoJob, Map<String, dynamic>>(trinoJob, (value) => value.toMap()),
    };
  }

  factory OrderedJob.fromMap(Map<String, dynamic> map) {
    return OrderedJob(
      flinkJob: map['flinkJob'] == null ? null : (FlinkJob.fromMap((map['flinkJob'] as Map).cast<String, dynamic>())).input(),
      hadoopJob: map['hadoopJob'] == null ? null : (HadoopJob.fromMap((map['hadoopJob'] as Map).cast<String, dynamic>())).input(),
      hiveJob: map['hiveJob'] == null ? null : (HiveJob.fromMap((map['hiveJob'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      pigJob: map['pigJob'] == null ? null : (PigJob.fromMap((map['pigJob'] as Map).cast<String, dynamic>())).input(),
      prerequisiteStepIds: map['prerequisiteStepIds'] == null ? null : ((map['prerequisiteStepIds'] as List).cast<String>()).input(),
      prestoJob: map['prestoJob'] == null ? null : (PrestoJob.fromMap((map['prestoJob'] as Map).cast<String, dynamic>())).input(),
      pysparkJob: map['pysparkJob'] == null ? null : (PySparkJob.fromMap((map['pysparkJob'] as Map).cast<String, dynamic>())).input(),
      scheduling: map['scheduling'] == null ? null : (JobScheduling.fromMap((map['scheduling'] as Map).cast<String, dynamic>())).input(),
      sparkJob: map['sparkJob'] == null ? null : (SparkJob.fromMap((map['sparkJob'] as Map).cast<String, dynamic>())).input(),
      sparkRJob: map['sparkRJob'] == null ? null : (SparkRJob.fromMap((map['sparkRJob'] as Map).cast<String, dynamic>())).input(),
      sparkSqlJob: map['sparkSqlJob'] == null ? null : (SparkSqlJob.fromMap((map['sparkSqlJob'] as Map).cast<String, dynamic>())).input(),
      stepId: (map['stepId'] as String).input(),
      trinoJob: map['trinoJob'] == null ? null : (TrinoJob.fromMap((map['trinoJob'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

