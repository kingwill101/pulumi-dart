// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_database_cluster_get_database_cluster_args_doc}
/// Arguments for getDatabaseCluster.
/// {@endtemplate}
/// {@macro pulumi_index_get_database_cluster_get_database_cluster_args_doc}
class GetDatabaseClusterArgs {
  /// The name of the database cluster.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [GetDatabaseClusterArgs].
  /// [name] The name of the database cluster.
  /// [tags] Optional.
  GetDatabaseClusterArgs({
    required this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tags': ?tags,
    };
  }

  factory GetDatabaseClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseClusterArgs(
      name: (map['name'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
    );
  }
}

