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
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticSiteBuildDatabaseConnectionArgs].
  /// [databaseConnectionName] Name of the database connection.
  /// [environmentName] The stage site identifier.
  /// [name] Name of the static site
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetStaticSiteBuildDatabaseConnectionArgs({
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
      databaseConnectionName: (map['databaseConnectionName'] as String).input(),
      environmentName: (map['environmentName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

