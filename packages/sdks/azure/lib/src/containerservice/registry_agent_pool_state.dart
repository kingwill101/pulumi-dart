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
    pulumi.Output<String>? containerRegistryName,
    pulumi.Output<int>? instanceCount,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tier,
    pulumi.Output<String>? virtualNetworkSubnetId,
  }) :
      containerRegistryName = pulumi.Input.asOptionalInput<String>(containerRegistryName),
      instanceCount = pulumi.Input.asOptionalInput<int>(instanceCount),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tier = pulumi.Input.asOptionalInput<String>(tier),
      virtualNetworkSubnetId = pulumi.Input.asOptionalInput<String>(virtualNetworkSubnetId);

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
      containerRegistryName: map['containerRegistryName'] == null ? null : pulumi.Output.create<String>(map['containerRegistryName'] as String),
      instanceCount: map['instanceCount'] == null ? null : pulumi.Output.create<int>(map['instanceCount'] as int),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkSubnetId'] as String),
    );
  }
}

