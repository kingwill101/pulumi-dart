// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_network_performance_config_response_container_v1beta1.dart';
import 'default_snat_status_response_container_v1beta1.dart';
import 'dnsconfig_response_container_v1beta1.dart';
import 'gateway_apiconfig_response_container_v1beta1.dart';
import 'service_external_ips_config_response_container_v1beta1.dart';

/// NetworkConfig reports the relative names of network & subnetwork.
class NetworkConfigResponseContainerV1beta1 {
  /// The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  final pulumi.Input<String> datapathProvider;
  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  final pulumi.Input<DefaultSnatStatusResponseContainerV1beta1> defaultSnatStatus;
  /// DNSConfig contains clusterDNS config for this cluster.
  final pulumi.Input<DNSConfigResponseContainerV1beta1> dnsConfig;
  /// Whether FQDN Network Policy is enabled on this cluster.
  final pulumi.Input<bool> enableFqdnNetworkPolicy;
  /// Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  final pulumi.Input<bool> enableIntraNodeVisibility;
  /// Whether L4ILB Subsetting is enabled for this cluster.
  final pulumi.Input<bool> enableL4ilbSubsetting;
  /// Whether multi-networking is enabled for this cluster.
  final pulumi.Input<bool> enableMultiNetworking;
  /// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  final pulumi.Input<GatewayAPIConfigResponseContainerV1beta1> gatewayApiConfig;
  /// Specify the details of in-transit encryption.
  final pulumi.Input<String> inTransitEncryptionConfig;
  /// The relative name of the Google Compute Engine network(https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. Example: projects/my-project/global/networks/my-network
  final pulumi.Input<String> network;
  /// Network bandwidth tier configuration.
  final pulumi.Input<ClusterNetworkPerformanceConfigResponseContainerV1beta1> networkPerformanceConfig;
  /// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  final pulumi.Input<String> privateIpv6GoogleAccess;
  /// ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  final pulumi.Input<ServiceExternalIPsConfigResponseContainerV1beta1> serviceExternalIpsConfig;
  /// The relative name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/vpc) to which the cluster is connected. Example: projects/my-project/regions/us-central1/subnetworks/my-subnet
  final pulumi.Input<String> subnetwork;

  /// Creates a new [NetworkConfigResponseContainerV1beta1].
  /// [datapathProvider] The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  /// [defaultSnatStatus] Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  /// [dnsConfig] DNSConfig contains clusterDNS config for this cluster.
  /// [enableFqdnNetworkPolicy] Whether FQDN Network Policy is enabled on this cluster.
  /// [enableIntraNodeVisibility] Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  /// [enableL4ilbSubsetting] Whether L4ILB Subsetting is enabled for this cluster.
  /// [enableMultiNetworking] Whether multi-networking is enabled for this cluster.
  /// [gatewayApiConfig] GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  /// [inTransitEncryptionConfig] Specify the details of in-transit encryption.
  /// [network] The relative name of the Google Compute Engine network(https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. Example: projects/my-project/global/networks/my-network
  /// [networkPerformanceConfig] Network bandwidth tier configuration.
  /// [privateIpv6GoogleAccess] The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  /// [serviceExternalIpsConfig] ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  /// [subnetwork] The relative name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/vpc) to which the cluster is connected. Example: projects/my-project/regions/us-central1/subnetworks/my-subnet
  const NetworkConfigResponseContainerV1beta1({
    required this.datapathProvider,
    required this.defaultSnatStatus,
    required this.dnsConfig,
    required this.enableFqdnNetworkPolicy,
    required this.enableIntraNodeVisibility,
    required this.enableL4ilbSubsetting,
    required this.enableMultiNetworking,
    required this.gatewayApiConfig,
    required this.inTransitEncryptionConfig,
    required this.network,
    required this.networkPerformanceConfig,
    required this.privateIpv6GoogleAccess,
    required this.serviceExternalIpsConfig,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datapathProvider': datapathProvider,
      'defaultSnatStatus': pulumi.Input.mapInputValue<DefaultSnatStatusResponseContainerV1beta1, Map<String, dynamic>>(defaultSnatStatus, (value) => value.toMap()),
      'dnsConfig': pulumi.Input.mapInputValue<DNSConfigResponseContainerV1beta1, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'enableFqdnNetworkPolicy': enableFqdnNetworkPolicy,
      'enableIntraNodeVisibility': enableIntraNodeVisibility,
      'enableL4ilbSubsetting': enableL4ilbSubsetting,
      'enableMultiNetworking': enableMultiNetworking,
      'gatewayApiConfig': pulumi.Input.mapInputValue<GatewayAPIConfigResponseContainerV1beta1, Map<String, dynamic>>(gatewayApiConfig, (value) => value.toMap()),
      'inTransitEncryptionConfig': inTransitEncryptionConfig,
      'network': network,
      'networkPerformanceConfig': pulumi.Input.mapInputValue<ClusterNetworkPerformanceConfigResponseContainerV1beta1, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'privateIpv6GoogleAccess': privateIpv6GoogleAccess,
      'serviceExternalIpsConfig': pulumi.Input.mapInputValue<ServiceExternalIPsConfigResponseContainerV1beta1, Map<String, dynamic>>(serviceExternalIpsConfig, (value) => value.toMap()),
      'subnetwork': subnetwork,
    };
  }

  factory NetworkConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponseContainerV1beta1(
      datapathProvider: pulumi.Input.fromValue(map['datapathProvider'] as String),
      defaultSnatStatus: pulumi.Input.fromValue(DefaultSnatStatusResponseContainerV1beta1.fromMap((map['defaultSnatStatus']! as Map).cast<String, dynamic>())),
      dnsConfig: pulumi.Input.fromValue(DNSConfigResponseContainerV1beta1.fromMap((map['dnsConfig']! as Map).cast<String, dynamic>())),
      enableFqdnNetworkPolicy: pulumi.Input.fromValue(map['enableFqdnNetworkPolicy'] as bool),
      enableIntraNodeVisibility: pulumi.Input.fromValue(map['enableIntraNodeVisibility'] as bool),
      enableL4ilbSubsetting: pulumi.Input.fromValue(map['enableL4ilbSubsetting'] as bool),
      enableMultiNetworking: pulumi.Input.fromValue(map['enableMultiNetworking'] as bool),
      gatewayApiConfig: pulumi.Input.fromValue(GatewayAPIConfigResponseContainerV1beta1.fromMap((map['gatewayApiConfig']! as Map).cast<String, dynamic>())),
      inTransitEncryptionConfig: pulumi.Input.fromValue(map['inTransitEncryptionConfig'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      networkPerformanceConfig: pulumi.Input.fromValue(ClusterNetworkPerformanceConfigResponseContainerV1beta1.fromMap((map['networkPerformanceConfig']! as Map).cast<String, dynamic>())),
      privateIpv6GoogleAccess: pulumi.Input.fromValue(map['privateIpv6GoogleAccess'] as String),
      serviceExternalIpsConfig: pulumi.Input.fromValue(ServiceExternalIPsConfigResponseContainerV1beta1.fromMap((map['serviceExternalIpsConfig']! as Map).cast<String, dynamic>())),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}

