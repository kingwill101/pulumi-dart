// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_type_versions_cleanup_policy.dart';
import 'azure_active_directory.dart';
import 'client_certificate.dart';
import 'cluster_upgrade_policy.dart';
import 'ip_tag.dart';
import 'load_balancing_rule.dart';
import 'network_security_rule.dart';
import 'service_endpoint.dart';
import 'settings_section_description.dart';
import 'sku.dart';
import 'subnet.dart';

/// {@template pulumi_servicefabric_managed_cluster_args_doc}
/// The set of arguments for ManagedCluster.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_managed_cluster_args_doc}
class ManagedClusterArgs {
  /// List of add-on features to enable on the cluster.
  final pulumi.Input<List<String>>? addonFeatures;
  /// VM admin user password.
  final pulumi.Input<String>? adminPassword;
  /// VM admin user name.
  final pulumi.Input<String> adminUserName;
  /// Setting this to true enables RDP access to the VM. The default NSG rule opens RDP port to Internet which can be overridden with custom Network Security Rules. The default value for this setting is false.
  final pulumi.Input<bool>? allowRdpAccess;
  /// The policy used to clean up unused versions.
  final pulumi.Input<ApplicationTypeVersionsCleanupPolicy>? applicationTypeVersionsCleanupPolicy;
  /// Auxiliary subnets for the cluster.
  final pulumi.Input<List<Subnet>>? auxiliarySubnets;
  /// The AAD authentication settings of the cluster.
  final pulumi.Input<AzureActiveDirectory>? azureActiveDirectory;
  /// The port used for client connections to the cluster.
  final pulumi.Input<int>? clientConnectionPort;
  /// Client certificates that are allowed to manage the cluster.
  final pulumi.Input<List<ClientCertificate>>? clients;
  /// The Service Fabric runtime version of the cluster. This property is required when **clusterUpgradeMode** is set to 'Manual'. To get list of available Service Fabric versions for new clusters use [ClusterVersion API](./ClusterVersion.md). To get the list of available version for existing clusters use **availableClusterVersions**.
  final pulumi.Input<String>? clusterCodeVersion;
  /// The name of the cluster resource.
  final pulumi.Input<String>? clusterName;
  /// Indicates when new cluster runtime version upgrades will be applied after they are released. By default is Wave0. Only applies when **clusterUpgradeMode** is set to 'Automatic'.
  final pulumi.Input<String>? clusterUpgradeCadence;
  /// The upgrade mode of the cluster when new Service Fabric runtime version is available.
  final pulumi.Input<String>? clusterUpgradeMode;
  /// Specify the resource id of a DDoS network protection plan that will be associated with the virtual network of the cluster.
  final pulumi.Input<String>? ddosProtectionPlanId;
  /// The cluster dns name.
  final pulumi.Input<String> dnsName;
  /// Setting this to true enables automatic OS upgrade for the node types that are created using any platform OS image with version 'latest'. The default value for this setting is false.
  final pulumi.Input<bool>? enableAutoOSUpgrade;
  /// If true, token-based authentication is not allowed on the HttpGatewayEndpoint. This is required to support TLS versions 1.3 and above. If token-based authentication is used, HttpGatewayTokenAuthConnectionPort must be defined.
  final pulumi.Input<bool>? enableHttpGatewayExclusiveAuthMode;
  /// Setting this to true creates IPv6 address space for the default VNet used by the cluster. This setting cannot be changed once the cluster is created. The default value for this setting is false.
  final pulumi.Input<bool>? enableIpv6;
  /// Setting this to true will link the IPv4 address as the ServicePublicIP of the IPv6 address. It can only be set to True if IPv6 is enabled on the cluster.
  final pulumi.Input<bool>? enableServicePublicIP;
  /// The list of custom fabric settings to configure the cluster.
  final pulumi.Input<List<SettingsSectionDescription>>? fabricSettings;
  /// The port used for HTTP connections to the cluster.
  final pulumi.Input<int>? httpGatewayConnectionPort;
  /// The port used for token-auth based HTTPS connections to the cluster. Cannot be set to the same port as HttpGatewayEndpoint.
  final pulumi.Input<int>? httpGatewayTokenAuthConnectionPort;
  /// The list of IP tags associated with the default public IP address of the cluster.
  final pulumi.Input<List<IpTag>>? ipTags;
  /// Load balancing rules that are applied to the public load balancer of the cluster.
  final pulumi.Input<List<LoadBalancingRule>>? loadBalancingRules;
  /// Azure resource location.
  final pulumi.Input<String>? location;
  /// Custom Network Security Rules that are applied to the Virtual Network of the cluster.
  final pulumi.Input<List<NetworkSecurityRule>>? networkSecurityRules;
  /// Specify the resource id of a public IPv4 prefix that the load balancer will allocate a public IPv4 address from. This setting cannot be changed once the cluster is created.
  final pulumi.Input<String>? publicIPPrefixId;
  /// Specify the resource id of a public IPv6 prefix that the load balancer will allocate a public IPv6 address from. This setting cannot be changed once the cluster is created.
  final pulumi.Input<String>? publicIPv6PrefixId;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Service endpoints for subnets in the cluster.
  final pulumi.Input<List<ServiceEndpoint>>? serviceEndpoints;
  /// The sku of the managed cluster
  final pulumi.Input<Sku> sku;
  /// If specified, the node types for the cluster are created in this subnet instead of the default VNet. The **networkSecurityRules** specified for the cluster are also applied to this subnet. This setting cannot be changed once the cluster is created.
  final pulumi.Input<String>? subnetId;
  /// Azure resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The policy to use when upgrading the cluster.
  final pulumi.Input<ClusterUpgradePolicy>? upgradeDescription;
  /// For new clusters, this parameter indicates that it uses Bring your own VNet, but the subnet is specified at node type level; and for such clusters, the subnetId property is required for node types.
  final pulumi.Input<bool>? useCustomVnet;
  /// Indicates if the cluster has zone resiliency.
  final pulumi.Input<bool>? zonalResiliency;
  /// Indicates the update mode for Cross Az clusters.
  final pulumi.Input<String>? zonalUpdateMode;

