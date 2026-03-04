// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_type_versions_cleanup_policy_response.dart';
import 'azure_active_directory_response.dart';
import 'client_certificate_response.dart';
import 'cluster_upgrade_policy_response.dart';
import 'ip_tag_response.dart';
import 'load_balancing_rule_response.dart';
import 'network_security_rule_response.dart';
import 'service_endpoint_response.dart';
import 'settings_section_description_response.dart';
import 'sku_response.dart';
import 'subnet_response.dart';
import 'system_data_response.dart';

/// Result data returned by getManagedCluster.
class GetManagedClusterResult {
  /// List of add-on features to enable on the cluster.
  final List<String>? addonFeatures;

  /// VM admin user password.
  final String? adminPassword;

  /// VM admin user name.
  final String adminUserName;

  /// Setting this to true enables RDP access to the VM. The default NSG rule opens RDP port to Internet which can be overridden with custom Network Security Rules. The default value for this setting is false.
  final bool? allowRdpAccess;

  /// The policy used to clean up unused versions.
  final ApplicationTypeVersionsCleanupPolicyResponse?
  applicationTypeVersionsCleanupPolicy;

  /// Auxiliary subnets for the cluster.
  final List<SubnetResponse>? auxiliarySubnets;

  /// The AAD authentication settings of the cluster.
  final AzureActiveDirectoryResponse? azureActiveDirectory;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The port used for client connections to the cluster.
  final int? clientConnectionPort;

  /// Client certificates that are allowed to manage the cluster.
  final List<ClientCertificateResponse>? clients;

  /// List of thumbprints of the cluster certificates.
  final List<String> clusterCertificateThumbprints;

  /// The Service Fabric runtime version of the cluster. This property is required when **clusterUpgradeMode** is set to 'Manual'. To get list of available Service Fabric versions for new clusters use [ClusterVersion API](./ClusterVersion.md). To get the list of available version for existing clusters use **availableClusterVersions**.
  final String? clusterCodeVersion;

  /// A service generated unique identifier for the cluster resource.
  final String clusterId;

  /// The current state of the cluster.
  final String clusterState;

  /// Indicates when new cluster runtime version upgrades will be applied after they are released. By default is Wave0. Only applies when **clusterUpgradeMode** is set to 'Automatic'.
  final String? clusterUpgradeCadence;

  /// The upgrade mode of the cluster when new Service Fabric runtime version is available.
  final String? clusterUpgradeMode;

  /// Specify the resource id of a DDoS network protection plan that will be associated with the virtual network of the cluster.
  final String? ddosProtectionPlanId;

  /// The cluster dns name.
  final String dnsName;

  /// Setting this to true enables automatic OS upgrade for the node types that are created using any platform OS image with version 'latest'. The default value for this setting is false.
  final bool? enableAutoOSUpgrade;

  /// If true, token-based authentication is not allowed on the HttpGatewayEndpoint. This is required to support TLS versions 1.3 and above. If token-based authentication is used, HttpGatewayTokenAuthConnectionPort must be defined.
  final bool? enableHttpGatewayExclusiveAuthMode;

  /// Setting this to true creates IPv6 address space for the default VNet used by the cluster. This setting cannot be changed once the cluster is created. The default value for this setting is false.
  final bool? enableIpv6;

  /// Setting this to true will link the IPv4 address as the ServicePublicIP of the IPv6 address. It can only be set to True if IPv6 is enabled on the cluster.
  final bool? enableServicePublicIP;

  /// Azure resource etag.
  final String etag;

  /// The list of custom fabric settings to configure the cluster.
  final List<SettingsSectionDescriptionResponse>? fabricSettings;

  /// The fully qualified domain name associated with the public load balancer of the cluster.
  final String fqdn;

  /// The port used for HTTP connections to the cluster.
  final int? httpGatewayConnectionPort;

  /// The port used for token-auth based HTTPS connections to the cluster. Cannot be set to the same port as HttpGatewayEndpoint.
  final int? httpGatewayTokenAuthConnectionPort;

  /// Azure resource identifier.
  final String id;

  /// The list of IP tags associated with the default public IP address of the cluster.
  final List<IpTagResponse>? ipTags;

  /// The IPv4 address associated with the public load balancer of the cluster.
  final String ipv4Address;

  /// IPv6 address for the cluster if IPv6 is enabled.
  final String ipv6Address;

  /// Load balancing rules that are applied to the public load balancer of the cluster.
  final List<LoadBalancingRuleResponse>? loadBalancingRules;

  /// Azure resource location.
  final String location;

  /// Azure resource name.
  final String name;

  /// Custom Network Security Rules that are applied to the Virtual Network of the cluster.
  final List<NetworkSecurityRuleResponse>? networkSecurityRules;

  /// The provisioning state of the managed cluster resource.
  final String provisioningState;

