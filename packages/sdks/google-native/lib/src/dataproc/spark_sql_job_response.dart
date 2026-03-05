// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config_response.dart';
import 'query_list_response.dart';

/// A Dataproc job for running Apache Spark SQL (https://spark.apache.org/sql/) queries.
class SparkSqlJobResponse {
  /// Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final pulumi.Input<List<String>> jarFileUris;
  /// Optional. The runtime log config for job execution.
  final pulumi.Input<LoggingConfigResponse> loggingConfig;
  /// Optional. A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API might be overwritten.
  final pulumi.Input<Map<String, String>> properties;
  /// The HCFS URI of the script that contains SQL queries.
  final pulumi.Input<String> queryFileUri;
  /// A list of queries.
  final pulumi.Input<QueryListResponse> queryList;
  /// Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  final pulumi.Input<Map<String, String>> scriptVariables;

  /// Creates a new [SparkSqlJobResponse].
  /// [jarFileUris] Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [properties] Optional. A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API might be overwritten.
  /// [queryFileUri] The HCFS URI of the script that contains SQL queries.
  /// [queryList] A list of queries.
  /// [scriptVariables] Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  SparkSqlJobResponse({
    required this.jarFileUris,
    required this.loggingConfig,
    required this.properties,
    required this.queryFileUri,
    required this.queryList,
    required this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jarFileUris': jarFileUris,
      'loggingConfig': pulumi.Input.mapInputValue<LoggingConfigResponse, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'properties': properties,
      'queryFileUri': queryFileUri,
      'queryList': pulumi.Input.mapInputValue<QueryListResponse, Map<String, dynamic>>(queryList, (value) => value.toMap()),
      'scriptVariables': scriptVariables,
    };
  }

  factory SparkSqlJobResponse.fromMap(Map<String, dynamic> map) {
    return SparkSqlJobResponse(
      jarFileUris: pulumi.Input.fromValue((map['jarFileUris'] as List).cast<String>()),
      loggingConfig: pulumi.Input.fromValue(LoggingConfigResponse.fromMap((map['loggingConfig']! as Map).cast<String, dynamic>())),
      properties: pulumi.Input.fromValue((map['properties'] as Map).cast<String, String>()),
      queryFileUri: pulumi.Input.fromValue(map['queryFileUri'] as String),
      queryList: pulumi.Input.fromValue(QueryListResponse.fromMap((map['queryList']! as Map).cast<String, dynamic>())),
      scriptVariables: pulumi.Input.fromValue((map['scriptVariables'] as Map).cast<String, String>()),
    );
  }
}

