// ignore_for_file: unused_element, unnecessary_cast


class GetWorkspaceCustomParameter {
  /// The ID of a Azure Machine Learning workspace to link with Databricks workspace.
  final String machineLearningWorkspaceId;
  /// Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets (only for workspace with managed virtual network).
  final String natGatewayName;
  /// Are public IP Addresses not allowed?
  final bool noPublicIp;
  /// The name of the Private Subnet within the Virtual Network.
  final String privateSubnetName;
  /// Name of the Public IP for No Public IP workspace with managed virtual network.
  final String publicIpName;
  /// The name of the Public Subnet within the Virtual Network.
  final String publicSubnetName;
  /// Default Databricks File Storage account name.
  final String storageAccountName;
  /// Storage account SKU name.
  final String storageAccountSkuName;
  /// The ID of a Virtual Network where this Databricks Cluster should be created.
  final String virtualNetworkId;
  /// Address prefix for Managed virtual network.
  final String vnetAddressPrefix;

  /// Creates a new [GetWorkspaceCustomParameter].
  /// [machineLearningWorkspaceId] The ID of a Azure Machine Learning workspace to link with Databricks workspace.
  /// [natGatewayName] Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets (only for workspace with managed virtual network).
  /// [noPublicIp] Are public IP Addresses not allowed?
  /// [privateSubnetName] The name of the Private Subnet within the Virtual Network.
  /// [publicIpName] Name of the Public IP for No Public IP workspace with managed virtual network.
  /// [publicSubnetName] The name of the Public Subnet within the Virtual Network.
  /// [storageAccountName] Default Databricks File Storage account name.
  /// [storageAccountSkuName] Storage account SKU name.
  /// [virtualNetworkId] The ID of a Virtual Network where this Databricks Cluster should be created.
  /// [vnetAddressPrefix] Address prefix for Managed virtual network.
  GetWorkspaceCustomParameter({
    required this.machineLearningWorkspaceId,
    required this.natGatewayName,
    required this.noPublicIp,
    required this.privateSubnetName,
    required this.publicIpName,
    required this.publicSubnetName,
    required this.storageAccountName,
    required this.storageAccountSkuName,
    required this.virtualNetworkId,
    required this.vnetAddressPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineLearningWorkspaceId': machineLearningWorkspaceId,
      'natGatewayName': natGatewayName,
      'noPublicIp': noPublicIp,
      'privateSubnetName': privateSubnetName,
      'publicIpName': publicIpName,
      'publicSubnetName': publicSubnetName,
      'storageAccountName': storageAccountName,
      'storageAccountSkuName': storageAccountSkuName,
      'virtualNetworkId': virtualNetworkId,
      'vnetAddressPrefix': vnetAddressPrefix,
    };
  }

  factory GetWorkspaceCustomParameter.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceCustomParameter(
      machineLearningWorkspaceId: map['machineLearningWorkspaceId'] as String,
      natGatewayName: map['natGatewayName'] as String,
      noPublicIp: map['noPublicIp'] as bool,
      privateSubnetName: map['privateSubnetName'] as String,
      publicIpName: map['publicIpName'] as String,
      publicSubnetName: map['publicSubnetName'] as String,
      storageAccountName: map['storageAccountName'] as String,
      storageAccountSkuName: map['storageAccountSkuName'] as String,
      virtualNetworkId: map['virtualNetworkId'] as String,
      vnetAddressPrefix: map['vnetAddressPrefix'] as String,
    );
  }
}

