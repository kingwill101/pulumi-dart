// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualNetworkRule resources.
class VirtualNetworkRuleState {
  /// Should the Virtual Network Rule be created before the Subnet has the Virtual Network Service Endpoint enabled?
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;
  /// The name of the PostgreSQL virtual network rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `name` must be between 1-128 characters long and must satisfy all of the requirements below:
  ///
  /// 1. Contains only alphanumeric and hyphen characters
  /// 2. Cannot start with a number or hyphen
  /// 3. Cannot end with a hyphen
  final pulumi.Input<String>? name;
  /// The name of the resource group where the PostgreSQL server resides. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the SQL Server to which this PostgreSQL virtual network rule will be applied to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverName;
  /// The ID of the subnet that the PostgreSQL server will be connected to.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [VirtualNetworkRuleState].
  /// [ignoreMissingVnetServiceEndpoint] Should the Virtual Network Rule be created before the Subnet has the Virtual Network Service Endpoint enabled?
  /// [name] The name of the PostgreSQL virtual network rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the PostgreSQL server resides. Changing this forces a new resource to be created.
  /// [serverName] The name of the SQL Server to which this PostgreSQL virtual network rule will be applied to. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the subnet that the PostgreSQL server will be connected to.
  VirtualNetworkRuleState({
    pulumi.Output<bool>? ignoreMissingVnetServiceEndpoint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? serverName,
    pulumi.Output<String>? subnetId,
  }) :
      ignoreMissingVnetServiceEndpoint = pulumi.Input.asOptionalInput<bool>(ignoreMissingVnetServiceEndpoint),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'serverName': ?serverName,
      'subnetId': ?subnetId,
    };
  }

  factory VirtualNetworkRuleState.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleState(
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : pulumi.Output.create<bool>(map['ignoreMissingVnetServiceEndpoint'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

