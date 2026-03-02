// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_sparksql_config_logging_config.dart';

class JobSparksqlConfig {
  /// HCFS URIs of jar files to be added to the Spark CLASSPATH.
  ///
  /// * `logging_config.driver_log_levels`- (Required) The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final pulumi.Input<List<String>>? jarFileUris;
  /// The runtime logging config of the job
  final pulumi.Input<JobSparksqlConfigLoggingConfig>? loggingConfig;
  /// A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Cloud Dataproc API may be overwritten.
  final pulumi.Input<Map<String, String>>? properties;
  /// The HCFS URI of the script that contains SQL queries.
  /// Conflicts with `query_list`
  final pulumi.Input<String>? queryFileUri;
  /// The list of SQL queries or statements to execute as part of the job.
  /// Conflicts with `query_file_uri`
  final pulumi.Input<List<String>>? queryLists;
  /// Mapping of query variable names to values (equivalent to the Spark SQL command: `SET name="value";`).
  final pulumi.Input<Map<String, String>>? scriptVariables;

  /// Creates a new [JobSparksqlConfig].
  /// [jarFileUris] HCFS URIs of jar files to be added to the Spark CLASSPATH.
  /// [loggingConfig] The runtime logging config of the job
  /// [properties] A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Cloud Dataproc API may be overwritten.
  /// [queryFileUri] The HCFS URI of the script that contains SQL queries.
  /// [queryLists] The list of SQL queries or statements to execute as part of the job.
  /// [scriptVariables] Mapping of query variable names to values (equivalent to the Spark SQL command: `SET name="value";`).
  JobSparksqlConfig({
    this.jarFileUris,
    this.loggingConfig,
    this.properties,
    this.queryFileUri,
    this.queryLists,
    this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jarFileUris': ?jarFileUris,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<JobSparksqlConfigLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryLists': ?queryLists,
      'scriptVariables': ?scriptVariables,
    };
  }

  factory JobSparksqlConfig.fromMap(Map<String, dynamic> map) {
    return JobSparksqlConfig(
      jarFileUris: map['jarFileUris'] == null ? null : ((map['jarFileUris']! as List).cast<String>()).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (JobSparksqlConfigLoggingConfig.fromMap((map['loggingConfig']! as Map).cast<String, dynamic>())).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      queryFileUri: map['queryFileUri'] == null ? null : (map['queryFileUri']! as String).input(),
      queryLists: map['queryLists'] == null ? null : ((map['queryLists']! as List).cast<String>()).input(),
      scriptVariables: map['scriptVariables'] == null ? null : ((map['scriptVariables']! as Map).cast<String, String>()).input(),
    );
  }
}

