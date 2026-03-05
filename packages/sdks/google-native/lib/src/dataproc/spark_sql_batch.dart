// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A configuration for running Apache Spark SQL (https://spark.apache.org/sql/) queries as a batch workload.
class SparkSqlBatch {
  /// Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final pulumi.Input<List<String>>? jarFileUris;
  /// The HCFS URI of the script that contains Spark SQL queries to execute.
  final pulumi.Input<String> queryFileUri;
  /// Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  final pulumi.Input<Map<String, String>>? queryVariables;

  /// Creates a new [SparkSqlBatch].
  /// [jarFileUris] Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  /// [queryFileUri] The HCFS URI of the script that contains Spark SQL queries to execute.
  /// [queryVariables] Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  SparkSqlBatch({
    this.jarFileUris,
    required this.queryFileUri,
    this.queryVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jarFileUris': ?jarFileUris,
      'queryFileUri': queryFileUri,
      'queryVariables': ?queryVariables,
    };
  }

  factory SparkSqlBatch.fromMap(Map<String, dynamic> map) {
    return SparkSqlBatch(
      jarFileUris: (() { final guardedValue = map['jarFileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      queryFileUri: pulumi.Input.fromValue(map['queryFileUri'] as String),
      queryVariables: (() { final guardedValue = map['queryVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

