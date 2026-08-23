// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_ipv4_firewall_rule.dart';

/// {@template pulumi_analysisservices_server_server_args_doc}
/// The set of arguments for Server.
/// {@endtemplate}
/// {@macro pulumi_analysisservices_server_server_args_doc}
class ServerArgs {
  /// List of email addresses of admin users.
  final pulumi.Input<List<String>>? adminUsers;
  /// URI and SAS token for a blob container to store backups.
  final pulumi.Input<String>? backupBlobContainerUri;
  /// One or more `ipv4FirewallRule` block(s) as defined below.
  final pulumi.Input<List<ServerIpv4FirewallRule>>? ipv4FirewallRules;
  /// The Azure location where the Analysis Services Server exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Analysis Services Server. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Indicates if the Power BI service is allowed to access or not.
  ///
  /// &gt; **Note:** `powerBiServiceEnabled` is required when `ipv4FirewallRule` is defined.
  final pulumi.Input<bool>? powerBiServiceEnabled;
  /// Controls how the read-write server is used in the query pool. If this value is set to `All` then read-write servers are also used for queries. Otherwise with `ReadOnly` these servers do not participate in query operations. Defaults to `All`.
  final pulumi.Input<String>? querypoolConnectionMode;
  /// The name of the Resource Group in which the Analysis Services Server should be exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// SKU for the Analysis Services Server. Possible values are: `D1`, `B1`, `B2`, `S0`, `S1`, `S2`, `S4`, `S8`, `S9`, `S8v2` and `S9v2`.
  final pulumi.Input<String> sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServerArgs].
  /// [adminUsers] List of email addresses of admin users.
  /// [backupBlobContainerUri] URI and SAS token for a blob container to store backups.
  /// [ipv4FirewallRules] One or more `ipv4FirewallRule` block(s) as defined below.
  /// [location] The Azure location where the Analysis Services Server exists. Changing this forces a new resource to be created.
  /// [name] The name of the Analysis Services Server. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created.
  /// [powerBiServiceEnabled] Indicates if the Power BI service is allowed to access or not.
  /// [querypoolConnectionMode] Controls how the read-write server is used in the query pool. If this value is set to `All` then read-write servers are also used for queries. Otherwise with `ReadOnly` these servers do not participate in query operations. Defaults to `All`.
  /// [resourceGroupName] The name of the Resource Group in which the Analysis Services Server should be exist. Changing this forces a new resource to be created.
  /// [sku] SKU for the Analysis Services Server. Possible values are: `D1`, `B1`, `B2`, `S0`, `S1`, `S2`, `S4`, `S8`, `S9`, `S8v2` and `S9v2`.
  /// [tags] A mapping of tags to assign to the resource.
  const ServerArgs({
    this.adminUsers,
    this.backupBlobContainerUri,
    this.ipv4FirewallRules,
    this.location,
    this.name,
    this.powerBiServiceEnabled,
    this.querypoolConnectionMode,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsers': ?adminUsers,
      'backupBlobContainerUri': ?backupBlobContainerUri,
      'ipv4FirewallRules': ?pulumi.Input.mapOptionalInputValue<List<ServerIpv4FirewallRule>, List<Map<String, dynamic>>>(ipv4FirewallRules, (value) => pulumi.Input.encodeList<ServerIpv4FirewallRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'powerBiServiceEnabled': ?powerBiServiceEnabled,
      'querypoolConnectionMode': ?querypoolConnectionMode,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': ?tags,
    };
  }

  factory ServerArgs.fromMap(Map<String, dynamic> map) {
    return ServerArgs(
      adminUsers: (() { final guardedValue = map['adminUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backupBlobContainerUri: (() { final guardedValue = map['backupBlobContainerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4FirewallRules: (() { final guardedValue = map['ipv4FirewallRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerIpv4FirewallRule>(guardedValue, (value) => ServerIpv4FirewallRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      powerBiServiceEnabled: (() { final guardedValue = map['powerBiServiceEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      querypoolConnectionMode: (() { final guardedValue = map['querypoolConnectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(map['sku'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
