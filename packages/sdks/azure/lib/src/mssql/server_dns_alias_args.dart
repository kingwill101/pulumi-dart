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
  final pulumi.Input<String>? name;

  /// Creates a new [ServerDnsAliasArgs].
  /// [mssqlServerId] The ID of the mssql server. Changing this forces a new MSSQL Server DNS Alias to be created.
  /// [name] The name which should be used for this MSSQL Server DNS Alias. Changing this forces a new MSSQL Server DNS Alias to be created.
  ServerDnsAliasArgs({
    required pulumi.Output<String> mssqlServerId,
    pulumi.Output<String>? name,
  }) :
      mssqlServerId = pulumi.Input.asInput<String>(mssqlServerId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mssqlServerId': mssqlServerId,
      'name': ?name,
    };
  }

  factory ServerDnsAliasArgs.fromMap(Map<String, dynamic> map) {
    return ServerDnsAliasArgs(
      mssqlServerId: pulumi.Output.create<String>(map['mssqlServerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