  /// Specify the resource id of a public IPv4 prefix that the load balancer will allocate a public IPv4 address from. This setting cannot be changed once the cluster is created.
  final String? publicIPPrefixId;

  /// Specify the resource id of a public IPv6 prefix that the load balancer will allocate a public IPv6 address from. This setting cannot be changed once the cluster is created.
  final String? publicIPv6PrefixId;

  /// Service endpoints for subnets in the cluster.
  final List<ServiceEndpointResponse>? serviceEndpoints;

  /// The sku of the managed cluster
  final SkuResponse sku;

  /// If specified, the node types for the cluster are created in this subnet instead of the default VNet. The **networkSecurityRules** specified for the cluster are also applied to this subnet. This setting cannot be changed once the cluster is created.
  final String? subnetId;

  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;

  /// Azure resource tags.
  final Map<String, String>? tags;

  /// Azure resource type.
  final String type;

  /// The policy to use when upgrading the cluster.
  final ClusterUpgradePolicyResponse? upgradeDescription;

  /// For new clusters, this parameter indicates that it uses Bring your own VNet, but the subnet is specified at node type level; and for such clusters, the subnetId property is required for node types.
  final bool? useCustomVnet;

  /// Indicates if the cluster has zone resiliency.
  final bool? zonalResiliency;

  /// Indicates the update mode for Cross Az clusters.
  final String? zonalUpdateMode;

