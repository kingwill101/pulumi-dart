// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallRule resources.
class FirewallRuleState {
  /// Specifies the End IP Address associated with this Firewall Rule. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The Azure feature `Allow access to Azure services` can be enabled by setting `start_ip_address` and `end_ip_address` to `0.0.0.0` which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate)).
  final pulumi.Input<String>? endIpAddress;
  /// Specifies the name of the PostgreSQL Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverName;
  /// Specifies the Start IP Address associated with this Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? startIpAddress;

  /// Creates a new [FirewallRuleState].
  /// [endIpAddress] Specifies the End IP Address associated with this Firewall Rule. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the PostgreSQL Firewall Rule. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created.
  /// [serverName] Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
  /// [startIpAddress] Specifies the Start IP Address associated with this Firewall Rule. Changing this forces a new resource to be created.
  FirewallRuleState({
    pulumi.Output<String>? endIpAddress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? serverName,
    pulumi.Output<String>? startIpAddress,
  }) :
      endIpAddress = pulumi.Input.asOptionalInput<String>(endIpAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      startIpAddress = pulumi.Input.asOptionalInput<String>(startIpAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': ?endIpAddress,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'serverName': ?serverName,
      'startIpAddress': ?startIpAddress,
    };
  }

  factory FirewallRuleState.fromMap(Map<String, dynamic> map) {
    return FirewallRuleState(
      endIpAddress: map['endIpAddress'] == null ? null : pulumi.Output.create<String>(map['endIpAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      startIpAddress: map['startIpAddress'] == null ? null : pulumi.Output.create<String>(map['startIpAddress'] as String),
    );
  }
}

