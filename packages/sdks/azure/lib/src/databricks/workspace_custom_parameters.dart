// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceCustomParameters {
  /// The ID of a Azure Machine Learning workspace to link with Databricks workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? machineLearningWorkspaceId;
  /// Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets (only for workspace with managed virtual network). Defaults to `nat-gateway`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? natGatewayName;
  /// Are public IP Addresses not allowed? Possible values are `true` or `false`. Defaults to `true`.
  ///
  /// &gt; **Note:** Updating `no_public_ip` parameter is only allowed if the value is changing from `false` to `true` and only for VNet-injected workspaces.
  ///
  /// &gt; **Note:** In `v3.104.0` and higher of the provider the `no_public_ip` parameter will now default to `true` instead of `false`.
  final pulumi.Input<bool>? noPublicIp;
  /// The name of the Private Subnet within the Virtual Network. Required if `virtual_network_id` is set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? privateSubnetName;
  /// The resource ID of the `azure.network.SubnetNetworkSecurityGroupAssociation` resource which is referred to by the `private_subnet_name` field. This is the same as the ID of the subnet referred to by the `private_subnet_name` field. Required if `virtual_network_id` is set.
  final pulumi.Input<String>? privateSubnetNetworkSecurityGroupAssociationId;
  /// Name of the Public IP for No Public IP workspace with managed virtual network. Defaults to `nat-gw-public-ip`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publicIpName;
  /// The name of the Public Subnet within the Virtual Network. Required if `virtual_network_id` is set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publicSubnetName;
  /// The resource ID of the `azure.network.SubnetNetworkSecurityGroupAssociation` resource which is referred to by the `public_subnet_name` field. This is the same as the ID of the subnet referred to by the `public_subnet_name` field. Required if `virtual_network_id` is set.
  final pulumi.Input<String>? publicSubnetNetworkSecurityGroupAssociationId;
  /// Default Databricks File Storage account name. Defaults to a randomized name(e.g. `dbstoragel6mfeghoe5kxu`). Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountName;
  /// Storage account SKU name. Possible values include `Standard_LRS`, `Standard_GRS`, `Standard_RAGRS`, `Standard_GZRS`, `Standard_RAGZRS`, `Standard_ZRS`, `Premium_LRS` or `Premium_ZRS`. Defaults to `Standard_GRS`.
  final pulumi.Input<String>? storageAccountSkuName;
  /// The ID of a Virtual Network where this Databricks Cluster should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualNetworkId;
  /// Address prefix for Managed virtual network. Defaults to `10.139`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Databricks requires that a network security group is associated with the `public` and `private` subnets when a `virtual_network_id` has been defined. Both `public` and `private` subnets must be delegated to `Microsoft.Databricks/workspaces`. For more information about subnet delegation see the [product documentation](https://docs.microsoft.com/azure/virtual-network/subnet-delegation-overview).
  final pulumi.Input<String>? vnetAddressPrefix;

  /// Creates a new [WorkspaceCustomParameters].
  /// [machineLearningWorkspaceId] The ID of a Azure Machine Learning workspace to link with Databricks workspace. Changing this forces a new resource to be created.
  /// [natGatewayName] Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets (only for workspace with managed virtual network). Defaults to `nat-gateway`. Changing this forces a new resource to be created.
  /// [noPublicIp] Are public IP Addresses not allowed? Possible values are `true` or `false`. Defaults to `true`.
  /// [privateSubnetName] The name of the Private Subnet within the Virtual Network. Required if `virtual_network_id` is set. Changing this forces a new resource to be created.
  /// [privateSubnetNetworkSecurityGroupAssociationId] The resource ID of the `azure.network.SubnetNetworkSecurityGroupAssociation` resource which is referred to by the `private_subnet_name` field. This is the same as the ID of the subnet referred to by the `private_subnet_name` field. Required if `virtual_network_id` is set.
  /// [publicIpName] Name of the Public IP for No Public IP workspace with managed virtual network. Defaults to `nat-gw-public-ip`. Changing this forces a new resource to be created.
  /// [publicSubnetName] The name of the Public Subnet within the Virtual Network. Required if `virtual_network_id` is set. Changing this forces a new resource to be created.
  /// [publicSubnetNetworkSecurityGroupAssociationId] The resource ID of the `azure.network.SubnetNetworkSecurityGroupAssociation` resource which is referred to by the `public_subnet_name` field. This is the same as the ID of the subnet referred to by the `public_subnet_name` field. Required if `virtual_network_id` is set.
  /// [storageAccountName] Default Databricks File Storage account name. Defaults to a randomized name(e.g. `dbstoragel6mfeghoe5kxu`). Changing this forces a new resource to be created.
  /// [storageAccountSkuName] Storage account SKU name. Possible values include `Standard_LRS`, `Standard_GRS`, `Standard_RAGRS`, `Standard_GZRS`, `Standard_RAGZRS`, `Standard_ZRS`, `Premium_LRS` or `Premium_ZRS`. Defaults to `Standard_GRS`.
  /// [virtualNetworkId] The ID of a Virtual Network where this Databricks Cluster should be created. Changing this forces a new resource to be created.
  /// [vnetAddressPrefix] Address prefix for Managed virtual network. Defaults to `10.139`. Changing this forces a new resource to be created.
  WorkspaceCustomParameters({
    this.machineLearningWorkspaceId,
    this.natGatewayName,
    this.noPublicIp,
    this.privateSubnetName,
    this.privateSubnetNetworkSecurityGroupAssociationId,
    this.publicIpName,
    this.publicSubnetName,
    this.publicSubnetNetworkSecurityGroupAssociationId,
    this.storageAccountName,
    this.storageAccountSkuName,
    this.virtualNetworkId,
    this.vnetAddressPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineLearningWorkspaceId': ?machineLearningWorkspaceId,
      'natGatewayName': ?natGatewayName,
      'noPublicIp': ?noPublicIp,
      'privateSubnetName': ?privateSubnetName,
      'privateSubnetNetworkSecurityGroupAssociationId': ?privateSubnetNetworkSecurityGroupAssociationId,
      'publicIpName': ?publicIpName,
      'publicSubnetName': ?publicSubnetName,
      'publicSubnetNetworkSecurityGroupAssociationId': ?publicSubnetNetworkSecurityGroupAssociationId,
      'storageAccountName': ?storageAccountName,
      'storageAccountSkuName': ?storageAccountSkuName,
      'virtualNetworkId': ?virtualNetworkId,
      'vnetAddressPrefix': ?vnetAddressPrefix,
    };
  }

  factory WorkspaceCustomParameters.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomParameters(
      machineLearningWorkspaceId: (() { final guardedValue = map['machineLearningWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGatewayName: (() { final guardedValue = map['natGatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noPublicIp: (() { final guardedValue = map['noPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateSubnetName: (() { final guardedValue = map['privateSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateSubnetNetworkSecurityGroupAssociationId: (() { final guardedValue = map['privateSubnetNetworkSecurityGroupAssociationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpName: (() { final guardedValue = map['publicIpName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicSubnetName: (() { final guardedValue = map['publicSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicSubnetNetworkSecurityGroupAssociationId: (() { final guardedValue = map['publicSubnetNetworkSecurityGroupAssociationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountSkuName: (() { final guardedValue = map['storageAccountSkuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vnetAddressPrefix: (() { final guardedValue = map['vnetAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

