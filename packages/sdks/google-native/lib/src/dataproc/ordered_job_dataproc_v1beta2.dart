// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_job_dataproc_v1beta2.dart';
import 'hive_job_dataproc_v1beta2.dart';
import 'job_scheduling_dataproc_v1beta2.dart';
import 'pig_job_dataproc_v1beta2.dart';
import 'presto_job_dataproc_v1beta2.dart';
import 'py_spark_job_dataproc_v1beta2.dart';
import 'spark_job_dataproc_v1beta2.dart';
import 'spark_rjob_dataproc_v1beta2.dart';
import 'spark_sql_job_dataproc_v1beta2.dart';

/// A job executed by the workflow.
class OrderedJobDataprocV1beta2 {
  /// Optional. Job is a Hadoop job.
  final pulumi.Input<HadoopJobDataprocV1beta2>? hadoopJob;
  /// Optional. Job is a Hive job.
  final pulumi.Input<HiveJobDataprocV1beta2>? hiveJob;
  /// Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
  final pulumi.Input<Map<String, String>>? labels;
  /// Optional. Job is a Pig job.
  final pulumi.Input<PigJobDataprocV1beta2>? pigJob;
  /// Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  final pulumi.Input<List<String>>? prerequisiteStepIds;
  /// Optional. Job is a Presto job.
  final pulumi.Input<PrestoJobDataprocV1beta2>? prestoJob;
  /// Optional. Job is a PySpark job.
  final pulumi.Input<PySparkJobDataprocV1beta2>? pysparkJob;
  /// Optional. Job scheduling configuration.
  final pulumi.Input<JobSchedulingDataprocV1beta2>? scheduling;
  /// Optional. Job is a Spark job.
  final pulumi.Input<SparkJobDataprocV1beta2>? sparkJob;
  /// Optional. Job is a SparkR job.
  final pulumi.Input<SparkRJobDataprocV1beta2>? sparkRJob;
  /// Optional. Job is a SparkSql job.
  final pulumi.Input<SparkSqlJobDataprocV1beta2>? sparkSqlJob;
  /// The step id. The id must be unique among all jobs within the template.The step id is used as prefix for job id, as job goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field from other steps.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final pulumi.Input<String> stepId;

  /// Creates a new [OrderedJobDataprocV1beta2].
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
  OrderedJobDataprocV1beta2({
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hadoopJob': ?pulumi.Input.mapOptionalInputValue<HadoopJobDataprocV1beta2, Map<String, dynamic>>(hadoopJob, (value) => value.toMap()),
      'hiveJob': ?pulumi.Input.mapOptionalInputValue<HiveJobDataprocV1beta2, Map<String, dynamic>>(hiveJob, (value) => value.toMap()),
      'labels': ?labels,
      'pigJob': ?pulumi.Input.mapOptionalInputValue<PigJobDataprocV1beta2, Map<String, dynamic>>(pigJob, (value) => value.toMap()),
      'prerequisiteStepIds': ?prerequisiteStepIds,
      'prestoJob': ?pulumi.Input.mapOptionalInputValue<PrestoJobDataprocV1beta2, Map<String, dynamic>>(prestoJob, (value) => value.toMap()),
      'pysparkJob': ?pulumi.Input.mapOptionalInputValue<PySparkJobDataprocV1beta2, Map<String, dynamic>>(pysparkJob, (value) => value.toMap()),
      'scheduling': ?pulumi.Input.mapOptionalInputValue<JobSchedulingDataprocV1beta2, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'sparkJob': ?pulumi.Input.mapOptionalInputValue<SparkJobDataprocV1beta2, Map<String, dynamic>>(sparkJob, (value) => value.toMap()),
      'sparkRJob': ?pulumi.Input.mapOptionalInputValue<SparkRJobDataprocV1beta2, Map<String, dynamic>>(sparkRJob, (value) => value.toMap()),
      'sparkSqlJob': ?pulumi.Input.mapOptionalInputValue<SparkSqlJobDataprocV1beta2, Map<String, dynamic>>(sparkSqlJob, (value) => value.toMap()),
      'stepId': stepId,
    };
  }

  factory OrderedJobDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return OrderedJobDataprocV1beta2(
      hadoopJob: (() { final guardedValue = map['hadoopJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HadoopJobDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hiveJob: (() { final guardedValue = map['hiveJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HiveJobDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pigJob: (() { final guardedValue = map['pigJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PigJobDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prerequisiteStepIds: (() { final guardedValue = map['prerequisiteStepIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      prestoJob: (() { final guardedValue = map['prestoJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrestoJobDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pysparkJob: (() { final guardedValue = map['pysparkJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PySparkJobDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduling: (() { final guardedValue = map['scheduling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobSchedulingDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkJob: (() { final guardedValue = map['sparkJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkJobDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkRJob: (() { final guardedValue = map['sparkRJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkRJobDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkSqlJob: (() { final guardedValue = map['sparkSqlJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkSqlJobDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stepId: pulumi.Input.fromValue(map['stepId'] as String),
    );
  }
}

