// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_postgresql_get_flexible_server_get_flexible_server_args_doc}
/// Arguments for getFlexibleServer.
/// {@endtemplate}
/// {@macro pulumi_postgresql_get_flexible_server_get_flexible_server_args_doc}
class GetFlexibleServerArgs {
  /// The name of this PostgreSQL Flexible Server.
  final pulumi.Input<String> name;

  /// The name of the Resource Group where the PostgreSQL Flexible Server exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFlexibleServerArgs].
  /// [name] The name of this PostgreSQL Flexible Server.
  /// [resourceGroupName] The name of the Resource Group where the PostgreSQL Flexible Server exists.
  GetFlexibleServerArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFlexibleServerArgs.fromMap(Map<String, dynamic> map) {
    return GetFlexibleServerArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
