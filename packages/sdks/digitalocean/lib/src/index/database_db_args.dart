// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_db_database_db_args_doc}
/// The set of arguments for DatabaseDb.
/// {@endtemplate}
/// {@macro pulumi_index_database_db_database_db_args_doc}
class DatabaseDbArgs {
  /// The ID of the original source database cluster.
  final pulumi.Input<String> clusterId;
  /// The name for the database.
  final pulumi.Input<String>? name;

  /// Creates a new [DatabaseDbArgs].
  /// [clusterId] The ID of the original source database cluster.
  /// [name] The name for the database.
  DatabaseDbArgs({
    required this.clusterId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'name': ?name,
    };
  }

  factory DatabaseDbArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseDbArgs(
      clusterId: (map['clusterId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

