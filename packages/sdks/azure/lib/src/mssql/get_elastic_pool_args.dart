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
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetElasticPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticPoolArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

