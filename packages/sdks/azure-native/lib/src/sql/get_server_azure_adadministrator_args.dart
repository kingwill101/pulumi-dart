// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_server_azure_adadministrator_args_doc}
/// Arguments for getServerAzureADAdministrator.
/// {@endtemplate}
/// {@macro pulumi_sql_get_server_azure_adadministrator_args_doc}
class GetServerAzureADAdministratorArgs {
  /// The name of server active directory administrator.
  final pulumi.Input<String> administratorName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetServerAzureADAdministratorArgs].
  /// [administratorName] The name of server active directory administrator.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  const GetServerAzureADAdministratorArgs({
    required this.administratorName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorName': administratorName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetServerAzureADAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return GetServerAzureADAdministratorArgs(
      administratorName: pulumi.Input.fromValue(map['administratorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
