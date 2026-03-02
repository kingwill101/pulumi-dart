// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A configuration for running Apache Spark SQL (https://spark.apache.org/sql/) queries as a batch workload.
class SparkSqlBatchResponse {
  /// Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final pulumi.Input<List<String>> jarFileUris;
  /// The HCFS URI of the script that contains Spark SQL queries to execute.
  final pulumi.Input<String> queryFileUri;
  /// Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  final pulumi.Input<Map<String, String>> queryVariables;

  /// Creates a new [SparkSqlBatchResponse].
  /// [jarFileUris] Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  /// [queryFileUri] The HCFS URI of the script that contains Spark SQL queries to execute.
  /// [queryVariables] Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  SparkSqlBatchResponse({
    required this.jarFileUris,
    required this.queryFileUri,
    required this.queryVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jarFileUris': jarFileUris,
      'queryFileUri': queryFileUri,
      'queryVariables': queryVariables,
    };
  }

  factory SparkSqlBatchResponse.fromMap(Map<String, dynamic> map) {
    return SparkSqlBatchResponse(
      jarFileUris: ((map['jarFileUris'] as List).cast<String>()).input(),
      queryFileUri: (map['queryFileUri'] as String).input(),
      queryVariables: ((map['queryVariables'] as Map).cast<String, String>()).input(),
    );
  }
}

