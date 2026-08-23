// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_server_key_args_doc}
/// Arguments for getServerKey.
/// {@endtemplate}
/// {@macro pulumi_sql_get_server_key_args_doc}
class GetServerKeyArgs {
  /// The name of the server key to be retrieved.
  final pulumi.Input<String> keyName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetServerKeyArgs].
  /// [keyName] The name of the server key to be retrieved.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  const GetServerKeyArgs({
    required this.keyName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetServerKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetServerKeyArgs(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
