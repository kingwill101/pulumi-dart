// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_connection_routing.dart';
import 'vpn_gateway_connection_traffic_selector_policy.dart';
import 'vpn_gateway_connection_vpn_link.dart';

/// Input properties used for looking up and filtering VpnGatewayConnection resources.
class VpnGatewayConnectionState {
  /// Whether Internet Security is enabled for this VPN Connection. Defaults to `false`.
  final pulumi.Input<bool>? internetSecurityEnabled;

  /// The name which should be used for this VPN Gateway Connection. Changing this forces a new VPN Gateway Connection to be created.
  final pulumi.Input<String>? name;

  /// The ID of the remote VPN Site, which will connect to the VPN Gateway. Changing this forces a new VPN Gateway Connection to be created.
  final pulumi.Input<String>? remoteVpnSiteId;

  /// A `routing` block as defined below. If this is not specified, there will be a default route table created implicitly.
  final pulumi.Input<VpnGatewayConnectionRouting>? routing;

  /// One or more `traffic_selector_policy` blocks as defined below.
  final pulumi.Input<List<VpnGatewayConnectionTrafficSelectorPolicy>>?
  trafficSelectorPolicies;

  /// The ID of the VPN Gateway that this VPN Gateway Connection belongs to. Changing this forces a new VPN Gateway Connection to be created.
  final pulumi.Input<String>? vpnGatewayId;

  /// One or more `vpn_link` blocks as defined below.
  final pulumi.Input<List<VpnGatewayConnectionVpnLink>>? vpnLinks;

  /// Creates a new [VpnGatewayConnectionState].
  /// [internetSecurityEnabled] Whether Internet Security is enabled for this VPN Connection. Defaults to `false`.
  /// [name] The name which should be used for this VPN Gateway Connection. Changing this forces a new VPN Gateway Connection to be created.
  /// [remoteVpnSiteId] The ID of the remote VPN Site, which will connect to the VPN Gateway. Changing this forces a new VPN Gateway Connection to be created.
  /// [routing] A `routing` block as defined below. If this is not specified, there will be a default route table created implicitly.
  /// [trafficSelectorPolicies] One or more `traffic_selector_policy` blocks as defined below.
  /// [vpnGatewayId] The ID of the VPN Gateway that this VPN Gateway Connection belongs to. Changing this forces a new VPN Gateway Connection to be created.
  /// [vpnLinks] One or more `vpn_link` blocks as defined below.
  VpnGatewayConnectionState({
    this.internetSecurityEnabled,
    this.name,
    this.remoteVpnSiteId,
    this.routing,
    this.trafficSelectorPolicies,
    this.vpnGatewayId,
    this.vpnLinks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetSecurityEnabled': ?internetSecurityEnabled,
      'name': ?name,
      'remoteVpnSiteId': ?remoteVpnSiteId,
      'routing':
          ?pulumi.Input.mapOptionalInputValue<
            VpnGatewayConnectionRouting,
            Map<String, dynamic>
          >(routing, (value) => value.toMap()),
      'trafficSelectorPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<VpnGatewayConnectionTrafficSelectorPolicy>,
            List<Map<String, dynamic>>
          >(
            trafficSelectorPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  VpnGatewayConnectionTrafficSelectorPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vpnGatewayId': ?vpnGatewayId,
      'vpnLinks':
          ?pulumi.Input.mapOptionalInputValue<
            List<VpnGatewayConnectionVpnLink>,
            List<Map<String, dynamic>>
          >(
            vpnLinks,
            (value) =>
                pulumi.Input.encodeList<
                  VpnGatewayConnectionVpnLink,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory VpnGatewayConnectionState.fromMap(Map<String, dynamic> map) {
    return VpnGatewayConnectionState(
      internetSecurityEnabled: (() {
        final guardedValue = map['internetSecurityEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remoteVpnSiteId: (() {
        final guardedValue = map['remoteVpnSiteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routing: (() {
        final guardedValue = map['routing'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VpnGatewayConnectionRouting.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      trafficSelectorPolicies: (() {
        final guardedValue = map['trafficSelectorPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VpnGatewayConnectionTrafficSelectorPolicy>(
            guardedValue,
            (value) => VpnGatewayConnectionTrafficSelectorPolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vpnGatewayId: (() {
        final guardedValue = map['vpnGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpnLinks: (() {
        final guardedValue = map['vpnLinks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VpnGatewayConnectionVpnLink>(
            guardedValue,
            (value) => VpnGatewayConnectionVpnLink.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
