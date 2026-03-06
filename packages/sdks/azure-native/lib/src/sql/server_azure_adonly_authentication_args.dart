// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_server_azure_adonly_authentication_args_doc}
/// The set of arguments for ServerAzureADOnlyAuthentication.
/// {@endtemplate}
/// {@macro pulumi_sql_server_azure_adonly_authentication_args_doc}
class ServerAzureADOnlyAuthenticationArgs {
  /// The name of server azure active directory only authentication.
  final pulumi.Input<String>? authenticationName;
  /// Azure Active Directory only Authentication enabled.
  final pulumi.Input<bool> azureADOnlyAuthentication;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [ServerAzureADOnlyAuthenticationArgs].
  /// [authenticationName] The name of server azure active directory only authentication.
  /// [azureADOnlyAuthentication] Azure Active Directory only Authentication enabled.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  const ServerAzureADOnlyAuthenticationArgs({
    this.authenticationName,
    required this.azureADOnlyAuthentication,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationName': ?authenticationName,
      'azureADOnlyAuthentication': azureADOnlyAuthentication,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory ServerAzureADOnlyAuthenticationArgs.fromMap(Map<String, dynamic> map) {
    return ServerAzureADOnlyAuthenticationArgs(
      authenticationName: (() { final guardedValue = map['authenticationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureADOnlyAuthentication: pulumi.Input.fromValue(map['azureADOnlyAuthentication'] as bool),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}

