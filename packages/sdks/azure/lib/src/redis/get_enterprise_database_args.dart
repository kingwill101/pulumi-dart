// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_enterprise_database_get_enterprise_database_args_doc}
/// Arguments for getEnterpriseDatabase.
/// {@endtemplate}
/// {@macro pulumi_redis_get_enterprise_database_get_enterprise_database_args_doc}
class GetEnterpriseDatabaseArgs {
  /// The resource ID of Redis Enterprise Cluster which hosts the Redis Enterprise Database instance.
  final pulumi.Input<String> clusterId;
  /// The name of the Redis Enterprise Database.
  final pulumi.Input<String> name;

  /// Creates a new [GetEnterpriseDatabaseArgs].
  /// [clusterId] The resource ID of Redis Enterprise Cluster which hosts the Redis Enterprise Database instance.
  /// [name] The name of the Redis Enterprise Database.
  GetEnterpriseDatabaseArgs({
    required this.clusterId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'name': name,
    };
  }

  factory GetEnterpriseDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseDatabaseArgs(
      clusterId: (map['clusterId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

