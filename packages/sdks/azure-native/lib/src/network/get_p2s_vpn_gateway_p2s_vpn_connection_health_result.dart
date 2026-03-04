// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'p2_sconnection_configuration_response.dart';
import 'sub_resource_response.dart';
import 'vpn_client_connection_health_response.dart';

/// Result data returned by getP2sVpnGatewayP2sVpnConnectionHealth.
class GetP2sVpnGatewayP2sVpnConnectionHealthResult {
  /// List of all customer specified DNS servers IP addresses.
  final List<String>? customDnsServers;

  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;

  /// Resource ID.
  final String? id;

  /// Enable Routing Preference property for the Public IP Interface of the P2SVpnGateway.
  final bool? isRoutingPreferenceInternet;

  /// Resource location.
  final String location;

  /// Resource name.
  final String name;

  /// List of all p2s connection configurations of the gateway.
  final List<P2SConnectionConfigurationResponse>? p2SConnectionConfigurations;

  /// The provisioning state of the P2S VPN gateway resource.
  final String provisioningState;

  /// Resource tags.
  final Map<String, String>? tags;

  /// Resource type.
  final String type;

  /// The VirtualHub to which the gateway belongs.
  final SubResourceResponse? virtualHub;

  /// All P2S VPN clients' connection health status.
  final VpnClientConnectionHealthResponse vpnClientConnectionHealth;

  /// The scale unit for this p2s vpn gateway.
  final int? vpnGatewayScaleUnit;

  /// The VpnServerConfiguration to which the p2sVpnGateway is attached to.
  final SubResourceResponse? vpnServerConfiguration;

  /// Creates a new [GetP2sVpnGatewayP2sVpnConnectionHealthResult].
  /// [customDnsServers] List of all customer specified DNS servers IP addresses.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [isRoutingPreferenceInternet] Enable Routing Preference property for the Public IP Interface of the P2SVpnGateway.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [p2SConnectionConfigurations] List of all p2s connection configurations of the gateway.
  /// [provisioningState] The provisioning state of the P2S VPN gateway resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualHub] The VirtualHub to which the gateway belongs.
  /// [vpnClientConnectionHealth] All P2S VPN clients' connection health status.
  /// [vpnGatewayScaleUnit] The scale unit for this p2s vpn gateway.
  /// [vpnServerConfiguration] The VpnServerConfiguration to which the p2sVpnGateway is attached to.
  GetP2sVpnGatewayP2sVpnConnectionHealthResult({
    this.customDnsServers,
    required this.etag,
    this.id,
    this.isRoutingPreferenceInternet,
    required this.location,
    required this.name,
    this.p2SConnectionConfigurations,
    required this.provisioningState,
    this.tags,
    required this.type,
    this.virtualHub,
    required this.vpnClientConnectionHealth,
    this.vpnGatewayScaleUnit,
    this.vpnServerConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDnsServers': ?customDnsServers,
      'etag': etag,
      'id': ?id,
      'isRoutingPreferenceInternet': ?isRoutingPreferenceInternet,
      'location': location,
      'name': name,
      'p2SConnectionConfigurations': ?(() {
        final guardedValue = p2SConnectionConfigurations;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          P2SConnectionConfigurationResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
      'virtualHub': ?virtualHub?.toMap(),
      'vpnClientConnectionHealth': vpnClientConnectionHealth.toMap(),
      'vpnGatewayScaleUnit': ?vpnGatewayScaleUnit,
      'vpnServerConfiguration': ?vpnServerConfiguration?.toMap(),
    };
  }

  factory GetP2sVpnGatewayP2sVpnConnectionHealthResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetP2sVpnGatewayP2sVpnConnectionHealthResult(
      customDnsServers: (() {
        final guardedValue = map['customDnsServers'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      etag: map['etag'] as String,
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      isRoutingPreferenceInternet: (() {
        final guardedValue = map['isRoutingPreferenceInternet'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      location: map['location'] as String,
      name: map['name'] as String,
      p2SConnectionConfigurations: (() {
        final guardedValue = map['p2SConnectionConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<P2SConnectionConfigurationResponse>(
          guardedValue,
          (value) => P2SConnectionConfigurationResponse.fromMap(
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
      vpnClientConnectionHealth: VpnClientConnectionHealthResponse.fromMap(
        (map['vpnClientConnectionHealth']! as Map).cast<String, dynamic>(),
      ),
      vpnGatewayScaleUnit: (() {
        final guardedValue = map['vpnGatewayScaleUnit'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      vpnServerConfiguration: (() {
        final guardedValue = map['vpnServerConfiguration'];
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
