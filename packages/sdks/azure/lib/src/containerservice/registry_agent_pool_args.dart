// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_registry_agent_pool_registry_agent_pool_args_doc}
/// The set of arguments for RegistryAgentPool.
/// {@endtemplate}
/// {@macro pulumi_containerservice_registry_agent_pool_registry_agent_pool_args_doc}
class RegistryAgentPoolArgs {
  /// Name of Azure Container Registry to create an Agent Pool for. Changing this forces a new Azure Container Registry Agent Pool to be created.
  final pulumi.Input<String> containerRegistryName;
  /// VMSS instance count. Defaults to `1`.
  final pulumi.Input<int?>? instanceCount;
  /// The Azure Region where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Azure Container Registry Agent Pool. Changing this forces a new Azure Container Registry Agent Pool to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Container Registry Agent Pool.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Sets the VM your agent pool will run on. Valid values are: `S1` (2 vCPUs, 3 GiB RAM), `S2` (4 vCPUs, 8 GiB RAM), `S3` (8 vCPUs, 16 GiB RAM) or `I6` (64 vCPUs, 216 GiB RAM, Isolated). Defaults to `S1`. Changing this forces a new Azure Container Registry Agent Pool to be created.
  final pulumi.Input<String?>? tier;
  /// The ID of the Virtual Network Subnet Resource where the agent machines will be running. Changing this forces a new Azure Container Registry Agent Pool to be created.
  final pulumi.Input<String?>? virtualNetworkSubnetId;

  /// Creates a new [RegistryAgentPoolArgs].
  /// [containerRegistryName] Name of Azure Container Registry to create an Agent Pool for. Changing this forces a new Azure Container Registry Agent Pool to be created.
  /// [instanceCount] VMSS instance count. Defaults to `1`.
  /// [location] The Azure Region where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
  /// [name] The name which should be used for this Azure Container Registry Agent Pool. Changing this forces a new Azure Container Registry Agent Pool to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Container Registry Agent Pool.
  /// [tier] Sets the VM your agent pool will run on. Valid values are: `S1` (2 vCPUs, 3 GiB RAM), `S2` (4 vCPUs, 8 GiB RAM), `S3` (8 vCPUs, 16 GiB RAM) or `I6` (64 vCPUs, 216 GiB RAM, Isolated). Defaults to `S1`. Changing this forces a new Azure Container Registry Agent Pool to be created.
  /// [virtualNetworkSubnetId] The ID of the Virtual Network Subnet Resource where the agent machines will be running. Changing this forces a new Azure Container Registry Agent Pool to be created.
  const RegistryAgentPoolArgs({
    required this.containerRegistryName,
    this.instanceCount,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
    this.tier,
    this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryName': containerRegistryName,
      'instanceCount': ?instanceCount,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'tier': ?tier,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory RegistryAgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return RegistryAgentPoolArgs(
      containerRegistryName: pulumi.Input.fromValue(map['containerRegistryName'] as String),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkSubnetId: (() { final guardedValue = map['virtualNetworkSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
