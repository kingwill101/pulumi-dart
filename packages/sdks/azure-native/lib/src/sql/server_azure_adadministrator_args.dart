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
      administratorName: map['administratorName'] == null ? null : (map['administratorName']! as String).input(),
      administratorType: map['administratorType'] == null ? null : (map['administratorType']! as String).input(),
      login: (map['login'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      sid: (map['sid'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

