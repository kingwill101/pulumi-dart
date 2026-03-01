// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_connection_routing.dart';
import 'vpn_gateway_connection_traffic_selector_policy.dart';
import 'vpn_gateway_connection_vpn_link.dart';

/// {@template pulumi_network_vpn_gateway_connection_vpn_gateway_connection_args_doc}
/// The set of arguments for VpnGatewayConnection.
/// {@endtemplate}
/// {@macro pulumi_network_vpn_gateway_connection_vpn_gateway_connection_args_doc}
class VpnGatewayConnectionArgs {
  /// Whether Internet Security is enabled for this VPN Connection. Defaults to `false`.
  final pulumi.Input<bool>? internetSecurityEnabled;
  /// The name which should be used for this VPN Gateway Connection. Changing this forces a new VPN Gateway Connection to be created.
  final pulumi.Input<String>? name;
  /// The ID of the remote VPN Site, which will connect to the VPN Gateway. Changing this forces a new VPN Gateway Connection to be created.
  final pulumi.Input<String> remoteVpnSiteId;
  /// A `routing` block as defined below. If this is not specified, there will be a default route table created implicitly.
  final pulumi.Input<VpnGatewayConnectionRouting>? routing;
  /// One or more `traffic_selector_policy` blocks as defined below.
  final pulumi.Input<List<VpnGatewayConnectionTrafficSelectorPolicy>>? trafficSelectorPolicies;
  /// The ID of the VPN Gateway that this VPN Gateway Connection belongs to. Changing this forces a new VPN Gateway Connection to be created.
  final pulumi.Input<String> vpnGatewayId;
  /// One or more `vpn_link` blocks as defined below.
  final pulumi.Input<List<VpnGatewayConnectionVpnLink>> vpnLinks;

  /// Creates a new [VpnGatewayConnectionArgs].
  /// [internetSecurityEnabled] Whether Internet Security is enabled for this VPN Connection. Defaults to `false`.
  /// [name] The name which should be used for this VPN Gateway Connection. Changing this forces a new VPN Gateway Connection to be created.
  /// [remoteVpnSiteId] The ID of the remote VPN Site, which will connect to the VPN Gateway. Changing this forces a new VPN Gateway Connection to be created.
  /// [routing] A `routing` block as defined below. If this is not specified, there will be a default route table created implicitly.
  /// [trafficSelectorPolicies] One or more `traffic_selector_policy` blocks as defined below.
  /// [vpnGatewayId] The ID of the VPN Gateway that this VPN Gateway Connection belongs to. Changing this forces a new VPN Gateway Connection to be created.
  /// [vpnLinks] One or more `vpn_link` blocks as defined below.
  VpnGatewayConnectionArgs({
    pulumi.Output<bool>? internetSecurityEnabled,
    pulumi.Output<String>? name,
    required pulumi.Output<String> remoteVpnSiteId,
    pulumi.Output<VpnGatewayConnectionRouting>? routing,
    pulumi.Output<List<VpnGatewayConnectionTrafficSelectorPolicy>>? trafficSelectorPolicies,
    required pulumi.Output<String> vpnGatewayId,
    required pulumi.Output<List<VpnGatewayConnectionVpnLink>> vpnLinks,
  }) :
      internetSecurityEnabled = pulumi.Input.asOptionalInput<bool>(internetSecurityEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      remoteVpnSiteId = pulumi.Input.asInput<String>(remoteVpnSiteId),
      routing = pulumi.Input.asOptionalInput<VpnGatewayConnectionRouting>(routing),
      trafficSelectorPolicies = pulumi.Input.asOptionalInput<List<VpnGatewayConnectionTrafficSelectorPolicy>>(trafficSelectorPolicies),
      vpnGatewayId = pulumi.Input.asInput<String>(vpnGatewayId),
      vpnLinks = pulumi.Input.asInput<List<VpnGatewayConnectionVpnLink>>(vpnLinks);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetSecurityEnabled': ?internetSecurityEnabled,
      'name': ?name,
      'remoteVpnSiteId': remoteVpnSiteId,
      'routing': ?pulumi.Input.mapOptionalInputValue<VpnGatewayConnectionRouting, Map<String, dynamic>>(routing, (value) => value.toMap()),
      'trafficSelectorPolicies': ?pulumi.Input.mapOptionalInputValue<List<VpnGatewayConnectionTrafficSelectorPolicy>, List<Map<String, dynamic>>>(trafficSelectorPolicies, (value) => pulumi.Input.encodeList<VpnGatewayConnectionTrafficSelectorPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnGatewayId': vpnGatewayId,
      'vpnLinks': pulumi.Input.mapInputValue<List<VpnGatewayConnectionVpnLink>, List<Map<String, dynamic>>>(vpnLinks, (value) => pulumi.Input.encodeList<VpnGatewayConnectionVpnLink, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpnGatewayConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpnGatewayConnectionArgs(
      internetSecurityEnabled: map['internetSecurityEnabled'] == null ? null : pulumi.Output.create<bool>(map['internetSecurityEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      remoteVpnSiteId: pulumi.Output.create<String>(map['remoteVpnSiteId'] as String),
      routing: map['routing'] == null ? null : pulumi.Output.create<VpnGatewayConnectionRouting>(VpnGatewayConnectionRouting.fromMap((map['routing'] as Map).cast<String, dynamic>())),
      trafficSelectorPolicies: map['trafficSelectorPolicies'] == null ? null : pulumi.Output.create<List<VpnGatewayConnectionTrafficSelectorPolicy>>(pulumi.Input.decodeList<VpnGatewayConnectionTrafficSelectorPolicy>(map['trafficSelectorPolicies'], (value) => VpnGatewayConnectionTrafficSelectorPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      vpnGatewayId: pulumi.Output.create<String>(map['vpnGatewayId'] as String),
      vpnLinks: pulumi.Output.create<List<VpnGatewayConnectionVpnLink>>(pulumi.Input.decodeList<VpnGatewayConnectionVpnLink>(map['vpnLinks'], (value) => VpnGatewayConnectionVpnLink.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

