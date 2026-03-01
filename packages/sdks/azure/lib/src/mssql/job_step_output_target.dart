// ignore_for_file: unused_element, unnecessary_cast


class JobStepOutputTarget {
  /// The ID of the Elastic Job Credential to use when connecting to the output destination.
  final String? jobCredentialId;
  /// The ID of the output database.
  final String mssqlDatabaseId;
  /// The name of the output schema. Defaults to `dbo`.
  final String? schemaName;
  /// The name of the output table.
  final String tableName;

  /// Creates a new [JobStepOutputTarget].
  /// [jobCredentialId] The ID of the Elastic Job Credential to use when connecting to the output destination.
  /// [mssqlDatabaseId] The ID of the output database.
  /// [schemaName] The name of the output schema. Defaults to `dbo`.
  /// [tableName] The name of the output table.
  JobStepOutputTarget({
    this.jobCredentialId,
    required this.mssqlDatabaseId,
    this.schemaName,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobCredentialId': ?jobCredentialId,
      'mssqlDatabaseId': mssqlDatabaseId,
      'schemaName': ?schemaName,
      'tableName': tableName,
    };
  }

  factory JobStepOutputTarget.fromMap(Map<String, dynamic> map) {
    return JobStepOutputTarget(
      jobCredentialId: map['jobCredentialId'] == null ? null : map['jobCredentialId'] as String,
      mssqlDatabaseId: map['mssqlDatabaseId'] as String,
      schemaName: map['schemaName'] == null ? null : map['schemaName'] as String,
      tableName: map['tableName'] as String,
    );
  }
}

