// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_job_response_dataproc_v1beta2.dart';
import 'hive_job_response_dataproc_v1beta2.dart';
import 'job_scheduling_response_dataproc_v1beta2.dart';
import 'pig_job_response_dataproc_v1beta2.dart';
import 'presto_job_response_dataproc_v1beta2.dart';
import 'py_spark_job_response_dataproc_v1beta2.dart';
import 'spark_job_response_dataproc_v1beta2.dart';
import 'spark_rjob_response_dataproc_v1beta2.dart';
import 'spark_sql_job_response_dataproc_v1beta2.dart';

/// A job executed by the workflow.
class OrderedJobResponseDataprocV1beta2 {
  /// Optional. Job is a Hadoop job.
  final pulumi.Input<HadoopJobResponseDataprocV1beta2> hadoopJob;
  /// Optional. Job is a Hive job.
  final pulumi.Input<HiveJobResponseDataprocV1beta2> hiveJob;
  /// Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
  final pulumi.Input<Map<String, String>> labels;
  /// Optional. Job is a Pig job.
  final pulumi.Input<PigJobResponseDataprocV1beta2> pigJob;
  /// Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  final pulumi.Input<List<String>> prerequisiteStepIds;
  /// Optional. Job is a Presto job.
  final pulumi.Input<PrestoJobResponseDataprocV1beta2> prestoJob;
  /// Optional. Job is a PySpark job.
  final pulumi.Input<PySparkJobResponseDataprocV1beta2> pysparkJob;
  /// Optional. Job scheduling configuration.
  final pulumi.Input<JobSchedulingResponseDataprocV1beta2> scheduling;
  /// Optional. Job is a Spark job.
  final pulumi.Input<SparkJobResponseDataprocV1beta2> sparkJob;
  /// Optional. Job is a SparkR job.
  final pulumi.Input<SparkRJobResponseDataprocV1beta2> sparkRJob;
  /// Optional. Job is a SparkSql job.
  final pulumi.Input<SparkSqlJobResponseDataprocV1beta2> sparkSqlJob;
  /// The step id. The id must be unique among all jobs within the template.The step id is used as prefix for job id, as job goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field from other steps.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final pulumi.Input<String> stepId;

  /// Creates a new [OrderedJobResponseDataprocV1beta2].
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
  const OrderedJobResponseDataprocV1beta2({
    required this.hadoopJob,
    required this.hiveJob,
    required this.labels,
    required this.pigJob,
    required this.prerequisiteStepIds,
    required this.prestoJob,
    required this.pysparkJob,
    required this.scheduling,
    required this.sparkJob,
    required this.sparkRJob,
    required this.sparkSqlJob,
    required this.stepId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hadoopJob': pulumi.Input.mapInputValue<HadoopJobResponseDataprocV1beta2, Map<String, dynamic>>(hadoopJob, (value) => value.toMap()),
      'hiveJob': pulumi.Input.mapInputValue<HiveJobResponseDataprocV1beta2, Map<String, dynamic>>(hiveJob, (value) => value.toMap()),
      'labels': labels,
      'pigJob': pulumi.Input.mapInputValue<PigJobResponseDataprocV1beta2, Map<String, dynamic>>(pigJob, (value) => value.toMap()),
      'prerequisiteStepIds': prerequisiteStepIds,
      'prestoJob': pulumi.Input.mapInputValue<PrestoJobResponseDataprocV1beta2, Map<String, dynamic>>(prestoJob, (value) => value.toMap()),
      'pysparkJob': pulumi.Input.mapInputValue<PySparkJobResponseDataprocV1beta2, Map<String, dynamic>>(pysparkJob, (value) => value.toMap()),
      'scheduling': pulumi.Input.mapInputValue<JobSchedulingResponseDataprocV1beta2, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'sparkJob': pulumi.Input.mapInputValue<SparkJobResponseDataprocV1beta2, Map<String, dynamic>>(sparkJob, (value) => value.toMap()),
      'sparkRJob': pulumi.Input.mapInputValue<SparkRJobResponseDataprocV1beta2, Map<String, dynamic>>(sparkRJob, (value) => value.toMap()),
      'sparkSqlJob': pulumi.Input.mapInputValue<SparkSqlJobResponseDataprocV1beta2, Map<String, dynamic>>(sparkSqlJob, (value) => value.toMap()),
      'stepId': stepId,
    };
  }

  factory OrderedJobResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return OrderedJobResponseDataprocV1beta2(
      hadoopJob: pulumi.Input.fromValue(HadoopJobResponseDataprocV1beta2.fromMap((map['hadoopJob']! as Map).cast<String, dynamic>())),
      hiveJob: pulumi.Input.fromValue(HiveJobResponseDataprocV1beta2.fromMap((map['hiveJob']! as Map).cast<String, dynamic>())),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      pigJob: pulumi.Input.fromValue(PigJobResponseDataprocV1beta2.fromMap((map['pigJob']! as Map).cast<String, dynamic>())),
      prerequisiteStepIds: pulumi.Input.fromValue((map['prerequisiteStepIds'] as List).cast<String>()),
      prestoJob: pulumi.Input.fromValue(PrestoJobResponseDataprocV1beta2.fromMap((map['prestoJob']! as Map).cast<String, dynamic>())),
      pysparkJob: pulumi.Input.fromValue(PySparkJobResponseDataprocV1beta2.fromMap((map['pysparkJob']! as Map).cast<String, dynamic>())),
      scheduling: pulumi.Input.fromValue(JobSchedulingResponseDataprocV1beta2.fromMap((map['scheduling']! as Map).cast<String, dynamic>())),
      sparkJob: pulumi.Input.fromValue(SparkJobResponseDataprocV1beta2.fromMap((map['sparkJob']! as Map).cast<String, dynamic>())),
      sparkRJob: pulumi.Input.fromValue(SparkRJobResponseDataprocV1beta2.fromMap((map['sparkRJob']! as Map).cast<String, dynamic>())),
      sparkSqlJob: pulumi.Input.fromValue(SparkSqlJobResponseDataprocV1beta2.fromMap((map['sparkSqlJob']! as Map).cast<String, dynamic>())),
      stepId: pulumi.Input.fromValue(map['stepId'] as String),
    );
  }
}
