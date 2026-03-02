// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_get_elastic_pool_get_elastic_pool_args_doc}
/// Arguments for getElasticPool.
/// {@endtemplate}
/// {@macro pulumi_mssql_get_elastic_pool_get_elastic_pool_args_doc}
class GetElasticPoolArgs {
  /// The name of the elastic pool.
  final pulumi.Input<String> name;
  /// The name of the resource group which contains the elastic pool.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the SQL Server which contains the elastic pool.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetElasticPoolArgs].
  /// [name] The name of the elastic pool.
  /// [resourceGroupName] The name of the resource group which contains the elastic pool.
  /// [serverName] The name of the SQL Server which contains the elastic pool.
  GetElasticPoolArgs({
    required this.name,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetElasticPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticPoolArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
    );
  }
}

