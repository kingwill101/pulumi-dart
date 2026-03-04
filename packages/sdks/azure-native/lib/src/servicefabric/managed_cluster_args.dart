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
  final pulumi.Input<ApplicationTypeVersionsCleanupPolicy>?
  applicationTypeVersionsCleanupPolicy;

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
    this.addonFeatures,
    this.adminPassword,
    required this.adminUserName,
    this.allowRdpAccess,
    this.applicationTypeVersionsCleanupPolicy,
    this.auxiliarySubnets,
    this.azureActiveDirectory,
    this.clientConnectionPort,
    this.clients,
    this.clusterCodeVersion,
    this.clusterName,
    this.clusterUpgradeCadence,
    this.clusterUpgradeMode,
    this.ddosProtectionPlanId,
    required this.dnsName,
    this.enableAutoOSUpgrade,
    this.enableHttpGatewayExclusiveAuthMode,
    this.enableIpv6,
    this.enableServicePublicIP,
    this.fabricSettings,
    this.httpGatewayConnectionPort,
    this.httpGatewayTokenAuthConnectionPort,
    this.ipTags,
    this.loadBalancingRules,
    this.location,
    this.networkSecurityRules,
    this.publicIPPrefixId,
    this.publicIPv6PrefixId,
    required this.resourceGroupName,
    this.serviceEndpoints,
    required this.sku,
    this.subnetId,
    this.tags,
    this.upgradeDescription,
    this.useCustomVnet,
    this.zonalResiliency,
    this.zonalUpdateMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonFeatures': ?addonFeatures,
      'adminPassword': ?adminPassword,
      'adminUserName': adminUserName,
      'allowRdpAccess': ?allowRdpAccess,
      'applicationTypeVersionsCleanupPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationTypeVersionsCleanupPolicy,
            Map<String, dynamic>
          >(applicationTypeVersionsCleanupPolicy, (value) => value.toMap()),
      'auxiliarySubnets':
          ?pulumi.Input.mapOptionalInputValue<
            List<Subnet>,
            List<Map<String, dynamic>>
          >(
            auxiliarySubnets,
            (value) => pulumi.Input.encodeList<Subnet, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'azureActiveDirectory':
          ?pulumi.Input.mapOptionalInputValue<
            AzureActiveDirectory,
            Map<String, dynamic>
          >(azureActiveDirectory, (value) => value.toMap()),
      'clientConnectionPort': ?clientConnectionPort,
      'clients':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClientCertificate>,
            List<Map<String, dynamic>>
          >(
            clients,
            (value) =>
                pulumi.Input.encodeList<
                  ClientCertificate,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'fabricSettings':
          ?pulumi.Input.mapOptionalInputValue<
            List<SettingsSectionDescription>,
            List<Map<String, dynamic>>
          >(
            fabricSettings,
            (value) =>
                pulumi.Input.encodeList<
                  SettingsSectionDescription,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'httpGatewayConnectionPort': ?httpGatewayConnectionPort,
      'httpGatewayTokenAuthConnectionPort': ?httpGatewayTokenAuthConnectionPort,
      'ipTags':
          ?pulumi.Input.mapOptionalInputValue<
            List<IpTag>,
            List<Map<String, dynamic>>
          >(
            ipTags,
            (value) => pulumi.Input.encodeList<IpTag, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'loadBalancingRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<LoadBalancingRule>,
            List<Map<String, dynamic>>
          >(
            loadBalancingRules,
            (value) =>
                pulumi.Input.encodeList<
                  LoadBalancingRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'location': ?location,
      'networkSecurityRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkSecurityRule>,
            List<Map<String, dynamic>>
          >(
            networkSecurityRules,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkSecurityRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'publicIPPrefixId': ?publicIPPrefixId,
      'publicIPv6PrefixId': ?publicIPv6PrefixId,
      'resourceGroupName': resourceGroupName,
      'serviceEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceEndpoint>,
            List<Map<String, dynamic>>
          >(
            serviceEndpoints,
            (value) =>
                pulumi.Input.encodeList<ServiceEndpoint, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'subnetId': ?subnetId,
      'tags': ?tags,
      'upgradeDescription':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterUpgradePolicy,
            Map<String, dynamic>
          >(upgradeDescription, (value) => value.toMap()),
      'useCustomVnet': ?useCustomVnet,
      'zonalResiliency': ?zonalResiliency,
      'zonalUpdateMode': ?zonalUpdateMode,
    };
  }

  factory ManagedClusterArgs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterArgs(
      addonFeatures: (() {
        final guardedValue = map['addonFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      adminPassword: (() {
        final guardedValue = map['adminPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      adminUserName: pulumi.Input.fromValue(map['adminUserName'] as String),
      allowRdpAccess: (() {
        final guardedValue = map['allowRdpAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      applicationTypeVersionsCleanupPolicy: (() {
        final guardedValue = map['applicationTypeVersionsCleanupPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationTypeVersionsCleanupPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      auxiliarySubnets: (() {
        final guardedValue = map['auxiliarySubnets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Subnet>(
            guardedValue,
            (value) => Subnet.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      azureActiveDirectory: (() {
        final guardedValue = map['azureActiveDirectory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureActiveDirectory.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clientConnectionPort: (() {
        final guardedValue = map['clientConnectionPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      clients: (() {
        final guardedValue = map['clients'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClientCertificate>(
            guardedValue,
            (value) => ClientCertificate.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      clusterCodeVersion: (() {
        final guardedValue = map['clusterCodeVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterUpgradeCadence: (() {
        final guardedValue = map['clusterUpgradeCadence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterUpgradeMode: (() {
        final guardedValue = map['clusterUpgradeMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ddosProtectionPlanId: (() {
        final guardedValue = map['ddosProtectionPlanId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      enableAutoOSUpgrade: (() {
        final guardedValue = map['enableAutoOSUpgrade'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableHttpGatewayExclusiveAuthMode: (() {
        final guardedValue = map['enableHttpGatewayExclusiveAuthMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableIpv6: (() {
        final guardedValue = map['enableIpv6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableServicePublicIP: (() {
        final guardedValue = map['enableServicePublicIP'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fabricSettings: (() {
        final guardedValue = map['fabricSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SettingsSectionDescription>(
            guardedValue,
            (value) => SettingsSectionDescription.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      httpGatewayConnectionPort: (() {
        final guardedValue = map['httpGatewayConnectionPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      httpGatewayTokenAuthConnectionPort: (() {
        final guardedValue = map['httpGatewayTokenAuthConnectionPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ipTags: (() {
        final guardedValue = map['ipTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IpTag>(
            guardedValue,
            (value) => IpTag.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      loadBalancingRules: (() {
        final guardedValue = map['loadBalancingRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LoadBalancingRule>(
            guardedValue,
            (value) => LoadBalancingRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkSecurityRules: (() {
        final guardedValue = map['networkSecurityRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkSecurityRule>(
            guardedValue,
            (value) => NetworkSecurityRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      publicIPPrefixId: (() {
        final guardedValue = map['publicIPPrefixId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicIPv6PrefixId: (() {
        final guardedValue = map['publicIPv6PrefixId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceEndpoints: (() {
        final guardedValue = map['serviceEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServiceEndpoint>(
            guardedValue,
            (value) =>
                ServiceEndpoint.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      sku: pulumi.Input.fromValue(
        Sku.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      ),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      upgradeDescription: (() {
        final guardedValue = map['upgradeDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterUpgradePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      useCustomVnet: (() {
        final guardedValue = map['useCustomVnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      zonalResiliency: (() {
        final guardedValue = map['zonalResiliency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      zonalUpdateMode: (() {
        final guardedValue = map['zonalUpdateMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
