// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlexibleServerFirewallRule resources.
class FlexibleServerFirewallRuleState {
  /// Specifies the End IP Address associated with this Firewall Rule.
  ///
  /// > **Note:** The Azure feature `Allow access to Azure services` can be enabled by setting `start_ip_address` and `end_ip_address` to `0.0.0.0` which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate)).
  final pulumi.Input<String>? endIpAddress;
  /// Specifies the name of the MySQL Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the MySQL Flexible Server exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverName;
  /// Specifies the Start IP Address associated with this Firewall Rule.
  final pulumi.Input<String>? startIpAddress;

  /// Creates a new [FlexibleServerFirewallRuleState].
  /// [endIpAddress] Specifies the End IP Address associated with this Firewall Rule.
  /// [name] Specifies the name of the MySQL Firewall Rule. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the MySQL Flexible Server exists. Changing this forces a new resource to be created.
  /// [serverName] Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  /// [startIpAddress] Specifies the Start IP Address associated with this Firewall Rule.
  FlexibleServerFirewallRuleState({
    this.endIpAddress,
    this.name,
    this.resourceGroupName,
    this.serverName,
    this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': ?endIpAddress,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'serverName': ?serverName,
      'startIpAddress': ?startIpAddress,
    };
  }

  factory FlexibleServerFirewallRuleState.fromMap(Map<String, dynamic> map) {
    return FlexibleServerFirewallRuleState(
      endIpAddress: map['endIpAddress'] == null ? null : (map['endIpAddress']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      serverName: map['serverName'] == null ? null : (map['serverName']! as String).input(),
      startIpAddress: map['startIpAddress'] == null ? null : (map['startIpAddress']! as String).input(),
    );
  }
}

