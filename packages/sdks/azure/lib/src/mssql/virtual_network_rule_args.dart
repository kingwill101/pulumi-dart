// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_virtual_network_rule_virtual_network_rule_args_doc}
/// The set of arguments for VirtualNetworkRule.
/// {@endtemplate}
/// {@macro pulumi_mssql_virtual_network_rule_virtual_network_rule_args_doc}
class VirtualNetworkRuleArgs {
  /// Create the virtual network rule before the subnet has the virtual network service endpoint enabled. Defaults to `false`.
  ///
  /// &gt; **Note:** If `ignoreMissingVnetServiceEndpoint` is false, and the target subnet does not contain the `Microsoft.SQL` endpoint in the `serviceEndpoints` array, the deployment will fail when it tries to create the SQL virtual network rule.
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;
  /// The name of the SQL virtual network rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the SQL Server to which this SQL virtual network rule will be applied. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;
  /// The ID of the subnet from which the SQL server will accept communications.
  final pulumi.Input<String> subnetId;

  /// Creates a new [VirtualNetworkRuleArgs].
  /// [ignoreMissingVnetServiceEndpoint] Create the virtual network rule before the subnet has the virtual network service endpoint enabled. Defaults to `false`.
  /// [name] The name of the SQL virtual network rule. Changing this forces a new resource to be created.
  /// [serverId] The resource ID of the SQL Server to which this SQL virtual network rule will be applied. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the subnet from which the SQL server will accept communications.
  const VirtualNetworkRuleArgs({
    this.ignoreMissingVnetServiceEndpoint,
    this.name,
    required this.serverId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'name': ?name,
      'serverId': serverId,
      'subnetId': subnetId,
    };
  }

  factory VirtualNetworkRuleArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleArgs(
      ignoreMissingVnetServiceEndpoint: (() { final guardedValue = map['ignoreMissingVnetServiceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
