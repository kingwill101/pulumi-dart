// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_job_spark_sql_job_logging_config.dart';
import 'workflow_template_job_spark_sql_job_query_list.dart';

class WorkflowTemplateJobSparkSqlJob {
  /// HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final pulumi.Input<List<String>>? jarFileUris;
  /// The runtime log config for job execution.
  final pulumi.Input<WorkflowTemplateJobSparkSqlJobLoggingConfig>? loggingConfig;
  /// A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API may be overwritten.
  final pulumi.Input<Map<String, String>>? properties;
  /// The HCFS URI of the script that contains SQL queries.
  final pulumi.Input<String>? queryFileUri;
  /// A list of queries.
  final pulumi.Input<WorkflowTemplateJobSparkSqlJobQueryList>? queryList;
  /// Mapping of query variable names to values (equivalent to the Spark SQL command: SET `name="value";`).
  final pulumi.Input<Map<String, String>>? scriptVariables;

  /// Creates a new [WorkflowTemplateJobSparkSqlJob].
  /// [jarFileUris] HCFS URIs of jar files to be added to the Spark CLASSPATH.
  /// [loggingConfig] The runtime log config for job execution.
  /// [properties] A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API may be overwritten.
  /// [queryFileUri] The HCFS URI of the script that contains SQL queries.
  /// [queryList] A list of queries.
  /// [scriptVariables] Mapping of query variable names to values (equivalent to the Spark SQL command: SET `name="value";`).
  WorkflowTemplateJobSparkSqlJob({
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
      jarFileUris: map['jarFileUris'] == null ? null : ((map['jarFileUris']! as List).cast<String>()).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (WorkflowTemplateJobSparkSqlJobLoggingConfig.fromMap((map['loggingConfig']! as Map).cast<String, dynamic>())).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      queryFileUri: map['queryFileUri'] == null ? null : (map['queryFileUri']! as String).input(),
      queryList: map['queryList'] == null ? null : (WorkflowTemplateJobSparkSqlJobQueryList.fromMap((map['queryList']! as Map).cast<String, dynamic>())).input(),
      scriptVariables: map['scriptVariables'] == null ? null : ((map['scriptVariables']! as Map).cast<String, String>()).input(),
    );
  }
}

