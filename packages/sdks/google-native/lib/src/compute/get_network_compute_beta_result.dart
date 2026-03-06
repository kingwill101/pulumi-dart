// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_peering_response_compute_beta.dart';
import 'network_routing_config_response_compute_beta.dart';

/// Result data returned by getNetwork.
class GetNetworkComputeBetaResult {
  /// Must be set to create a VPC network. If not set, a legacy network is created. When set to true, the VPC network is created in auto mode. When set to false, the VPC network is created in custom mode. An auto mode VPC network starts with one subnet per region. Each subnet has a predetermined range as described in Auto mode VPC network IP ranges. For custom mode VPC networks, you can add subnets using the subnetworks insert method.
  final bool autoCreateSubnetworks;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this field when you create the resource.
  final String description;
  /// Enable ULA internal ipv6 on this network. Enabling this feature will assign a /48 from google defined ULA prefix fd20::/20. .
  final bool enableUlaInternalIpv6;
  /// URL of the firewall policy the network is associated with.
  final String firewallPolicy;
  /// The gateway address for default routing out of the network, selected by Google Cloud.
  final String gatewayIPv4;
  /// When enabling ula internal ipv6, caller optionally can specify the /48 range they want from the google defined ULA prefix fd20::/20. The input must be a valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will fail if the speficied /48 is already in used by another resource. If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field. .
  final String internalIpv6Range;
  /// Deprecated in favor of subnet mode networks. The range of internal addresses that are legal on this network. This range is a CIDR specification, for example: 192.168.0.0/16. Provided by the client when the network is created.
  final String ipv4Range;
  /// Type of the resource. Always compute#network for networks.
  final String kind;
  /// Maximum Transmission Unit in bytes. The minimum value for this field is 1300 and the maximum value is 8896. The suggested value is 1500, which is the default MTU used on the Internet, or 8896 if you want to use Jumbo frames. If unspecified, the value defaults to 1460.
  final int mtu;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  final String name;
  /// The network firewall policy enforcement order. Can be either AFTER_CLASSIC_FIREWALL or BEFORE_CLASSIC_FIREWALL. Defaults to AFTER_CLASSIC_FIREWALL if the field is not specified.
  final String networkFirewallPolicyEnforcementOrder;
  /// A list of network peerings for the resource.
  final List<NetworkPeeringResponseComputeBeta> peerings;
  /// The network-level routing configuration for this network. Used by Cloud Router to determine what type of network-wide routing behavior to enforce.
  final NetworkRoutingConfigResponseComputeBeta routingConfig;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;
  /// Server-defined fully-qualified URLs for all subnetworks in this VPC network.
  final List<String> subnetworks;

  /// Creates a new [GetNetworkComputeBetaResult].
  /// [autoCreateSubnetworks] Must be set to create a VPC network. If not set, a legacy network is created. When set to true, the VPC network is created in auto mode. When set to false, the VPC network is created in custom mode. An auto mode VPC network starts with one subnet per region. Each subnet has a predetermined range as described in Auto mode VPC network IP ranges. For custom mode VPC networks, you can add subnets using the subnetworks insert method.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this field when you create the resource.
  /// [enableUlaInternalIpv6] Enable ULA internal ipv6 on this network. Enabling this feature will assign a /48 from google defined ULA prefix fd20::/20. .
  /// [firewallPolicy] URL of the firewall policy the network is associated with.
  /// [gatewayIPv4] The gateway address for default routing out of the network, selected by Google Cloud.
  /// [internalIpv6Range] When enabling ula internal ipv6, caller optionally can specify the /48 range they want from the google defined ULA prefix fd20::/20. The input must be a valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will fail if the speficied /48 is already in used by another resource. If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field. .
  /// [ipv4Range] Deprecated in favor of subnet mode networks. The range of internal addresses that are legal on this network. This range is a CIDR specification, for example: 192.168.0.0/16. Provided by the client when the network is created.
  /// [kind] Type of the resource. Always compute#network for networks.
  /// [mtu] Maximum Transmission Unit in bytes. The minimum value for this field is 1300 and the maximum value is 8896. The suggested value is 1500, which is the default MTU used on the Internet, or 8896 if you want to use Jumbo frames. If unspecified, the value defaults to 1460.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  /// [networkFirewallPolicyEnforcementOrder] The network firewall policy enforcement order. Can be either AFTER_CLASSIC_FIREWALL or BEFORE_CLASSIC_FIREWALL. Defaults to AFTER_CLASSIC_FIREWALL if the field is not specified.
  /// [peerings] A list of network peerings for the resource.
  /// [routingConfig] The network-level routing configuration for this network. Used by Cloud Router to determine what type of network-wide routing behavior to enforce.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [subnetworks] Server-defined fully-qualified URLs for all subnetworks in this VPC network.
  const GetNetworkComputeBetaResult({
    required this.autoCreateSubnetworks,
    required this.creationTimestamp,
    required this.description,
    required this.enableUlaInternalIpv6,
    required this.firewallPolicy,
    required this.gatewayIPv4,
    required this.internalIpv6Range,
    required this.ipv4Range,
    required this.kind,
    required this.mtu,
    required this.name,
    required this.networkFirewallPolicyEnforcementOrder,
    required this.peerings,
    required this.routingConfig,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateSubnetworks': autoCreateSubnetworks,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'enableUlaInternalIpv6': enableUlaInternalIpv6,
      'firewallPolicy': firewallPolicy,
      'gatewayIPv4': gatewayIPv4,
      'internalIpv6Range': internalIpv6Range,
      'ipv4Range': ipv4Range,
      'kind': kind,
      'mtu': mtu,
      'name': name,
      'networkFirewallPolicyEnforcementOrder': networkFirewallPolicyEnforcementOrder,
      'peerings': pulumi.Input.encodeList<NetworkPeeringResponseComputeBeta, Map<String, dynamic>>(peerings, (value) => value.toMap()),
      'routingConfig': routingConfig.toMap(),
      'selfLink': selfLink,
      'selfLinkWithId': selfLinkWithId,
      'subnetworks': subnetworks,
    };
  }

  factory GetNetworkComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkComputeBetaResult(
      autoCreateSubnetworks: map['autoCreateSubnetworks'] as bool,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      enableUlaInternalIpv6: map['enableUlaInternalIpv6'] as bool,
      firewallPolicy: map['firewallPolicy'] as String,
      gatewayIPv4: map['gatewayIPv4'] as String,
      internalIpv6Range: map['internalIpv6Range'] as String,
      ipv4Range: map['ipv4Range'] as String,
      kind: map['kind'] as String,
      mtu: map['mtu'] as int,
      name: map['name'] as String,
      networkFirewallPolicyEnforcementOrder: map['networkFirewallPolicyEnforcementOrder'] as String,
      peerings: pulumi.Input.decodeList<NetworkPeeringResponseComputeBeta>(map['peerings']!, (value) => NetworkPeeringResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      routingConfig: NetworkRoutingConfigResponseComputeBeta.fromMap((map['routingConfig']! as Map).cast<String, dynamic>()),
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      subnetworks: (map['subnetworks'] as List).cast<String>(),
    );
  }
}

