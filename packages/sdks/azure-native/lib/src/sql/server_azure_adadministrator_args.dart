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
    pulumi.Output<String>? administratorName,
    pulumi.Output<String>? administratorType,
    required pulumi.Output<String> login,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    required pulumi.Output<String> sid,
    pulumi.Output<String>? tenantId,
  }) :
      administratorName = pulumi.Input.asOptionalInput<String>(administratorName),
      administratorType = pulumi.Input.asOptionalInput<String>(administratorType),
      login = pulumi.Input.asInput<String>(login),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      sid = pulumi.Input.asInput<String>(sid),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      administratorName: map['administratorName'] == null ? null : pulumi.Output.create<String>(map['administratorName'] as String),
      administratorType: map['administratorType'] == null ? null : pulumi.Output.create<String>(map['administratorType'] as String),
      login: pulumi.Output.create<String>(map['login'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      sid: pulumi.Output.create<String>(map['sid'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

