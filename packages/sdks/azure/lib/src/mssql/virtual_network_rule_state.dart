// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualNetworkRule resources.
class VirtualNetworkRuleState {
  /// Create the virtual network rule before the subnet has the virtual network service endpoint enabled. Defaults to `false`.
  ///
  /// > **Note:** If `ignore_missing_vnet_service_endpoint` is false, and the target subnet does not contain the `Microsoft.SQL` endpoint in the `service_endpoints` array, the deployment will fail when it tries to create the SQL virtual network rule.
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;
  /// The name of the SQL virtual network rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the SQL Server to which this SQL virtual network rule will be applied. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverId;
  /// The ID of the subnet from which the SQL server will accept communications.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [VirtualNetworkRuleState].
  /// [ignoreMissingVnetServiceEndpoint] Create the virtual network rule before the subnet has the virtual network service endpoint enabled. Defaults to `false`.
  /// [name] The name of the SQL virtual network rule. Changing this forces a new resource to be created.
  /// [serverId] The resource ID of the SQL Server to which this SQL virtual network rule will be applied. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the subnet from which the SQL server will accept communications.
  VirtualNetworkRuleState({
    pulumi.Output<bool>? ignoreMissingVnetServiceEndpoint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? serverId,
    pulumi.Output<String>? subnetId,
  }) :
      ignoreMissingVnetServiceEndpoint = pulumi.Input.asOptionalInput<bool>(ignoreMissingVnetServiceEndpoint),
      name = pulumi.Input.asOptionalInput<String>(name),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'name': ?name,
      'serverId': ?serverId,
      'subnetId': ?subnetId,
    };
  }

  factory VirtualNetworkRuleState.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleState(
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : pulumi.Output.create<bool>(map['ignoreMissingVnetServiceEndpoint'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

