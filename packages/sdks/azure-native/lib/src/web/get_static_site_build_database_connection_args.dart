// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_static_site_build_database_connection_args_doc}
/// Arguments for getStaticSiteBuildDatabaseConnection.
/// {@endtemplate}
/// {@macro pulumi_web_get_static_site_build_database_connection_args_doc}
class GetStaticSiteBuildDatabaseConnectionArgs {
  /// Name of the database connection.
  final pulumi.Input<String> databaseConnectionName;
  /// The stage site identifier.
  final pulumi.Input<String> environmentName;
  /// Name of the static site
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticSiteBuildDatabaseConnectionArgs].
  /// [databaseConnectionName] Name of the database connection.
  /// [environmentName] The stage site identifier.
  /// [name] Name of the static site
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetStaticSiteBuildDatabaseConnectionArgs({
    required this.databaseConnectionName,
    required this.environmentName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseConnectionName': databaseConnectionName,
      'environmentName': environmentName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStaticSiteBuildDatabaseConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteBuildDatabaseConnectionArgs(
      databaseConnectionName: pulumi.Input.fromValue(map['databaseConnectionName'] as String),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
