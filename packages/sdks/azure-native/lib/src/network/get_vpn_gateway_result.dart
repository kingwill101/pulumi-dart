// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_settings_response.dart';
import 'sub_resource_response.dart';
import 'vpn_connection_response.dart';
import 'vpn_gateway_ip_configuration_response.dart';
import 'vpn_gateway_nat_rule_response.dart';

/// Result data returned by getVpnGateway.
class GetVpnGatewayResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Local network gateway's BGP speaker settings.
  final BgpSettingsResponse? bgpSettings;

  /// List of all vpn connections to the gateway.
  final List<VpnConnectionResponse>? connections;

  /// Enable BGP routes translation for NAT on this VpnGateway.
  final bool? enableBgpRouteTranslationForNat;

  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;

  /// Resource ID.
  final String? id;

  /// List of all IPs configured on the gateway.
  final List<VpnGatewayIpConfigurationResponse> ipConfigurations;

  /// Enable Routing Preference property for the Public IP Interface of the VpnGateway.
  final bool? isRoutingPreferenceInternet;

  /// Resource location.
  final String location;

  /// Resource name.
  final String name;

  /// List of all the nat Rules associated with the gateway.
  final List<VpnGatewayNatRuleResponse>? natRules;

  /// The provisioning state of the VPN gateway resource.
  final String provisioningState;

  /// Resource tags.
  final Map<String, String>? tags;

  /// Resource type.
  final String type;

  /// The VirtualHub to which the gateway belongs.
  final SubResourceResponse? virtualHub;

  /// The scale unit for this vpn gateway.
  final int? vpnGatewayScaleUnit;

  /// Creates a new [GetVpnGatewayResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bgpSettings] Local network gateway's BGP speaker settings.
  /// [connections] List of all vpn connections to the gateway.
  /// [enableBgpRouteTranslationForNat] Enable BGP routes translation for NAT on this VpnGateway.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipConfigurations] List of all IPs configured on the gateway.
  /// [isRoutingPreferenceInternet] Enable Routing Preference property for the Public IP Interface of the VpnGateway.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [natRules] List of all the nat Rules associated with the gateway.
  /// [provisioningState] The provisioning state of the VPN gateway resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualHub] The VirtualHub to which the gateway belongs.
  /// [vpnGatewayScaleUnit] The scale unit for this vpn gateway.
  GetVpnGatewayResult({
    required this.azureApiVersion,
    this.bgpSettings,
    this.connections,
    this.enableBgpRouteTranslationForNat,
    required this.etag,
    this.id,
    required this.ipConfigurations,
    this.isRoutingPreferenceInternet,
    required this.location,
    required this.name,
    this.natRules,
    required this.provisioningState,
    this.tags,
    required this.type,
    this.virtualHub,
    this.vpnGatewayScaleUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'bgpSettings': ?bgpSettings?.toMap(),
      'connections': ?(() {
        final guardedValue = connections;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          VpnConnectionResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'enableBgpRouteTranslationForNat': ?enableBgpRouteTranslationForNat,
      'etag': etag,
      'id': ?id,
      'ipConfigurations':
          pulumi.Input.encodeList<
            VpnGatewayIpConfigurationResponse,
            Map<String, dynamic>
          >(ipConfigurations, (value) => value.toMap()),
      'isRoutingPreferenceInternet': ?isRoutingPreferenceInternet,
      'location': location,
      'name': name,
      'natRules': ?(() {
        final guardedValue = natRules;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          VpnGatewayNatRuleResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
      'virtualHub': ?virtualHub?.toMap(),
      'vpnGatewayScaleUnit': ?vpnGatewayScaleUnit,
    };
  }

  factory GetVpnGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayResult(
      azureApiVersion: map['azureApiVersion'] as String,
      bgpSettings: (() {
        final guardedValue = map['bgpSettings'];
        if (guardedValue == null) return null;
        return BgpSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      connections: (() {
        final guardedValue = map['connections'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<VpnConnectionResponse>(
          guardedValue,
          (value) => VpnConnectionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enableBgpRouteTranslationForNat: (() {
        final guardedValue = map['enableBgpRouteTranslationForNat'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      etag: map['etag'] as String,
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      ipConfigurations:
          pulumi.Input.decodeList<VpnGatewayIpConfigurationResponse>(
            map['ipConfigurations']!,
            (value) => VpnGatewayIpConfigurationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      isRoutingPreferenceInternet: (() {
        final guardedValue = map['isRoutingPreferenceInternet'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      location: map['location'] as String,
      name: map['name'] as String,
      natRules: (() {
        final guardedValue = map['natRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<VpnGatewayNatRuleResponse>(
          guardedValue,
          (value) => VpnGatewayNatRuleResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: map['provisioningState'] as String,
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      virtualHub: (() {
        final guardedValue = map['virtualHub'];
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      vpnGatewayScaleUnit: (() {
        final guardedValue = map['vpnGatewayScaleUnit'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
    );
  }
}
