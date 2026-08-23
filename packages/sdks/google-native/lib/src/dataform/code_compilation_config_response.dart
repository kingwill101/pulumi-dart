// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configures various aspects of Dataform code compilation.
class CodeCompilationConfigResponse {
  /// Optional. The default schema (BigQuery dataset ID) for assertions.
  final pulumi.Input<String> assertionSchema;
  /// Optional. The suffix that should be appended to all database (Google Cloud project ID) names.
  final pulumi.Input<String> databaseSuffix;
  /// Optional. The default database (Google Cloud project ID).
  final pulumi.Input<String> defaultDatabase;
  /// Optional. The default BigQuery location to use. Defaults to "US". See the BigQuery docs for a full list of locations: https://cloud.google.com/bigquery/docs/locations.
  final pulumi.Input<String> defaultLocation;
  /// Optional. The default schema (BigQuery dataset ID).
  final pulumi.Input<String> defaultSchema;
  /// Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names.
  final pulumi.Input<String> schemaSuffix;
  /// Optional. The prefix that should be prepended to all table names.
  final pulumi.Input<String> tablePrefix;
  /// Optional. User-defined variables that are made available to project code during compilation.
  final pulumi.Input<Map<String, String>> vars;

  /// Creates a new [CodeCompilationConfigResponse].
  /// [assertionSchema] Optional. The default schema (BigQuery dataset ID) for assertions.
  /// [databaseSuffix] Optional. The suffix that should be appended to all database (Google Cloud project ID) names.
  /// [defaultDatabase] Optional. The default database (Google Cloud project ID).
  /// [defaultLocation] Optional. The default BigQuery location to use. Defaults to "US". See the BigQuery docs for a full list of locations: https://cloud.google.com/bigquery/docs/locations.
  /// [defaultSchema] Optional. The default schema (BigQuery dataset ID).
  /// [schemaSuffix] Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names.
  /// [tablePrefix] Optional. The prefix that should be prepended to all table names.
  /// [vars] Optional. User-defined variables that are made available to project code during compilation.
  const CodeCompilationConfigResponse({
    required this.assertionSchema,
    required this.databaseSuffix,
    required this.defaultDatabase,
    required this.defaultLocation,
    required this.defaultSchema,
    required this.schemaSuffix,
    required this.tablePrefix,
    required this.vars,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertionSchema': assertionSchema,
      'databaseSuffix': databaseSuffix,
      'defaultDatabase': defaultDatabase,
      'defaultLocation': defaultLocation,
      'defaultSchema': defaultSchema,
      'schemaSuffix': schemaSuffix,
      'tablePrefix': tablePrefix,
      'vars': vars,
    };
  }

  factory CodeCompilationConfigResponse.fromMap(Map<String, dynamic> map) {
    return CodeCompilationConfigResponse(
      assertionSchema: pulumi.Input.fromValue(map['assertionSchema'] as String),
      databaseSuffix: pulumi.Input.fromValue(map['databaseSuffix'] as String),
      defaultDatabase: pulumi.Input.fromValue(map['defaultDatabase'] as String),
      defaultLocation: pulumi.Input.fromValue(map['defaultLocation'] as String),
      defaultSchema: pulumi.Input.fromValue(map['defaultSchema'] as String),
      schemaSuffix: pulumi.Input.fromValue(map['schemaSuffix'] as String),
      tablePrefix: pulumi.Input.fromValue(map['tablePrefix'] as String),
      vars: pulumi.Input.fromValue((map['vars'] as Map).cast<String, String>()),
    );
  }
}
