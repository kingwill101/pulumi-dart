// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerDnsAlias resources.
class ServerDnsAliasState {
  /// The fully qualified DNS record for alias.
  final pulumi.Input<String>? dnsRecord;
  /// The ID of the mssql server. Changing this forces a new MSSQL Server DNS Alias to be created.
  final pulumi.Input<String>? mssqlServerId;
  /// The name which should be used for this MSSQL Server DNS Alias. Changing this forces a new MSSQL Server DNS Alias to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [ServerDnsAliasState].
  /// [dnsRecord] The fully qualified DNS record for alias.
  /// [mssqlServerId] The ID of the mssql server. Changing this forces a new MSSQL Server DNS Alias to be created.
  /// [name] The name which should be used for this MSSQL Server DNS Alias. Changing this forces a new MSSQL Server DNS Alias to be created.
  ServerDnsAliasState({
    pulumi.Output<String>? dnsRecord,
    pulumi.Output<String>? mssqlServerId,
    pulumi.Output<String>? name,
  }) :
      dnsRecord = pulumi.Input.asOptionalInput<String>(dnsRecord),
      mssqlServerId = pulumi.Input.asOptionalInput<String>(mssqlServerId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsRecord': ?dnsRecord,
      'mssqlServerId': ?mssqlServerId,
      'name': ?name,
    };
  }

  factory ServerDnsAliasState.fromMap(Map<String, dynamic> map) {
    return ServerDnsAliasState(
      dnsRecord: map['dnsRecord'] == null ? null : pulumi.Output.create<String>(map['dnsRecord'] as String),
      mssqlServerId: map['mssqlServerId'] == null ? null : pulumi.Output.create<String>(map['mssqlServerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

