// ignore_for_file: unused_element, unnecessary_cast


class CassandraTableSchemaClusterKey {
  /// Name of the cluster key to be created.
  final String name;
  /// Order of the key. Currently supported values are `Asc` and `Desc`.
  final String orderBy;

  /// Creates a new [CassandraTableSchemaClusterKey].
  /// [name] Name of the cluster key to be created.
  /// [orderBy] Order of the key. Currently supported values are `Asc` and `Desc`.
  CassandraTableSchemaClusterKey({
    required this.name,
    required this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'orderBy': orderBy,
    };
  }

  factory CassandraTableSchemaClusterKey.fromMap(Map<String, dynamic> map) {
    return CassandraTableSchemaClusterKey(
      name: map['name'] as String,
      orderBy: map['orderBy'] as String,
    );
  }
}

