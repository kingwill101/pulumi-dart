// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_database_replica_get_database_replica_args_doc}
/// Arguments for getDatabaseReplica.
/// {@endtemplate}
/// {@macro pulumi_index_get_database_replica_get_database_replica_args_doc}
class GetDatabaseReplicaArgs {
  /// The ID of the original source database cluster.
  final pulumi.Input<String> clusterId;
  /// The name for the database replica.
  final pulumi.Input<String> name;
  /// A list of tag names to be applied to the database replica.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [GetDatabaseReplicaArgs].
  /// [clusterId] The ID of the original source database cluster.
  /// [name] The name for the database replica.
  /// [tags] A list of tag names to be applied to the database replica.
  GetDatabaseReplicaArgs({
    required this.clusterId,
    required this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'name': name,
      'tags': ?tags,
    };
  }

  factory GetDatabaseReplicaArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseReplicaArgs(
      clusterId: (map['clusterId'] as String).input(),
      name: (map['name'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
    );
  }
}

