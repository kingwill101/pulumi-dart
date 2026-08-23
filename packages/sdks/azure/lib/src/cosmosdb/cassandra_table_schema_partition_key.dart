// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CassandraTableSchemaPartitionKey {
  /// Name of the column to partition by.
  final pulumi.Input<String> name;

  /// Creates a new [CassandraTableSchemaPartitionKey].
  /// [name] Name of the column to partition by.
  const CassandraTableSchemaPartitionKey({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory CassandraTableSchemaPartitionKey.fromMap(Map<String, dynamic> map) {
    return CassandraTableSchemaPartitionKey(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
