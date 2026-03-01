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
  ServerAzureADOnlyAuthenticationArgs({
    pulumi.Output<String>? authenticationName,
    required pulumi.Output<bool> azureADOnlyAuthentication,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      authenticationName = pulumi.Input.asOptionalInput<String>(authenticationName),
      azureADOnlyAuthentication = pulumi.Input.asInput<bool>(azureADOnlyAuthentication),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

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
      authenticationName: map['authenticationName'] == null ? null : pulumi.Output.create<String>(map['authenticationName'] as String),
      azureADOnlyAuthentication: pulumi.Output.create<bool>(map['azureADOnlyAuthentication'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

