// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config.dart';
import 'query_list.dart';

/// A Dataproc job for running Apache Spark SQL (https://spark.apache.org/sql/) queries.
class SparkSqlJob {
  /// Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final List<String>? jarFileUris;
  /// Optional. The runtime log config for job execution.
  final LoggingConfig? loggingConfig;
  /// Optional. A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API might be overwritten.
  final Map<String, String>? properties;
  /// The HCFS URI of the script that contains SQL queries.
  final String? queryFileUri;
  /// A list of queries.
  final QueryList? queryList;
  /// Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  final Map<String, String>? scriptVariables;

  /// Creates a new [SparkSqlJob].
  /// [jarFileUris] Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [properties] Optional. A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API might be overwritten.
  /// [queryFileUri] The HCFS URI of the script that contains SQL queries.
  /// [queryList] A list of queries.
  /// [scriptVariables] Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  SparkSqlJob({
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
      'loggingConfig': ?loggingConfig == null ? null : loggingConfig!.toMap(),
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryList': ?queryList == null ? null : queryList!.toMap(),
      'scriptVariables': ?scriptVariables,
    };
  }

  factory SparkSqlJob.fromMap(Map<String, dynamic> map) {
    return SparkSqlJob(
      jarFileUris: map['jarFileUris'] == null ? null : (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: map['loggingConfig'] == null ? null : LoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      queryFileUri: map['queryFileUri'] == null ? null : map['queryFileUri'] as String,
      queryList: map['queryList'] == null ? null : QueryList.fromMap((map['queryList'] as Map).cast<String, dynamic>()),
      scriptVariables: map['scriptVariables'] == null ? null : (map['scriptVariables'] as Map).cast<String, String>(),
    );
  }
}

