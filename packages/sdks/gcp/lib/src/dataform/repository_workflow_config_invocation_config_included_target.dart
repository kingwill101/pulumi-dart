// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryWorkflowConfigInvocationConfigIncludedTarget {
  /// The action's database (Google Cloud project ID).
  final pulumi.Input<String>? database;
  /// The action's name, within database and schema.
  final pulumi.Input<String>? name;
  /// The action's schema (BigQuery dataset ID), within database.
  final pulumi.Input<String>? schema;

  /// Creates a new [RepositoryWorkflowConfigInvocationConfigIncludedTarget].
  /// [database] The action's database (Google Cloud project ID).
  /// [name] The action's name, within database and schema.
  /// [schema] The action's schema (BigQuery dataset ID), within database.
  RepositoryWorkflowConfigInvocationConfigIncludedTarget({
    this.database,
    this.name,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'name': ?name,
      'schema': ?schema,
    };
  }

  factory RepositoryWorkflowConfigInvocationConfigIncludedTarget.fromMap(Map<String, dynamic> map) {
    return RepositoryWorkflowConfigInvocationConfigIncludedTarget(
      database: map['database'] == null ? null : (map['database'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      schema: map['schema'] == null ? null : (map['schema'] as String).input(),
    );
  }
}

