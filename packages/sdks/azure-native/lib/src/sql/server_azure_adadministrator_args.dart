// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_server_azure_adadministrator_args_doc}
/// The set of arguments for ServerAzureADAdministrator.
/// {@endtemplate}
/// {@macro pulumi_sql_server_azure_adadministrator_args_doc}
class ServerAzureADAdministratorArgs {
  /// The name of server active directory administrator.
  final pulumi.Input<String>? administratorName;

  /// Type of the sever administrator.
  final pulumi.Input<String>? administratorType;

  /// Login name of the server administrator.
  final pulumi.Input<String> login;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// SID (object ID) of the server administrator.
  final pulumi.Input<String> sid;

  /// Tenant ID of the administrator.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ServerAzureADAdministratorArgs].
  /// [administratorName] The name of server active directory administrator.
  /// [administratorType] Type of the sever administrator.
  /// [login] Login name of the server administrator.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [sid] SID (object ID) of the server administrator.
  /// [tenantId] Tenant ID of the administrator.
  ServerAzureADAdministratorArgs({
    this.administratorName,
    this.administratorType,
    required this.login,
    required this.resourceGroupName,
    required this.serverName,
    required this.sid,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorName': ?administratorName,
      'administratorType': ?administratorType,
      'login': login,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'sid': sid,
      'tenantId': ?tenantId,
    };
  }

  factory ServerAzureADAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return ServerAzureADAdministratorArgs(
      administratorName: (() {
        final guardedValue = map['administratorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      administratorType: (() {
        final guardedValue = map['administratorType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      login: pulumi.Input.fromValue(map['login'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      sid: pulumi.Input.fromValue(map['sid'] as String),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
