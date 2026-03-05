// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CassandraTableSchemaColumn {
  /// Name of the column to be created.
  final pulumi.Input<String> name;
  /// Type of the column to be created.
  final pulumi.Input<String> type;

  /// Creates a new [CassandraTableSchemaColumn].
  /// [name] Name of the column to be created.
  /// [type] Type of the column to be created.
  CassandraTableSchemaColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory CassandraTableSchemaColumn.fromMap(Map<String, dynamic> map) {
    return CassandraTableSchemaColumn(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

