// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mysql_get_flexible_server_get_flexible_server_args_doc}
/// Arguments for getFlexibleServer.
/// {@endtemplate}
/// {@macro pulumi_mysql_get_flexible_server_get_flexible_server_args_doc}
class GetFlexibleServerArgs {
  /// Specifies the name of the MySQL Flexible Server.
  final pulumi.Input<String> name;
  /// The name of the resource group for the MySQL Flexible Server.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFlexibleServerArgs].
  /// [name] Specifies the name of the MySQL Flexible Server.
  /// [resourceGroupName] The name of the resource group for the MySQL Flexible Server.
  GetFlexibleServerArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFlexibleServerArgs.fromMap(Map<String, dynamic> map) {
    return GetFlexibleServerArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

