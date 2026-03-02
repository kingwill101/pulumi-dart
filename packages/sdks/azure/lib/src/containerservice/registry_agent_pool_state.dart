// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistryAgentPool resources.
class RegistryAgentPoolState {
  /// Name of Azure Container Registry to create an Agent Pool for. Changing this forces a new Azure Container Registry Agent Pool to be created.
  final pulumi.Input<String>? containerRegistryName;
  /// VMSS instance count. Defaults to `1`.
  final pulumi.Input<int>? instanceCount;
  /// The Azure Region where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Azure Container Registry Agent Pool. Changing this forces a new Azure Container Registry Agent Pool to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Container Registry Agent Pool.
  final pulumi.Input<Map<String, String>>? tags;
  /// Sets the VM your agent pool will run on. Valid values are: `S1` (2 vCPUs, 3 GiB RAM), `S2` (4 vCPUs, 8 GiB RAM), `S3` (8 vCPUs, 16 GiB RAM) or `I6` (64 vCPUs, 216 GiB RAM, Isolated). Defaults to `S1`. Changing this forces a new Azure Container Registry Agent Pool to be created.
  final pulumi.Input<String>? tier;
  /// The ID of the Virtual Network Subnet Resource where the agent machines will be running. Changing this forces a new Azure Container Registry Agent Pool to be created.
  final pulumi.Input<String>? virtualNetworkSubnetId;

  /// Creates a new [RegistryAgentPoolState].
  /// [containerRegistryName] Name of Azure Container Registry to create an Agent Pool for. Changing this forces a new Azure Container Registry Agent Pool to be created.
  /// [instanceCount] VMSS instance count. Defaults to `1`.
  /// [location] The Azure Region where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
  /// [name] The name which should be used for this Azure Container Registry Agent Pool. Changing this forces a new Azure Container Registry Agent Pool to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Container Registry Agent Pool.
  /// [tier] Sets the VM your agent pool will run on. Valid values are: `S1` (2 vCPUs, 3 GiB RAM), `S2` (4 vCPUs, 8 GiB RAM), `S3` (8 vCPUs, 16 GiB RAM) or `I6` (64 vCPUs, 216 GiB RAM, Isolated). Defaults to `S1`. Changing this forces a new Azure Container Registry Agent Pool to be created.
  /// [virtualNetworkSubnetId] The ID of the Virtual Network Subnet Resource where the agent machines will be running. Changing this forces a new Azure Container Registry Agent Pool to be created.
  RegistryAgentPoolState({
    this.containerRegistryName,
    this.instanceCount,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.tier,
    this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryName': ?containerRegistryName,
      'instanceCount': ?instanceCount,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'tier': ?tier,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory RegistryAgentPoolState.fromMap(Map<String, dynamic> map) {
    return RegistryAgentPoolState(
      containerRegistryName: map['containerRegistryName'] == null ? null : (map['containerRegistryName'] as String).input(),
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount'] as int).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : (map['virtualNetworkSubnetId'] as String).input(),
    );
  }
}

