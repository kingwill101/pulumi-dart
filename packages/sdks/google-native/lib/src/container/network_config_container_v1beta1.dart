// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_network_performance_config_container_v1beta1.dart';
import 'default_snat_status_container_v1beta1.dart';
import 'dnsconfig_container_v1beta1.dart';
import 'gateway_apiconfig_container_v1beta1.dart';
import 'network_config_datapath_provider_container_v1beta1.dart';
import 'network_config_in_transit_encryption_config.dart';
import 'network_config_private_ipv6_google_access_container_v1beta1.dart';
import 'service_external_ips_config_container_v1beta1.dart';

/// NetworkConfig reports the relative names of network & subnetwork.
class NetworkConfigContainerV1beta1 {
  /// The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  final pulumi.Input<NetworkConfigDatapathProviderContainerV1beta1>? datapathProvider;
  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  final pulumi.Input<DefaultSnatStatusContainerV1beta1>? defaultSnatStatus;
  /// DNSConfig contains clusterDNS config for this cluster.
  final pulumi.Input<DNSConfigContainerV1beta1>? dnsConfig;
  /// Whether FQDN Network Policy is enabled on this cluster.
  final pulumi.Input<bool>? enableFqdnNetworkPolicy;
  /// Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  final pulumi.Input<bool>? enableIntraNodeVisibility;
  /// Whether L4ILB Subsetting is enabled for this cluster.
  final pulumi.Input<bool>? enableL4ilbSubsetting;
  /// Whether multi-networking is enabled for this cluster.
  final pulumi.Input<bool>? enableMultiNetworking;
  /// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  final pulumi.Input<GatewayAPIConfigContainerV1beta1>? gatewayApiConfig;
  /// Specify the details of in-transit encryption.
  final pulumi.Input<NetworkConfigInTransitEncryptionConfig>? inTransitEncryptionConfig;
  /// Network bandwidth tier configuration.
  final pulumi.Input<ClusterNetworkPerformanceConfigContainerV1beta1>? networkPerformanceConfig;
  /// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  final pulumi.Input<NetworkConfigPrivateIpv6GoogleAccessContainerV1beta1>? privateIpv6GoogleAccess;
  /// ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  final pulumi.Input<ServiceExternalIPsConfigContainerV1beta1>? serviceExternalIpsConfig;

  /// Creates a new [NetworkConfigContainerV1beta1].
  /// [datapathProvider] The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  /// [defaultSnatStatus] Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  /// [dnsConfig] DNSConfig contains clusterDNS config for this cluster.
  /// [enableFqdnNetworkPolicy] Whether FQDN Network Policy is enabled on this cluster.
  /// [enableIntraNodeVisibility] Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  /// [enableL4ilbSubsetting] Whether L4ILB Subsetting is enabled for this cluster.
  /// [enableMultiNetworking] Whether multi-networking is enabled for this cluster.
  /// [gatewayApiConfig] GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  /// [inTransitEncryptionConfig] Specify the details of in-transit encryption.
  /// [networkPerformanceConfig] Network bandwidth tier configuration.
  /// [privateIpv6GoogleAccess] The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  /// [serviceExternalIpsConfig] ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  NetworkConfigContainerV1beta1({
    this.datapathProvider,
    this.defaultSnatStatus,
    this.dnsConfig,
    this.enableFqdnNetworkPolicy,
    this.enableIntraNodeVisibility,
    this.enableL4ilbSubsetting,
    this.enableMultiNetworking,
    this.gatewayApiConfig,
    this.inTransitEncryptionConfig,
    this.networkPerformanceConfig,
    this.privateIpv6GoogleAccess,
    this.serviceExternalIpsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datapathProvider': ?pulumi.Input.mapOptionalInputValue<NetworkConfigDatapathProviderContainerV1beta1, String>(datapathProvider, (value) => value.value),
      'defaultSnatStatus': ?pulumi.Input.mapOptionalInputValue<DefaultSnatStatusContainerV1beta1, Map<String, dynamic>>(defaultSnatStatus, (value) => value.toMap()),
      'dnsConfig': ?pulumi.Input.mapOptionalInputValue<DNSConfigContainerV1beta1, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'enableFqdnNetworkPolicy': ?enableFqdnNetworkPolicy,
      'enableIntraNodeVisibility': ?enableIntraNodeVisibility,
      'enableL4ilbSubsetting': ?enableL4ilbSubsetting,
      'enableMultiNetworking': ?enableMultiNetworking,
      'gatewayApiConfig': ?pulumi.Input.mapOptionalInputValue<GatewayAPIConfigContainerV1beta1, Map<String, dynamic>>(gatewayApiConfig, (value) => value.toMap()),
      'inTransitEncryptionConfig': ?pulumi.Input.mapOptionalInputValue<NetworkConfigInTransitEncryptionConfig, String>(inTransitEncryptionConfig, (value) => value.value),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkPerformanceConfigContainerV1beta1, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'privateIpv6GoogleAccess': ?pulumi.Input.mapOptionalInputValue<NetworkConfigPrivateIpv6GoogleAccessContainerV1beta1, String>(privateIpv6GoogleAccess, (value) => value.value),
      'serviceExternalIpsConfig': ?pulumi.Input.mapOptionalInputValue<ServiceExternalIPsConfigContainerV1beta1, Map<String, dynamic>>(serviceExternalIpsConfig, (value) => value.toMap()),
    };
  }

  factory NetworkConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigContainerV1beta1(
      datapathProvider: map['datapathProvider'] == null ? null : (NetworkConfigDatapathProviderContainerV1beta1.fromValue(map['datapathProvider']! as String)).input(),
      defaultSnatStatus: map['defaultSnatStatus'] == null ? null : (DefaultSnatStatusContainerV1beta1.fromMap((map['defaultSnatStatus']! as Map).cast<String, dynamic>())).input(),
      dnsConfig: map['dnsConfig'] == null ? null : (DNSConfigContainerV1beta1.fromMap((map['dnsConfig']! as Map).cast<String, dynamic>())).input(),
      enableFqdnNetworkPolicy: map['enableFqdnNetworkPolicy'] == null ? null : (map['enableFqdnNetworkPolicy']! as bool).input(),
      enableIntraNodeVisibility: map['enableIntraNodeVisibility'] == null ? null : (map['enableIntraNodeVisibility']! as bool).input(),
      enableL4ilbSubsetting: map['enableL4ilbSubsetting'] == null ? null : (map['enableL4ilbSubsetting']! as bool).input(),
      enableMultiNetworking: map['enableMultiNetworking'] == null ? null : (map['enableMultiNetworking']! as bool).input(),
      gatewayApiConfig: map['gatewayApiConfig'] == null ? null : (GatewayAPIConfigContainerV1beta1.fromMap((map['gatewayApiConfig']! as Map).cast<String, dynamic>())).input(),
      inTransitEncryptionConfig: map['inTransitEncryptionConfig'] == null ? null : (NetworkConfigInTransitEncryptionConfig.fromValue(map['inTransitEncryptionConfig']! as String)).input(),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null ? null : (ClusterNetworkPerformanceConfigContainerV1beta1.fromMap((map['networkPerformanceConfig']! as Map).cast<String, dynamic>())).input(),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null ? null : (NetworkConfigPrivateIpv6GoogleAccessContainerV1beta1.fromValue(map['privateIpv6GoogleAccess']! as String)).input(),
      serviceExternalIpsConfig: map['serviceExternalIpsConfig'] == null ? null : (ServiceExternalIPsConfigContainerV1beta1.fromMap((map['serviceExternalIpsConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

