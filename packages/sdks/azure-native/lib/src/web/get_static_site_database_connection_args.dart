// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_static_site_database_connection_args_doc}
/// Arguments for getStaticSiteDatabaseConnection.
/// {@endtemplate}
/// {@macro pulumi_web_get_static_site_database_connection_args_doc}
class GetStaticSiteDatabaseConnectionArgs {
  /// Name of the database connection.
  final pulumi.Input<String> databaseConnectionName;
  /// Name of the static site
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticSiteDatabaseConnectionArgs].
  /// [databaseConnectionName] Name of the database connection.
  /// [name] Name of the static site
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  const GetStaticSiteDatabaseConnectionArgs({
    required this.databaseConnectionName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseConnectionName': databaseConnectionName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStaticSiteDatabaseConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteDatabaseConnectionArgs(
      databaseConnectionName: pulumi.Input.fromValue(map['databaseConnectionName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

