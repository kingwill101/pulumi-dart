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
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFlexibleServerArgs.fromMap(Map<String, dynamic> map) {
    return GetFlexibleServerArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

