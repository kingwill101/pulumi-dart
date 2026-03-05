// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_network_performance_config.dart';
import 'default_snat_status.dart';
import 'dnsconfig.dart';
import 'gateway_apiconfig.dart';
import 'network_config_datapath_provider.dart';
import 'network_config_private_ipv6_google_access.dart';
import 'service_external_ips_config.dart';

/// NetworkConfig reports the relative names of network & subnetwork.
class NetworkConfig {
  /// The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  final pulumi.Input<NetworkConfigDatapathProvider>? datapathProvider;
  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  final pulumi.Input<DefaultSnatStatus>? defaultSnatStatus;
  /// DNSConfig contains clusterDNS config for this cluster.
  final pulumi.Input<DNSConfig>? dnsConfig;
  /// Whether FQDN Network Policy is enabled on this cluster.
  final pulumi.Input<bool>? enableFqdnNetworkPolicy;
  /// Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  final pulumi.Input<bool>? enableIntraNodeVisibility;
  /// Whether L4ILB Subsetting is enabled for this cluster.
  final pulumi.Input<bool>? enableL4ilbSubsetting;
  /// Whether multi-networking is enabled for this cluster.
  final pulumi.Input<bool>? enableMultiNetworking;
  /// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  final pulumi.Input<GatewayAPIConfig>? gatewayApiConfig;
  /// Network bandwidth tier configuration.
  final pulumi.Input<ClusterNetworkPerformanceConfig>? networkPerformanceConfig;
  /// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  final pulumi.Input<NetworkConfigPrivateIpv6GoogleAccess>? privateIpv6GoogleAccess;
  /// ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  final pulumi.Input<ServiceExternalIPsConfig>? serviceExternalIpsConfig;

  /// Creates a new [NetworkConfig].
  /// [datapathProvider] The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  /// [defaultSnatStatus] Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  /// [dnsConfig] DNSConfig contains clusterDNS config for this cluster.
  /// [enableFqdnNetworkPolicy] Whether FQDN Network Policy is enabled on this cluster.
  /// [enableIntraNodeVisibility] Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  /// [enableL4ilbSubsetting] Whether L4ILB Subsetting is enabled for this cluster.
  /// [enableMultiNetworking] Whether multi-networking is enabled for this cluster.
  /// [gatewayApiConfig] GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  /// [networkPerformanceConfig] Network bandwidth tier configuration.
  /// [privateIpv6GoogleAccess] The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  /// [serviceExternalIpsConfig] ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  NetworkConfig({
    this.datapathProvider,
    this.defaultSnatStatus,
    this.dnsConfig,
    this.enableFqdnNetworkPolicy,
    this.enableIntraNodeVisibility,
    this.enableL4ilbSubsetting,
    this.enableMultiNetworking,
    this.gatewayApiConfig,
    this.networkPerformanceConfig,
    this.privateIpv6GoogleAccess,
    this.serviceExternalIpsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datapathProvider': ?pulumi.Input.mapOptionalInputValue<NetworkConfigDatapathProvider, String>(datapathProvider, (value) => value.wireValue),
      'defaultSnatStatus': ?pulumi.Input.mapOptionalInputValue<DefaultSnatStatus, Map<String, dynamic>>(defaultSnatStatus, (value) => value.toMap()),
      'dnsConfig': ?pulumi.Input.mapOptionalInputValue<DNSConfig, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'enableFqdnNetworkPolicy': ?enableFqdnNetworkPolicy,
      'enableIntraNodeVisibility': ?enableIntraNodeVisibility,
      'enableL4ilbSubsetting': ?enableL4ilbSubsetting,
      'enableMultiNetworking': ?enableMultiNetworking,
      'gatewayApiConfig': ?pulumi.Input.mapOptionalInputValue<GatewayAPIConfig, Map<String, dynamic>>(gatewayApiConfig, (value) => value.toMap()),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'privateIpv6GoogleAccess': ?pulumi.Input.mapOptionalInputValue<NetworkConfigPrivateIpv6GoogleAccess, String>(privateIpv6GoogleAccess, (value) => value.wireValue),
      'serviceExternalIpsConfig': ?pulumi.Input.mapOptionalInputValue<ServiceExternalIPsConfig, Map<String, dynamic>>(serviceExternalIpsConfig, (value) => value.toMap()),
    };
  }

  factory NetworkConfig.fromMap(Map<String, dynamic> map) {
    return NetworkConfig(
      datapathProvider: (() { final guardedValue = map['datapathProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConfigDatapathProvider.fromValue(guardedValue as String)); })(),
      defaultSnatStatus: (() { final guardedValue = map['defaultSnatStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultSnatStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dnsConfig: (() { final guardedValue = map['dnsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DNSConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableFqdnNetworkPolicy: (() { final guardedValue = map['enableFqdnNetworkPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableIntraNodeVisibility: (() { final guardedValue = map['enableIntraNodeVisibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableL4ilbSubsetting: (() { final guardedValue = map['enableL4ilbSubsetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableMultiNetworking: (() { final guardedValue = map['enableMultiNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gatewayApiConfig: (() { final guardedValue = map['gatewayApiConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayAPIConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkPerformanceConfig: (() { final guardedValue = map['networkPerformanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateIpv6GoogleAccess: (() { final guardedValue = map['privateIpv6GoogleAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConfigPrivateIpv6GoogleAccess.fromValue(guardedValue as String)); })(),
      serviceExternalIpsConfig: (() { final guardedValue = map['serviceExternalIpsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceExternalIPsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

