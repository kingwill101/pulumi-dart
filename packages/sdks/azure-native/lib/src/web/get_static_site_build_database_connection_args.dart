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
    required pulumi.Output<String> databaseConnectionName,
    required pulumi.Output<String> environmentName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      databaseConnectionName = pulumi.Input.asInput<String>(databaseConnectionName),
      environmentName = pulumi.Input.asInput<String>(environmentName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      databaseConnectionName: pulumi.Output.create<String>(map['databaseConnectionName'] as String),
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