  /// Creates a new [ManagedClusterArgs].
  /// [addonFeatures] List of add-on features to enable on the cluster.
  /// [adminPassword] VM admin user password.
  /// [adminUserName] VM admin user name.
  /// [allowRdpAccess] Setting this to true enables RDP access to the VM. The default NSG rule opens RDP port to Internet which can be overridden with custom Network Security Rules. The default value for this setting is false.
  /// [applicationTypeVersionsCleanupPolicy] The policy used to clean up unused versions.
  /// [auxiliarySubnets] Auxiliary subnets for the cluster.
  /// [azureActiveDirectory] The AAD authentication settings of the cluster.
  /// [clientConnectionPort] The port used for client connections to the cluster.
  /// [clients] Client certificates that are allowed to manage the cluster.
  /// [clusterCodeVersion] The Service Fabric runtime version of the cluster. This property is required when **clusterUpgradeMode** is set to 'Manual'. To get list of available Service Fabric versions for new clusters use [ClusterVersion API](./ClusterVersion.md). To get the list of available version for existing clusters use **availableClusterVersions**.
  /// [clusterName] The name of the cluster resource.
  /// [clusterUpgradeCadence] Indicates when new cluster runtime version upgrades will be applied after they are released. By default is Wave0. Only applies when **clusterUpgradeMode** is set to 'Automatic'.
  /// [clusterUpgradeMode] The upgrade mode of the cluster when new Service Fabric runtime version is available.
  /// [ddosProtectionPlanId] Specify the resource id of a DDoS network protection plan that will be associated with the virtual network of the cluster.
  /// [dnsName] The cluster dns name.
  /// [enableAutoOSUpgrade] Setting this to true enables automatic OS upgrade for the node types that are created using any platform OS image with version 'latest'. The default value for this setting is false.
  /// [enableHttpGatewayExclusiveAuthMode] If true, token-based authentication is not allowed on the HttpGatewayEndpoint. This is required to support TLS versions 1.3 and above. If token-based authentication is used, HttpGatewayTokenAuthConnectionPort must be defined.
  /// [enableIpv6] Setting this to true creates IPv6 address space for the default VNet used by the cluster. This setting cannot be changed once the cluster is created. The default value for this setting is false.
  /// [enableServicePublicIP] Setting this to true will link the IPv4 address as the ServicePublicIP of the IPv6 address. It can only be set to True if IPv6 is enabled on the cluster.
  /// [fabricSettings] The list of custom fabric settings to configure the cluster.
  /// [httpGatewayConnectionPort] The port used for HTTP connections to the cluster.
  /// [httpGatewayTokenAuthConnectionPort] The port used for token-auth based HTTPS connections to the cluster. Cannot be set to the same port as HttpGatewayEndpoint.
  /// [ipTags] The list of IP tags associated with the default public IP address of the cluster.
  /// [loadBalancingRules] Load balancing rules that are applied to the public load balancer of the cluster.
  /// [location] Azure resource location.
  /// [networkSecurityRules] Custom Network Security Rules that are applied to the Virtual Network of the cluster.
  /// [publicIPPrefixId] Specify the resource id of a public IPv4 prefix that the load balancer will allocate a public IPv4 address from. This setting cannot be changed once the cluster is created.
  /// [publicIPv6PrefixId] Specify the resource id of a public IPv6 prefix that the load balancer will allocate a public IPv6 address from. This setting cannot be changed once the cluster is created.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceEndpoints] Service endpoints for subnets in the cluster.
  /// [sku] The sku of the managed cluster
  /// [subnetId] If specified, the node types for the cluster are created in this subnet instead of the default VNet. The **networkSecurityRules** specified for the cluster are also applied to this subnet. This setting cannot be changed once the cluster is created.
  /// [tags] Azure resource tags.
  /// [upgradeDescription] The policy to use when upgrading the cluster.
  /// [useCustomVnet] For new clusters, this parameter indicates that it uses Bring your own VNet, but the subnet is specified at node type level; and for such clusters, the subnetId property is required for node types.
  /// [zonalResiliency] Indicates if the cluster has zone resiliency.
  /// [zonalUpdateMode] Indicates the update mode for Cross Az clusters.
  ManagedClusterArgs({
    pulumi.Output<List<String>>? addonFeatures,
    pulumi.Output<String>? adminPassword,
    required pulumi.Output<String> adminUserName,
    pulumi.Output<bool>? allowRdpAccess,
    pulumi.Output<ApplicationTypeVersionsCleanupPolicy>? applicationTypeVersionsCleanupPolicy,
    pulumi.Output<List<Subnet>>? auxiliarySubnets,
    pulumi.Output<AzureActiveDirectory>? azureActiveDirectory,
    pulumi.Output<int>? clientConnectionPort,
    pulumi.Output<List<ClientCertificate>>? clients,
    pulumi.Output<String>? clusterCodeVersion,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? clusterUpgradeCadence,
    pulumi.Output<String>? clusterUpgradeMode,
    pulumi.Output<String>? ddosProtectionPlanId,
    required pulumi.Output<String> dnsName,
    pulumi.Output<bool>? enableAutoOSUpgrade,
    pulumi.Output<bool>? enableHttpGatewayExclusiveAuthMode,
    pulumi.Output<bool>? enableIpv6,
    pulumi.Output<bool>? enableServicePublicIP,
    pulumi.Output<List<SettingsSectionDescription>>? fabricSettings,
    pulumi.Output<int>? httpGatewayConnectionPort,
    pulumi.Output<int>? httpGatewayTokenAuthConnectionPort,
    pulumi.Output<List<IpTag>>? ipTags,
    pulumi.Output<List<LoadBalancingRule>>? loadBalancingRules,
    pulumi.Output<String>? location,
    pulumi.Output<List<NetworkSecurityRule>>? networkSecurityRules,
    pulumi.Output<String>? publicIPPrefixId,
    pulumi.Output<String>? publicIPv6PrefixId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<ServiceEndpoint>>? serviceEndpoints,
    required pulumi.Output<Sku> sku,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ClusterUpgradePolicy>? upgradeDescription,
    pulumi.Output<bool>? useCustomVnet,
    pulumi.Output<bool>? zonalResiliency,
    pulumi.Output<String>? zonalUpdateMode,
  }) :
      addonFeatures = pulumi.Input.asOptionalInput<List<String>>(addonFeatures),
      adminPassword = pulumi.Input.asOptionalInput<String>(adminPassword),
      adminUserName = pulumi.Input.asInput<String>(adminUserName),
      allowRdpAccess = pulumi.Input.asOptionalInput<bool>(allowRdpAccess),
      applicationTypeVersionsCleanupPolicy = pulumi.Input.asOptionalInput<ApplicationTypeVersionsCleanupPolicy>(applicationTypeVersionsCleanupPolicy),
      auxiliarySubnets = pulumi.Input.asOptionalInput<List<Subnet>>(auxiliarySubnets),
      azureActiveDirectory = pulumi.Input.asOptionalInput<AzureActiveDirectory>(azureActiveDirectory),
      clientConnectionPort = pulumi.Input.asOptionalInput<int>(clientConnectionPort),
      clients = pulumi.Input.asOptionalInput<List<ClientCertificate>>(clients),
      clusterCodeVersion = pulumi.Input.asOptionalInput<String>(clusterCodeVersion),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterUpgradeCadence = pulumi.Input.asOptionalInput<String>(clusterUpgradeCadence),
      clusterUpgradeMode = pulumi.Input.asOptionalInput<String>(clusterUpgradeMode),
      ddosProtectionPlanId = pulumi.Input.asOptionalInput<String>(ddosProtectionPlanId),
      dnsName = pulumi.Input.asInput<String>(dnsName),
      enableAutoOSUpgrade = pulumi.Input.asOptionalInput<bool>(enableAutoOSUpgrade),
      enableHttpGatewayExclusiveAuthMode = pulumi.Input.asOptionalInput<bool>(enableHttpGatewayExclusiveAuthMode),
      enableIpv6 = pulumi.Input.asOptionalInput<bool>(enableIpv6),
      enableServicePublicIP = pulumi.Input.asOptionalInput<bool>(enableServicePublicIP),
      fabricSettings = pulumi.Input.asOptionalInput<List<SettingsSectionDescription>>(fabricSettings),
      httpGatewayConnectionPort = pulumi.Input.asOptionalInput<int>(httpGatewayConnectionPort),
      httpGatewayTokenAuthConnectionPort = pulumi.Input.asOptionalInput<int>(httpGatewayTokenAuthConnectionPort),
      ipTags = pulumi.Input.asOptionalInput<List<IpTag>>(ipTags),
      loadBalancingRules = pulumi.Input.asOptionalInput<List<LoadBalancingRule>>(loadBalancingRules),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkSecurityRules = pulumi.Input.asOptionalInput<List<NetworkSecurityRule>>(networkSecurityRules),
      publicIPPrefixId = pulumi.Input.asOptionalInput<String>(publicIPPrefixId),
      publicIPv6PrefixId = pulumi.Input.asOptionalInput<String>(publicIPv6PrefixId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceEndpoints = pulumi.Input.asOptionalInput<List<ServiceEndpoint>>(serviceEndpoints),
      sku = pulumi.Input.asInput<Sku>(sku),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      upgradeDescription = pulumi.Input.asOptionalInput<ClusterUpgradePolicy>(upgradeDescription),
      useCustomVnet = pulumi.Input.asOptionalInput<bool>(useCustomVnet),
      zonalResiliency = pulumi.Input.asOptionalInput<bool>(zonalResiliency),
      zonalUpdateMode = pulumi.Input.asOptionalInput<String>(zonalUpdateMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonFeatures': ?addonFeatures,
      'adminPassword': ?adminPassword,
      'adminUserName': adminUserName,
      'allowRdpAccess': ?allowRdpAccess,
      'applicationTypeVersionsCleanupPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationTypeVersionsCleanupPolicy, Map<String, dynamic>>(applicationTypeVersionsCleanupPolicy, (value) => value.toMap()),
      'auxiliarySubnets': ?pulumi.Input.mapOptionalInputValue<List<Subnet>, List<Map<String, dynamic>>>(auxiliarySubnets, (value) => pulumi.Input.encodeList<Subnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'azureActiveDirectory': ?pulumi.Input.mapOptionalInputValue<AzureActiveDirectory, Map<String, dynamic>>(azureActiveDirectory, (value) => value.toMap()),
      'clientConnectionPort': ?clientConnectionPort,
      'clients': ?pulumi.Input.mapOptionalInputValue<List<ClientCertificate>, List<Map<String, dynamic>>>(clients, (value) => pulumi.Input.encodeList<ClientCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterCodeVersion': ?clusterCodeVersion,
      'clusterName': ?clusterName,
      'clusterUpgradeCadence': ?clusterUpgradeCadence,
      'clusterUpgradeMode': ?clusterUpgradeMode,
      'ddosProtectionPlanId': ?ddosProtectionPlanId,
      'dnsName': dnsName,
      'enableAutoOSUpgrade': ?enableAutoOSUpgrade,
      'enableHttpGatewayExclusiveAuthMode': ?enableHttpGatewayExclusiveAuthMode,
      'enableIpv6': ?enableIpv6,
      'enableServicePublicIP': ?enableServicePublicIP,
      'fabricSettings': ?pulumi.Input.mapOptionalInputValue<List<SettingsSectionDescription>, List<Map<String, dynamic>>>(fabricSettings, (value) => pulumi.Input.encodeList<SettingsSectionDescription, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpGatewayConnectionPort': ?httpGatewayConnectionPort,
      'httpGatewayTokenAuthConnectionPort': ?httpGatewayTokenAuthConnectionPort,
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<IpTag>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<IpTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancingRules': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancingRule>, List<Map<String, dynamic>>>(loadBalancingRules, (value) => pulumi.Input.encodeList<LoadBalancingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'networkSecurityRules': ?pulumi.Input.mapOptionalInputValue<List<NetworkSecurityRule>, List<Map<String, dynamic>>>(networkSecurityRules, (value) => pulumi.Input.encodeList<NetworkSecurityRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicIPPrefixId': ?publicIPPrefixId,
      'publicIPv6PrefixId': ?publicIPv6PrefixId,
      'resourceGroupName': resourceGroupName,
      'serviceEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ServiceEndpoint>, List<Map<String, dynamic>>>(serviceEndpoints, (value) => pulumi.Input.encodeList<ServiceEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'subnetId': ?subnetId,
      'tags': ?tags,
      'upgradeDescription': ?pulumi.Input.mapOptionalInputValue<ClusterUpgradePolicy, Map<String, dynamic>>(upgradeDescription, (value) => value.toMap()),
      'useCustomVnet': ?useCustomVnet,
      'zonalResiliency': ?zonalResiliency,
      'zonalUpdateMode': ?zonalUpdateMode,
    };
  }

  factory ManagedClusterArgs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterArgs(
      addonFeatures: map['addonFeatures'] == null ? null : pulumi.Output.create<List<String>>((map['addonFeatures'] as List).cast<String>()),
      adminPassword: map['adminPassword'] == null ? null : pulumi.Output.create<String>(map['adminPassword'] as String),
      adminUserName: pulumi.Output.create<String>(map['adminUserName'] as String),
      allowRdpAccess: map['allowRdpAccess'] == null ? null : pulumi.Output.create<bool>(map['allowRdpAccess'] as bool),
      applicationTypeVersionsCleanupPolicy: map['applicationTypeVersionsCleanupPolicy'] == null ? null : pulumi.Output.create<ApplicationTypeVersionsCleanupPolicy>(ApplicationTypeVersionsCleanupPolicy.fromMap((map['applicationTypeVersionsCleanupPolicy'] as Map).cast<String, dynamic>())),
      auxiliarySubnets: map['auxiliarySubnets'] == null ? null : pulumi.Output.create<List<Subnet>>(pulumi.Input.decodeList<Subnet>(map['auxiliarySubnets'], (value) => Subnet.fromMap((value as Map).cast<String, dynamic>()))),
      azureActiveDirectory: map['azureActiveDirectory'] == null ? null : pulumi.Output.create<AzureActiveDirectory>(AzureActiveDirectory.fromMap((map['azureActiveDirectory'] as Map).cast<String, dynamic>())),
      clientConnectionPort: map['clientConnectionPort'] == null ? null : pulumi.Output.create<int>(map['clientConnectionPort'] as int),
      clients: map['clients'] == null ? null : pulumi.Output.create<List<ClientCertificate>>(pulumi.Input.decodeList<ClientCertificate>(map['clients'], (value) => ClientCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      clusterCodeVersion: map['clusterCodeVersion'] == null ? null : pulumi.Output.create<String>(map['clusterCodeVersion'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      clusterUpgradeCadence: map['clusterUpgradeCadence'] == null ? null : pulumi.Output.create<String>(map['clusterUpgradeCadence'] as String),
      clusterUpgradeMode: map['clusterUpgradeMode'] == null ? null : pulumi.Output.create<String>(map['clusterUpgradeMode'] as String),
      ddosProtectionPlanId: map['ddosProtectionPlanId'] == null ? null : pulumi.Output.create<String>(map['ddosProtectionPlanId'] as String),
      dnsName: pulumi.Output.create<String>(map['dnsName'] as String),
      enableAutoOSUpgrade: map['enableAutoOSUpgrade'] == null ? null : pulumi.Output.create<bool>(map['enableAutoOSUpgrade'] as bool),
      enableHttpGatewayExclusiveAuthMode: map['enableHttpGatewayExclusiveAuthMode'] == null ? null : pulumi.Output.create<bool>(map['enableHttpGatewayExclusiveAuthMode'] as bool),
      enableIpv6: map['enableIpv6'] == null ? null : pulumi.Output.create<bool>(map['enableIpv6'] as bool),
      enableServicePublicIP: map['enableServicePublicIP'] == null ? null : pulumi.Output.create<bool>(map['enableServicePublicIP'] as bool),
      fabricSettings: map['fabricSettings'] == null ? null : pulumi.Output.create<List<SettingsSectionDescription>>(pulumi.Input.decodeList<SettingsSectionDescription>(map['fabricSettings'], (value) => SettingsSectionDescription.fromMap((value as Map).cast<String, dynamic>()))),
      httpGatewayConnectionPort: map['httpGatewayConnectionPort'] == null ? null : pulumi.Output.create<int>(map['httpGatewayConnectionPort'] as int),
      httpGatewayTokenAuthConnectionPort: map['httpGatewayTokenAuthConnectionPort'] == null ? null : pulumi.Output.create<int>(map['httpGatewayTokenAuthConnectionPort'] as int),
      ipTags: map['ipTags'] == null ? null : pulumi.Output.create<List<IpTag>>(pulumi.Input.decodeList<IpTag>(map['ipTags'], (value) => IpTag.fromMap((value as Map).cast<String, dynamic>()))),
      loadBalancingRules: map['loadBalancingRules'] == null ? null : pulumi.Output.create<List<LoadBalancingRule>>(pulumi.Input.decodeList<LoadBalancingRule>(map['loadBalancingRules'], (value) => LoadBalancingRule.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkSecurityRules: map['networkSecurityRules'] == null ? null : pulumi.Output.create<List<NetworkSecurityRule>>(pulumi.Input.decodeList<NetworkSecurityRule>(map['networkSecurityRules'], (value) => NetworkSecurityRule.fromMap((value as Map).cast<String, dynamic>()))),
      publicIPPrefixId: map['publicIPPrefixId'] == null ? null : pulumi.Output.create<String>(map['publicIPPrefixId'] as String),
      publicIPv6PrefixId: map['publicIPv6PrefixId'] == null ? null : pulumi.Output.create<String>(map['publicIPv6PrefixId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceEndpoints: map['serviceEndpoints'] == null ? null : pulumi.Output.create<List<ServiceEndpoint>>(pulumi.Input.decodeList<ServiceEndpoint>(map['serviceEndpoints'], (value) => ServiceEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      sku: pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      upgradeDescription: map['upgradeDescription'] == null ? null : pulumi.Output.create<ClusterUpgradePolicy>(ClusterUpgradePolicy.fromMap((map['upgradeDescription'] as Map).cast<String, dynamic>())),
      useCustomVnet: map['useCustomVnet'] == null ? null : pulumi.Output.create<bool>(map['useCustomVnet'] as bool),
      zonalResiliency: map['zonalResiliency'] == null ? null : pulumi.Output.create<bool>(map['zonalResiliency'] as bool),
      zonalUpdateMode: map['zonalUpdateMode'] == null ? null : pulumi.Output.create<String>(map['zonalUpdateMode'] as String),
    );
  }
}

