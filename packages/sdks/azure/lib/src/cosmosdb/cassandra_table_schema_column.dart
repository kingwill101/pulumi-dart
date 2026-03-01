// ignore_for_file: unused_element, unnecessary_cast


class CassandraTableSchemaColumn {
  /// Name of the column to be created.
  final String name;
  /// Type of the column to be created.
  final String type;

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
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

