// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallRule resources.
class FirewallRuleState {
  /// The ending IP address to allow through the firewall for this rule.
  ///
  /// > **Note:** The Azure feature `Allow access to Azure services` can be enabled by setting `start_ip_address` and `end_ip_address` to `0.0.0.0` which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate)).
  final pulumi.Input<String>? endIpAddress;
  /// The name of the firewall rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the SQL Server on which to create the Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverId;
  /// The starting IP address to allow through the firewall for this rule.
  final pulumi.Input<String>? startIpAddress;

  /// Creates a new [FirewallRuleState].
  /// [endIpAddress] The ending IP address to allow through the firewall for this rule.
  /// [name] The name of the firewall rule. Changing this forces a new resource to be created.
  /// [serverId] The resource ID of the SQL Server on which to create the Firewall Rule. Changing this forces a new resource to be created.
  /// [startIpAddress] The starting IP address to allow through the firewall for this rule.
  FirewallRuleState({
    this.endIpAddress,
    this.name,
    this.serverId,
    this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': ?endIpAddress,
      'name': ?name,
      'serverId': ?serverId,
      'startIpAddress': ?startIpAddress,
    };
  }

  factory FirewallRuleState.fromMap(Map<String, dynamic> map) {
    return FirewallRuleState(
      endIpAddress: map['endIpAddress'] == null ? null : (map['endIpAddress'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      serverId: map['serverId'] == null ? null : (map['serverId'] as String).input(),
      startIpAddress: map['startIpAddress'] == null ? null : (map['startIpAddress'] as String).input(),
    );
  }
}

