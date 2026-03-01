// ignore_for_file: unused_element, unnecessary_cast


class BatchSparkSqlBatch {
  /// HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final List<String>? jarFileUris;
  /// The HCFS URI of the script that contains Spark SQL queries to execute.
  final String? queryFileUri;
  /// Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  final Map<String, String>? queryVariables;

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
      jarFileUris: map['jarFileUris'] == null ? null : (map['jarFileUris'] as List).cast<String>(),
      queryFileUri: map['queryFileUri'] == null ? null : map['queryFileUri'] as String,
      queryVariables: map['queryVariables'] == null ? null : (map['queryVariables'] as Map).cast<String, String>(),
    );
  }
}

