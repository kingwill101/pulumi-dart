// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_server_dns_alias_args_doc}
/// The set of arguments for ServerDnsAlias.
/// {@endtemplate}
/// {@macro pulumi_sql_server_dns_alias_args_doc}
class ServerDnsAliasArgs {
  /// The name of the server dns alias.
  final pulumi.Input<String>? dnsAliasName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server that the alias is pointing to.
  final pulumi.Input<String> serverName;

  /// Creates a new [ServerDnsAliasArgs].
  /// [dnsAliasName] The name of the server dns alias.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server that the alias is pointing to.
  const ServerDnsAliasArgs({
    this.dnsAliasName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsAliasName': ?dnsAliasName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory ServerDnsAliasArgs.fromMap(Map<String, dynamic> map) {
    return ServerDnsAliasArgs(
      dnsAliasName: (() { final guardedValue = map['dnsAliasName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
