// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BatchSparkSqlBatch {
  /// HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final pulumi.Input<List<String>>? jarFileUris;
  /// The HCFS URI of the script that contains Spark SQL queries to execute.
  final pulumi.Input<String>? queryFileUri;
  /// Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  final pulumi.Input<Map<String, String>>? queryVariables;

  /// Creates a new [BatchSparkSqlBatch].
  /// [jarFileUris] HCFS URIs of jar files to be added to the Spark CLASSPATH.
  /// [queryFileUri] The HCFS URI of the script that contains Spark SQL queries to execute.
  /// [queryVariables] Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  BatchSparkSqlBatch({
    this.jarFileUris,
    this.queryFileUri,
    this.queryVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jarFileUris': ?jarFileUris,
      'queryFileUri': ?queryFileUri,
      'queryVariables': ?queryVariables,
    };
  }

  factory BatchSparkSqlBatch.fromMap(Map<String, dynamic> map) {
    return BatchSparkSqlBatch(
      jarFileUris: map['jarFileUris'] == null ? null : ((map['jarFileUris'] as List).cast<String>()).input(),
      queryFileUri: map['queryFileUri'] == null ? null : (map['queryFileUri'] as String).input(),
      queryVariables: map['queryVariables'] == null ? null : ((map['queryVariables'] as Map).cast<String, String>()).input(),
    );
  }
}

