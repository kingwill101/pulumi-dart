// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_database_args_doc}
/// Arguments for getDatabase.
/// {@endtemplate}
/// {@macro pulumi_sql_get_database_args_doc}
class GetDatabaseArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The child resources to include in the response.
  final pulumi.Input<String>? expand;
  /// An OData filter expression that filters elements in the collection.
  final pulumi.Input<String>? filter;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetDatabaseArgs].
  /// [databaseName] The name of the database.
  /// [expand] The child resources to include in the response.
  /// [filter] An OData filter expression that filters elements in the collection.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetDatabaseArgs({
    required this.databaseName,
    this.expand,
    this.filter,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'expand': ?expand,
      'filter': ?filter,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs(
      databaseName: (map['databaseName'] as String).input(),
      expand: map['expand'] == null ? null : (map['expand']! as String).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
    );
  }
}

