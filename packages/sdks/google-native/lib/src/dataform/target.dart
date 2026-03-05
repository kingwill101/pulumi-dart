// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an action identifier. If the action writes output, the output will be written to the referenced database object.
class Target {
  /// The action's database (Google Cloud project ID) .
  final pulumi.Input<String>? database;
  /// The action's name, within `database` and `schema`.
  final pulumi.Input<String>? name;
  /// The action's schema (BigQuery dataset ID), within `database`.
  final pulumi.Input<String>? schema;

  /// Creates a new [Target].
  /// [database] The action's database (Google Cloud project ID) .
  /// [name] The action's name, within `database` and `schema`.
  /// [schema] The action's schema (BigQuery dataset ID), within `database`.
  Target({
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

  factory Target.fromMap(Map<String, dynamic> map) {
    return Target(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

