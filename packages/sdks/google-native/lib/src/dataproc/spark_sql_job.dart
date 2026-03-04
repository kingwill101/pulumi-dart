// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config.dart';
import 'query_list.dart';

/// A Dataproc job for running Apache Spark SQL (https://spark.apache.org/sql/) queries.
class SparkSqlJob {
  /// Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final pulumi.Input<List<String>>? jarFileUris;

  /// Optional. The runtime log config for job execution.
  final pulumi.Input<LoggingConfig>? loggingConfig;

  /// Optional. A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API might be overwritten.
  final pulumi.Input<Map<String, String>>? properties;

  /// The HCFS URI of the script that contains SQL queries.
  final pulumi.Input<String>? queryFileUri;

  /// A list of queries.
  final pulumi.Input<QueryList>? queryList;

  /// Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  final pulumi.Input<Map<String, String>>? scriptVariables;

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
      'loggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            LoggingConfig,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryList':
          ?pulumi.Input.mapOptionalInputValue<QueryList, Map<String, dynamic>>(
            queryList,
            (value) => value.toMap(),
          ),
      'scriptVariables': ?scriptVariables,
    };
  }

  factory SparkSqlJob.fromMap(Map<String, dynamic> map) {
    return SparkSqlJob(
      jarFileUris: (() {
        final guardedValue = map['jarFileUris'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      loggingConfig: (() {
        final guardedValue = map['loggingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      queryFileUri: (() {
        final guardedValue = map['queryFileUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queryList: (() {
        final guardedValue = map['queryList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          QueryList.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      scriptVariables: (() {
        final guardedValue = map['scriptVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
