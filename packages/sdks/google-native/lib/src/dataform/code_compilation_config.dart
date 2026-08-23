// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configures various aspects of Dataform code compilation.
class CodeCompilationConfig {
  /// Optional. The default schema (BigQuery dataset ID) for assertions.
  final pulumi.Input<String>? assertionSchema;
  /// Optional. The suffix that should be appended to all database (Google Cloud project ID) names.
  final pulumi.Input<String>? databaseSuffix;
  /// Optional. The default database (Google Cloud project ID).
  final pulumi.Input<String>? defaultDatabase;
  /// Optional. The default BigQuery location to use. Defaults to "US". See the BigQuery docs for a full list of locations: https://cloud.google.com/bigquery/docs/locations.
  final pulumi.Input<String>? defaultLocation;
  /// Optional. The default schema (BigQuery dataset ID).
  final pulumi.Input<String>? defaultSchema;
  /// Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names.
  final pulumi.Input<String>? schemaSuffix;
  /// Optional. The prefix that should be prepended to all table names.
  final pulumi.Input<String>? tablePrefix;
  /// Optional. User-defined variables that are made available to project code during compilation.
  final pulumi.Input<Map<String, String>>? vars;

  /// Creates a new [CodeCompilationConfig].
  /// [assertionSchema] Optional. The default schema (BigQuery dataset ID) for assertions.
  /// [databaseSuffix] Optional. The suffix that should be appended to all database (Google Cloud project ID) names.
  /// [defaultDatabase] Optional. The default database (Google Cloud project ID).
  /// [defaultLocation] Optional. The default BigQuery location to use. Defaults to "US". See the BigQuery docs for a full list of locations: https://cloud.google.com/bigquery/docs/locations.
  /// [defaultSchema] Optional. The default schema (BigQuery dataset ID).
  /// [schemaSuffix] Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names.
  /// [tablePrefix] Optional. The prefix that should be prepended to all table names.
  /// [vars] Optional. User-defined variables that are made available to project code during compilation.
  const CodeCompilationConfig({
    this.assertionSchema,
    this.databaseSuffix,
    this.defaultDatabase,
    this.defaultLocation,
    this.defaultSchema,
    this.schemaSuffix,
    this.tablePrefix,
    this.vars,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertionSchema': ?assertionSchema,
      'databaseSuffix': ?databaseSuffix,
      'defaultDatabase': ?defaultDatabase,
      'defaultLocation': ?defaultLocation,
      'defaultSchema': ?defaultSchema,
      'schemaSuffix': ?schemaSuffix,
      'tablePrefix': ?tablePrefix,
      'vars': ?vars,
    };
  }

  factory CodeCompilationConfig.fromMap(Map<String, dynamic> map) {
    return CodeCompilationConfig(
      assertionSchema: (() { final guardedValue = map['assertionSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseSuffix: (() { final guardedValue = map['databaseSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultDatabase: (() { final guardedValue = map['defaultDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultLocation: (() { final guardedValue = map['defaultLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultSchema: (() { final guardedValue = map['defaultSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaSuffix: (() { final guardedValue = map['schemaSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tablePrefix: (() { final guardedValue = map['tablePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vars: (() { final guardedValue = map['vars']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
