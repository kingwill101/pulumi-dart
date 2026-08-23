// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_job_hadoop_job.dart';
import 'workflow_template_job_hive_job.dart';
import 'workflow_template_job_pig_job.dart';
import 'workflow_template_job_presto_job.dart';
import 'workflow_template_job_pyspark_job.dart';
import 'workflow_template_job_scheduling.dart';
import 'workflow_template_job_spark_job.dart';
import 'workflow_template_job_spark_rjob.dart';
import 'workflow_template_job_spark_sql_job.dart';

class WorkflowTemplateJob {
  /// Job is a Hadoop job.
  final pulumi.Input<WorkflowTemplateJobHadoopJob>? hadoopJob;
  /// Job is a Hive job.
  final pulumi.Input<WorkflowTemplateJobHiveJob>? hiveJob;
  /// The labels to associate with this job. Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: {0,63} No more than 32 labels can be associated with a given job.
  final pulumi.Input<Map<String, String>>? labels;
  /// Job is a Pig job.
  final pulumi.Input<WorkflowTemplateJobPigJob>? pigJob;
  /// The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  final pulumi.Input<List<String>>? prerequisiteStepIds;
  /// Job is a Presto job.
  final pulumi.Input<WorkflowTemplateJobPrestoJob>? prestoJob;
  /// Job is a PySpark job.
  final pulumi.Input<WorkflowTemplateJobPysparkJob>? pysparkJob;
  /// Job scheduling configuration.
  final pulumi.Input<WorkflowTemplateJobScheduling>? scheduling;
  /// Job is a Spark job.
  final pulumi.Input<WorkflowTemplateJobSparkJob>? sparkJob;
  /// Job is a SparkR job.
  final pulumi.Input<WorkflowTemplateJobSparkRJob>? sparkRJob;
  /// Job is a SparkSql job.
  final pulumi.Input<WorkflowTemplateJobSparkSqlJob>? sparkSqlJob;
  /// Required. The step id. The id must be unique among all jobs within the template. The step id is used as prefix for job id, as job `goog-dataproc-workflow-step-id` label, and in field from other steps. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final pulumi.Input<String> stepId;

  /// Creates a new [WorkflowTemplateJob].
  /// [hadoopJob] Job is a Hadoop job.
  /// [hiveJob] Job is a Hive job.
  /// [labels] The labels to associate with this job. Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: {0,63} No more than 32 labels can be associated with a given job.
  /// [pigJob] Job is a Pig job.
  /// [prerequisiteStepIds] The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  /// [prestoJob] Job is a Presto job.
  /// [pysparkJob] Job is a PySpark job.
  /// [scheduling] Job scheduling configuration.
  /// [sparkJob] Job is a Spark job.
  /// [sparkRJob] Job is a SparkR job.
  /// [sparkSqlJob] Job is a SparkSql job.
  /// [stepId] Required. The step id. The id must be unique among all jobs within the template. The step id is used as prefix for job id, as job `goog-dataproc-workflow-step-id` label, and in field from other steps. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  const WorkflowTemplateJob({
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
      'hadoopJob': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateJobHadoopJob, Map<String, dynamic>>(hadoopJob, (value) => value.toMap()),
      'hiveJob': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateJobHiveJob, Map<String, dynamic>>(hiveJob, (value) => value.toMap()),
      'labels': ?labels,
      'pigJob': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateJobPigJob, Map<String, dynamic>>(pigJob, (value) => value.toMap()),
      'prerequisiteStepIds': ?prerequisiteStepIds,
      'prestoJob': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateJobPrestoJob, Map<String, dynamic>>(prestoJob, (value) => value.toMap()),
      'pysparkJob': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateJobPysparkJob, Map<String, dynamic>>(pysparkJob, (value) => value.toMap()),
      'scheduling': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateJobScheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'sparkJob': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateJobSparkJob, Map<String, dynamic>>(sparkJob, (value) => value.toMap()),
      'sparkRJob': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateJobSparkRJob, Map<String, dynamic>>(sparkRJob, (value) => value.toMap()),
      'sparkSqlJob': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateJobSparkSqlJob, Map<String, dynamic>>(sparkSqlJob, (value) => value.toMap()),
      'stepId': stepId,
    };
  }

  factory WorkflowTemplateJob.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJob(
      hadoopJob: (() { final guardedValue = map['hadoopJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateJobHadoopJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hiveJob: (() { final guardedValue = map['hiveJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateJobHiveJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pigJob: (() { final guardedValue = map['pigJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateJobPigJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prerequisiteStepIds: (() { final guardedValue = map['prerequisiteStepIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      prestoJob: (() { final guardedValue = map['prestoJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateJobPrestoJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pysparkJob: (() { final guardedValue = map['pysparkJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateJobPysparkJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduling: (() { final guardedValue = map['scheduling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateJobScheduling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkJob: (() { final guardedValue = map['sparkJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateJobSparkJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkRJob: (() { final guardedValue = map['sparkRJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateJobSparkRJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkSqlJob: (() { final guardedValue = map['sparkSqlJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateJobSparkSqlJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stepId: pulumi.Input.fromValue(map['stepId'] as String),
    );
  }
}
