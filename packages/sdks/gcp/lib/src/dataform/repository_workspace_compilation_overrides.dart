// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryWorkspaceCompilationOverrides {
  /// The default database (Google Cloud project ID).
  final pulumi.Input<String>? defaultDatabase;
  /// The suffix that should be appended to all schema (BigQuery dataset ID) names.
  final pulumi.Input<String>? schemaSuffix;
  /// The prefix that should be prepended to all table names.
  final pulumi.Input<String>? tablePrefix;

  /// Creates a new [RepositoryWorkspaceCompilationOverrides].
  /// [defaultDatabase] The default database (Google Cloud project ID).
  /// [schemaSuffix] The suffix that should be appended to all schema (BigQuery dataset ID) names.
  /// [tablePrefix] The prefix that should be prepended to all table names.
  const RepositoryWorkspaceCompilationOverrides({
    this.defaultDatabase,
    this.schemaSuffix,
    this.tablePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDatabase': ?defaultDatabase,
      'schemaSuffix': ?schemaSuffix,
      'tablePrefix': ?tablePrefix,
    };
  }

  factory RepositoryWorkspaceCompilationOverrides.fromMap(Map<String, dynamic> map) {
    return RepositoryWorkspaceCompilationOverrides(
      defaultDatabase: (() { final guardedValue = map['defaultDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaSuffix: (() { final guardedValue = map['schemaSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tablePrefix: (() { final guardedValue = map['tablePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
