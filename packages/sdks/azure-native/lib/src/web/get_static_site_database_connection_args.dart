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
  GetStaticSiteDatabaseConnectionArgs({
    required pulumi.Output<String> databaseConnectionName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      databaseConnectionName = pulumi.Input.asInput<String>(databaseConnectionName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseConnectionName': databaseConnectionName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStaticSiteDatabaseConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteDatabaseConnectionArgs(
      databaseConnectionName: pulumi.Output.create<String>(map['databaseConnectionName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

