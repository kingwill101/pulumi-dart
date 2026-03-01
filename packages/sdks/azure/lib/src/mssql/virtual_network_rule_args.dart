// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_virtual_network_rule_virtual_network_rule_args_doc}
/// The set of arguments for VirtualNetworkRule.
/// {@endtemplate}
/// {@macro pulumi_mssql_virtual_network_rule_virtual_network_rule_args_doc}
class VirtualNetworkRuleArgs {
  /// Create the virtual network rule before the subnet has the virtual network service endpoint enabled. Defaults to `false`.
  ///
  /// > **Note:** If `ignore_missing_vnet_service_endpoint` is false, and the target subnet does not contain the `Microsoft.SQL` endpoint in the `service_endpoints` array, the deployment will fail when it tries to create the SQL virtual network rule.
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
  VirtualNetworkRuleArgs({
    pulumi.Output<bool>? ignoreMissingVnetServiceEndpoint,
    pulumi.Output<String>? name,
    required pulumi.Output<String> serverId,
    required pulumi.Output<String> subnetId,
  }) :
      ignoreMissingVnetServiceEndpoint = pulumi.Input.asOptionalInput<bool>(ignoreMissingVnetServiceEndpoint),
      name = pulumi.Input.asOptionalInput<String>(name),
      serverId = pulumi.Input.asInput<String>(serverId),
      subnetId = pulumi.Input.asInput<String>(subnetId);

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
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : pulumi.Output.create<bool>(map['ignoreMissingVnetServiceEndpoint'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serverId: pulumi.Output.create<String>(map['serverId'] as String),
      subnetId: pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

