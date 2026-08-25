// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_job_spark_sql_job_logging_config.dart';
import 'workflow_template_job_spark_sql_job_query_list.dart';

class WorkflowTemplateJobSparkSqlJob {
  /// HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final pulumi.Input<List<String>?>? jarFileUris;
  /// The runtime log config for job execution.
  final pulumi.Input<WorkflowTemplateJobSparkSqlJobLoggingConfig?>? loggingConfig;
  /// A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API may be overwritten.
  final pulumi.Input<Map<String, String>?>? properties;
  /// The HCFS URI of the script that contains SQL queries.
  final pulumi.Input<String?>? queryFileUri;
  /// A list of queries.
  final pulumi.Input<WorkflowTemplateJobSparkSqlJobQueryList?>? queryList;
  /// Mapping of query variable names to values (equivalent to the Spark SQL command: SET `name="value";`).
  final pulumi.Input<Map<String, String>?>? scriptVariables;

  /// Creates a new [WorkflowTemplateJobSparkSqlJob].
  /// [jarFileUris] HCFS URIs of jar files to be added to the Spark CLASSPATH.
  /// [loggingConfig] The runtime log config for job execution.
  /// [properties] A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API may be overwritten.
  /// [queryFileUri] The HCFS URI of the script that contains SQL queries.
  /// [queryList] A list of queries.
  /// [scriptVariables] Mapping of query variable names to values (equivalent to the Spark SQL command: SET `name="value";`).
  const WorkflowTemplateJobSparkSqlJob({
    this.jarFileUris,
    this.loggingConfig,
    this.properties,
    this.queryFileUri,
    this.queryList,
    this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jarFileUris': ?jarFileUris,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateJobSparkSqlJobLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryList': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateJobSparkSqlJobQueryList, Map<String, dynamic>>(queryList, (value) => value.toMap()),
      'scriptVariables': ?scriptVariables,
    };
  }

  factory WorkflowTemplateJobSparkSqlJob.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobSparkSqlJob(
      jarFileUris: (() { final guardedValue = map['jarFileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateJobSparkSqlJobLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      queryFileUri: (() { final guardedValue = map['queryFileUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryList: (() { final guardedValue = map['queryList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateJobSparkSqlJobQueryList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scriptVariables: (() { final guardedValue = map['scriptVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
