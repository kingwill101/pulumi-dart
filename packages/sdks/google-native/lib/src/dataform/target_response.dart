// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an action identifier. If the action writes output, the output will be written to the referenced database object.
class TargetResponse {
  /// The action's database (Google Cloud project ID) .
  final pulumi.Input<String> database;
  /// The action's name, within `database` and `schema`.
  final pulumi.Input<String> name;
  /// The action's schema (BigQuery dataset ID), within `database`.
  final pulumi.Input<String> schema;

  /// Creates a new [TargetResponse].
  /// [database] The action's database (Google Cloud project ID) .
  /// [name] The action's name, within `database` and `schema`.
  /// [schema] The action's schema (BigQuery dataset ID), within `database`.
  TargetResponse({
    required this.database,
    required this.name,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'name': name,
      'schema': schema,
    };
  }

  factory TargetResponse.fromMap(Map<String, dynamic> map) {
    return TargetResponse(
      database: (map['database'] as String).input(),
      name: (map['name'] as String).input(),
      schema: (map['schema'] as String).input(),
    );
  }
}