  /// Creates a new [GetManagedClusterResult].
  /// [addonFeatures] List of add-on features to enable on the cluster.
  /// [adminPassword] VM admin user password.
  /// [adminUserName] VM admin user name.
  /// [allowRdpAccess] Setting this to true enables RDP access to the VM. The default NSG rule opens RDP port to Internet which can be overridden with custom Network Security Rules. The default value for this setting is false.
  /// [applicationTypeVersionsCleanupPolicy] The policy used to clean up unused versions.
  /// [auxiliarySubnets] Auxiliary subnets for the cluster.
  /// [azureActiveDirectory] The AAD authentication settings of the cluster.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientConnectionPort] The port used for client connections to the cluster.
  /// [clients] Client certificates that are allowed to manage the cluster.
  /// [clusterCertificateThumbprints] List of thumbprints of the cluster certificates.
  /// [clusterCodeVersion] The Service Fabric runtime version of the cluster. This property is required when **clusterUpgradeMode** is set to 'Manual'. To get list of available Service Fabric versions for new clusters use [ClusterVersion API](./ClusterVersion.md). To get the list of available version for existing clusters use **availableClusterVersions**.
  /// [clusterId] A service generated unique identifier for the cluster resource.
  /// [clusterState] The current state of the cluster.
  /// [clusterUpgradeCadence] Indicates when new cluster runtime version upgrades will be applied after they are released. By default is Wave0. Only applies when **clusterUpgradeMode** is set to 'Automatic'.
  /// [clusterUpgradeMode] The upgrade mode of the cluster when new Service Fabric runtime version is available.
  /// [ddosProtectionPlanId] Specify the resource id of a DDoS network protection plan that will be associated with the virtual network of the cluster.
  /// [dnsName] The cluster dns name.
  /// [enableAutoOSUpgrade] Setting this to true enables automatic OS upgrade for the node types that are created using any platform OS image with version 'latest'. The default value for this setting is false.
  /// [enableHttpGatewayExclusiveAuthMode] If true, token-based authentication is not allowed on the HttpGatewayEndpoint. This is required to support TLS versions 1.3 and above. If token-based authentication is used, HttpGatewayTokenAuthConnectionPort must be defined.
  /// [enableIpv6] Setting this to true creates IPv6 address space for the default VNet used by the cluster. This setting cannot be changed once the cluster is created. The default value for this setting is false.
  /// [enableServicePublicIP] Setting this to true will link the IPv4 address as the ServicePublicIP of the IPv6 address. It can only be set to True if IPv6 is enabled on the cluster.
  /// [etag] Azure resource etag.
  /// [fabricSettings] The list of custom fabric settings to configure the cluster.
  /// [fqdn] The fully qualified domain name associated with the public load balancer of the cluster.
  /// [httpGatewayConnectionPort] The port used for HTTP connections to the cluster.
  /// [httpGatewayTokenAuthConnectionPort] The port used for token-auth based HTTPS connections to the cluster. Cannot be set to the same port as HttpGatewayEndpoint.
  /// [id] Azure resource identifier.
  /// [ipTags] The list of IP tags associated with the default public IP address of the cluster.
  /// [ipv4Address] The IPv4 address associated with the public load balancer of the cluster.
  /// [ipv6Address] IPv6 address for the cluster if IPv6 is enabled.
  /// [loadBalancingRules] Load balancing rules that are applied to the public load balancer of the cluster.
  /// [location] Azure resource location.
  /// [name] Azure resource name.
  /// [networkSecurityRules] Custom Network Security Rules that are applied to the Virtual Network of the cluster.
  /// [provisioningState] The provisioning state of the managed cluster resource.
  /// [publicIPPrefixId] Specify the resource id of a public IPv4 prefix that the load balancer will allocate a public IPv4 address from. This setting cannot be changed once the cluster is created.
  /// [publicIPv6PrefixId] Specify the resource id of a public IPv6 prefix that the load balancer will allocate a public IPv6 address from. This setting cannot be changed once the cluster is created.
  /// [serviceEndpoints] Service endpoints for subnets in the cluster.
  /// [sku] The sku of the managed cluster
  /// [subnetId] If specified, the node types for the cluster are created in this subnet instead of the default VNet. The **networkSecurityRules** specified for the cluster are also applied to this subnet. This setting cannot be changed once the cluster is created.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Azure resource tags.
  /// [type] Azure resource type.
  /// [upgradeDescription] The policy to use when upgrading the cluster.
  /// [useCustomVnet] For new clusters, this parameter indicates that it uses Bring your own VNet, but the subnet is specified at node type level; and for such clusters, the subnetId property is required for node types.
  /// [zonalResiliency] Indicates if the cluster has zone resiliency.
  /// [zonalUpdateMode] Indicates the update mode for Cross Az clusters.
  GetManagedClusterResult({
    this.addonFeatures,
    this.adminPassword,
    required this.adminUserName,
    this.allowRdpAccess,
    this.applicationTypeVersionsCleanupPolicy,
    this.auxiliarySubnets,
    this.azureActiveDirectory,
    required this.azureApiVersion,
    this.clientConnectionPort,
    this.clients,
    required this.clusterCertificateThumbprints,
    this.clusterCodeVersion,
    required this.clusterId,
    required this.clusterState,
    this.clusterUpgradeCadence,
    this.clusterUpgradeMode,
    this.ddosProtectionPlanId,
    required this.dnsName,
    this.enableAutoOSUpgrade,
    this.enableHttpGatewayExclusiveAuthMode,
    this.enableIpv6,
    this.enableServicePublicIP,
    required this.etag,
    this.fabricSettings,
    required this.fqdn,
    this.httpGatewayConnectionPort,
    this.httpGatewayTokenAuthConnectionPort,
    required this.id,
    this.ipTags,
    required this.ipv4Address,
    required this.ipv6Address,
    this.loadBalancingRules,
    required this.location,
    required this.name,
    this.networkSecurityRules,
    required this.provisioningState,
    this.publicIPPrefixId,
    this.publicIPv6PrefixId,
    this.serviceEndpoints,
    required this.sku,
    this.subnetId,
    required this.systemData,
    this.tags,
    required this.type,
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
          ?applicationTypeVersionsCleanupPolicy?.toMap(),
      'auxiliarySubnets': ?(() {
        final guardedValue = auxiliarySubnets;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
      'azureActiveDirectory': ?azureActiveDirectory?.toMap(),
      'azureApiVersion': azureApiVersion,
      'clientConnectionPort': ?clientConnectionPort,
      'clients': ?(() {
        final guardedValue = clients;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ClientCertificateResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'clusterCertificateThumbprints': clusterCertificateThumbprints,
      'clusterCodeVersion': ?clusterCodeVersion,
      'clusterId': clusterId,
      'clusterState': clusterState,
      'clusterUpgradeCadence': ?clusterUpgradeCadence,
      'clusterUpgradeMode': ?clusterUpgradeMode,
      'ddosProtectionPlanId': ?ddosProtectionPlanId,
      'dnsName': dnsName,
      'enableAutoOSUpgrade': ?enableAutoOSUpgrade,
      'enableHttpGatewayExclusiveAuthMode': ?enableHttpGatewayExclusiveAuthMode,
      'enableIpv6': ?enableIpv6,
      'enableServicePublicIP': ?enableServicePublicIP,
      'etag': etag,
      'fabricSettings': ?(() {
        final guardedValue = fabricSettings;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          SettingsSectionDescriptionResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'fqdn': fqdn,
      'httpGatewayConnectionPort': ?httpGatewayConnectionPort,
      'httpGatewayTokenAuthConnectionPort': ?httpGatewayTokenAuthConnectionPort,
      'id': id,
      'ipTags': ?(() {
        final guardedValue = ipTags;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<IpTagResponse, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
      'ipv4Address': ipv4Address,
      'ipv6Address': ipv6Address,
      'loadBalancingRules': ?(() {
        final guardedValue = loadBalancingRules;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          LoadBalancingRuleResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'location': location,
      'name': name,
      'networkSecurityRules': ?(() {
        final guardedValue = networkSecurityRules;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          NetworkSecurityRuleResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'provisioningState': provisioningState,
      'publicIPPrefixId': ?publicIPPrefixId,
      'publicIPv6PrefixId': ?publicIPv6PrefixId,
      'serviceEndpoints': ?(() {
        final guardedValue = serviceEndpoints;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ServiceEndpointResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'sku': sku.toMap(),
      'subnetId': ?subnetId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'upgradeDescription': ?upgradeDescription?.toMap(),
      'useCustomVnet': ?useCustomVnet,
      'zonalResiliency': ?zonalResiliency,
      'zonalUpdateMode': ?zonalUpdateMode,
    };
  }

  factory GetManagedClusterResult.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterResult(
      addonFeatures: (() {
        final guardedValue = map['addonFeatures'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      adminPassword: (() {
        final guardedValue = map['adminPassword'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      adminUserName: map['adminUserName'] as String,
      allowRdpAccess: (() {
        final guardedValue = map['allowRdpAccess'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      applicationTypeVersionsCleanupPolicy: (() {
        final guardedValue = map['applicationTypeVersionsCleanupPolicy'];
        if (guardedValue == null) return null;
        return ApplicationTypeVersionsCleanupPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      auxiliarySubnets: (() {
        final guardedValue = map['auxiliarySubnets'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<SubnetResponse>(
          guardedValue,
          (value) =>
              SubnetResponse.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
      azureActiveDirectory: (() {
        final guardedValue = map['azureActiveDirectory'];
        if (guardedValue == null) return null;
        return AzureActiveDirectoryResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      clientConnectionPort: (() {
        final guardedValue = map['clientConnectionPort'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      clients: (() {
        final guardedValue = map['clients'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ClientCertificateResponse>(
          guardedValue,
          (value) => ClientCertificateResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clusterCertificateThumbprints:
          (map['clusterCertificateThumbprints'] as List).cast<String>(),
      clusterCodeVersion: (() {
        final guardedValue = map['clusterCodeVersion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      clusterId: map['clusterId'] as String,
      clusterState: map['clusterState'] as String,
      clusterUpgradeCadence: (() {
        final guardedValue = map['clusterUpgradeCadence'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      clusterUpgradeMode: (() {
        final guardedValue = map['clusterUpgradeMode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      ddosProtectionPlanId: (() {
        final guardedValue = map['ddosProtectionPlanId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      dnsName: map['dnsName'] as String,
      enableAutoOSUpgrade: (() {
        final guardedValue = map['enableAutoOSUpgrade'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      enableHttpGatewayExclusiveAuthMode: (() {
        final guardedValue = map['enableHttpGatewayExclusiveAuthMode'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      enableIpv6: (() {
        final guardedValue = map['enableIpv6'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      enableServicePublicIP: (() {
        final guardedValue = map['enableServicePublicIP'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      etag: map['etag'] as String,
      fabricSettings: (() {
        final guardedValue = map['fabricSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<SettingsSectionDescriptionResponse>(
          guardedValue,
          (value) => SettingsSectionDescriptionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fqdn: map['fqdn'] as String,
      httpGatewayConnectionPort: (() {
        final guardedValue = map['httpGatewayConnectionPort'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      httpGatewayTokenAuthConnectionPort: (() {
        final guardedValue = map['httpGatewayTokenAuthConnectionPort'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      id: map['id'] as String,
      ipTags: (() {
        final guardedValue = map['ipTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<IpTagResponse>(
          guardedValue,
          (value) =>
              IpTagResponse.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
      ipv4Address: map['ipv4Address'] as String,
      ipv6Address: map['ipv6Address'] as String,
      loadBalancingRules: (() {
        final guardedValue = map['loadBalancingRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<LoadBalancingRuleResponse>(
          guardedValue,
          (value) => LoadBalancingRuleResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: map['location'] as String,
      name: map['name'] as String,
      networkSecurityRules: (() {
        final guardedValue = map['networkSecurityRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<NetworkSecurityRuleResponse>(
          guardedValue,
          (value) => NetworkSecurityRuleResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: map['provisioningState'] as String,
      publicIPPrefixId: (() {
        final guardedValue = map['publicIPPrefixId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      publicIPv6PrefixId: (() {
        final guardedValue = map['publicIPv6PrefixId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      serviceEndpoints: (() {
        final guardedValue = map['serviceEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ServiceEndpointResponse>(
          guardedValue,
          (value) => ServiceEndpointResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      upgradeDescription: (() {
        final guardedValue = map['upgradeDescription'];
        if (guardedValue == null) return null;
        return ClusterUpgradePolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      useCustomVnet: (() {
        final guardedValue = map['useCustomVnet'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      zonalResiliency: (() {
        final guardedValue = map['zonalResiliency'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      zonalUpdateMode: (() {
        final guardedValue = map['zonalUpdateMode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
