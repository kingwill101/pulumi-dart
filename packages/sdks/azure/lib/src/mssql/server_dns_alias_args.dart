// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_server_dns_alias_server_dns_alias_args_doc}
/// The set of arguments for ServerDnsAlias.
/// {@endtemplate}
/// {@macro pulumi_mssql_server_dns_alias_server_dns_alias_args_doc}
class ServerDnsAliasArgs {
  /// The ID of the mssql server. Changing this forces a new MSSQL Server DNS Alias to be created.
  final pulumi.Input<String> mssqlServerId;
  /// The name which should be used for this MSSQL Server DNS Alias. Changing this forces a new MSSQL Server DNS Alias to be created.
  final pulumi.Input<String?>? name;

  /// Creates a new [ServerDnsAliasArgs].
  /// [mssqlServerId] The ID of the mssql server. Changing this forces a new MSSQL Server DNS Alias to be created.
  /// [name] The name which should be used for this MSSQL Server DNS Alias. Changing this forces a new MSSQL Server DNS Alias to be created.
  const ServerDnsAliasArgs({
    required this.mssqlServerId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mssqlServerId': mssqlServerId,
      'name': ?name,
    };
  }

  factory ServerDnsAliasArgs.fromMap(Map<String, dynamic> map) {
    return ServerDnsAliasArgs(
      mssqlServerId: pulumi.Input.fromValue(map['mssqlServerId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
