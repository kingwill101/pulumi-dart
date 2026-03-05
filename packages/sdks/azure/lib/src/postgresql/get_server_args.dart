// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_postgresql_get_server_get_server_args_doc}
/// Arguments for getServer.
/// {@endtemplate}
/// {@macro pulumi_postgresql_get_server_get_server_args_doc}
class GetServerArgs {
  /// The name of the PostgreSQL Server.
  final pulumi.Input<String> name;
  /// Specifies the name of the Resource Group where the PostgreSQL Server exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetServerArgs].
  /// [name] The name of the PostgreSQL Server.
  /// [resourceGroupName] Specifies the name of the Resource Group where the PostgreSQL Server exists.
  GetServerArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServerArgs.fromMap(Map<String, dynamic> map) {
    return GetServerArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

