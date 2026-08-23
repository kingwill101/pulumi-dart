// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualNetworkRule resources.
class VirtualNetworkRuleState {
  /// Should the Virtual Network Rule be created before the Subnet has the Virtual Network Service Endpoint enabled?
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;
  /// The name of the PostgreSQL virtual network rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `name` must be between 1-128 characters long and must satisfy all of the requirements below:
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
  const VirtualNetworkRuleState({
    this.ignoreMissingVnetServiceEndpoint,
    this.name,
    this.resourceGroupName,
    this.serverName,
    this.subnetId,
  });

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
      ignoreMissingVnetServiceEndpoint: (() { final guardedValue = map['ignoreMissingVnetServiceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
