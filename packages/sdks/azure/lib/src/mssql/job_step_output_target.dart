// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobStepOutputTarget {
  /// The ID of the Elastic Job Credential to use when connecting to the output destination.
  final pulumi.Input<String?>? jobCredentialId;
  /// The ID of the output database.
  final pulumi.Input<String> mssqlDatabaseId;
  /// The name of the output schema. Defaults to `dbo`.
  final pulumi.Input<String?>? schemaName;
  /// The name of the output table.
  final pulumi.Input<String> tableName;

  /// Creates a new [JobStepOutputTarget].
  /// [jobCredentialId] The ID of the Elastic Job Credential to use when connecting to the output destination.
  /// [mssqlDatabaseId] The ID of the output database.
  /// [schemaName] The name of the output schema. Defaults to `dbo`.
  /// [tableName] The name of the output table.
  const JobStepOutputTarget({
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
      jobCredentialId: (() { final guardedValue = map['jobCredentialId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mssqlDatabaseId: pulumi.Input.fromValue(map['mssqlDatabaseId'] as String),
      schemaName: (() { final guardedValue = map['schemaName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
