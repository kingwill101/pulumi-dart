// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_ipv4_firewall_rule.dart';

/// Input properties used for looking up and filtering Server resources.
class ServerState {
  /// List of email addresses of admin users.
  final pulumi.Input<List<String>>? adminUsers;
  /// URI and SAS token for a blob container to store backups.
  final pulumi.Input<String>? backupBlobContainerUri;
  /// One or more `ipv4_firewall_rule` block(s) as defined below.
  final pulumi.Input<List<ServerIpv4FirewallRule>>? ipv4FirewallRules;
  /// The Azure location where the Analysis Services Server exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Analysis Services Server. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Indicates if the Power BI service is allowed to access or not.
  final pulumi.Input<bool>? powerBiServiceEnabled;
  /// Controls how the read-write server is used in the query pool. If this value is set to `All` then read-write servers are also used for queries. Otherwise with `ReadOnly` these servers do not participate in query operations. Defaults to `All`.
  final pulumi.Input<String>? querypoolConnectionMode;
  /// The name of the Resource Group in which the Analysis Services Server should be exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The full name of the Analysis Services Server.
  final pulumi.Input<String>? serverFullName;
  /// SKU for the Analysis Services Server. Possible values are: `D1`, `B1`, `B2`, `S0`, `S1`, `S2`, `S4`, `S8`, `S9`, `S8v2` and `S9v2`.
  final pulumi.Input<String>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServerState].
  /// [adminUsers] List of email addresses of admin users.
  /// [backupBlobContainerUri] URI and SAS token for a blob container to store backups.
  /// [ipv4FirewallRules] One or more `ipv4_firewall_rule` block(s) as defined below.
  /// [location] The Azure location where the Analysis Services Server exists. Changing this forces a new resource to be created.
  /// [name] The name of the Analysis Services Server. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created.
  /// [powerBiServiceEnabled] Indicates if the Power BI service is allowed to access or not.
  /// [querypoolConnectionMode] Controls how the read-write server is used in the query pool. If this value is set to `All` then read-write servers are also used for queries. Otherwise with `ReadOnly` these servers do not participate in query operations. Defaults to `All`.
  /// [resourceGroupName] The name of the Resource Group in which the Analysis Services Server should be exist. Changing this forces a new resource to be created.
  /// [serverFullName] The full name of the Analysis Services Server.
  /// [sku] SKU for the Analysis Services Server. Possible values are: `D1`, `B1`, `B2`, `S0`, `S1`, `S2`, `S4`, `S8`, `S9`, `S8v2` and `S9v2`.
  /// [tags] A mapping of tags to assign to the resource.
  ServerState({
    this.adminUsers,
    this.backupBlobContainerUri,
    this.ipv4FirewallRules,
    this.location,
    this.name,
    this.powerBiServiceEnabled,
    this.querypoolConnectionMode,
    this.resourceGroupName,
    this.serverFullName,
    this.sku,
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
      'resourceGroupName': ?resourceGroupName,
      'serverFullName': ?serverFullName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory ServerState.fromMap(Map<String, dynamic> map) {
    return ServerState(
      adminUsers: map['adminUsers'] == null ? null : ((map['adminUsers']! as List).cast<String>()).input(),
      backupBlobContainerUri: map['backupBlobContainerUri'] == null ? null : (map['backupBlobContainerUri']! as String).input(),
      ipv4FirewallRules: map['ipv4FirewallRules'] == null ? null : (pulumi.Input.decodeList<ServerIpv4FirewallRule>(map['ipv4FirewallRules']!, (value) => ServerIpv4FirewallRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      powerBiServiceEnabled: map['powerBiServiceEnabled'] == null ? null : (map['powerBiServiceEnabled']! as bool).input(),
      querypoolConnectionMode: map['querypoolConnectionMode'] == null ? null : (map['querypoolConnectionMode']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      serverFullName: map['serverFullName'] == null ? null : (map['serverFullName']! as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

