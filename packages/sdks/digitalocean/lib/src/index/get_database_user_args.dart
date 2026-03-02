// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_database_user_get_database_user_args_doc}
/// Arguments for getDatabaseUser.
/// {@endtemplate}
/// {@macro pulumi_index_get_database_user_get_database_user_args_doc}
class GetDatabaseUserArgs {
  /// The ID of the database cluster.
  final pulumi.Input<String> clusterId;
  /// The name of the database user.
  final pulumi.Input<String> name;

  /// Creates a new [GetDatabaseUserArgs].
  /// [clusterId] The ID of the database cluster.
  /// [name] The name of the database user.
  GetDatabaseUserArgs({
    required this.clusterId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'name': name,
    };
  }

  factory GetDatabaseUserArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseUserArgs(
      clusterId: (map['clusterId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

