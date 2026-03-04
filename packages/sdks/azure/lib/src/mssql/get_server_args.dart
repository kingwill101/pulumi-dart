// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_get_server_get_server_args_doc}
/// Arguments for getServer.
/// {@endtemplate}
/// {@macro pulumi_mssql_get_server_get_server_args_doc}
class GetServerArgs {
  /// The name of this Microsoft SQL Server.
  final pulumi.Input<String> name;

  /// The name of the Resource Group where the Microsoft SQL Server exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetServerArgs].
  /// [name] The name of this Microsoft SQL Server.
  /// [resourceGroupName] The name of the Resource Group where the Microsoft SQL Server exists.
  GetServerArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServerArgs.fromMap(Map<String, dynamic> map) {
    return GetServerArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
