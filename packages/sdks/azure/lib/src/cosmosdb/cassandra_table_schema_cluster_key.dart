// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CassandraTableSchemaClusterKey {
  /// Name of the cluster key to be created.
  final pulumi.Input<String> name;
  /// Order of the key. Currently supported values are `Asc` and `Desc`.
  final pulumi.Input<String> orderBy;

  /// Creates a new [CassandraTableSchemaClusterKey].
  /// [name] Name of the cluster key to be created.
  /// [orderBy] Order of the key. Currently supported values are `Asc` and `Desc`.
  const CassandraTableSchemaClusterKey({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      orderBy: pulumi.Input.fromValue(map['orderBy'] as String),
    );
  }
}

