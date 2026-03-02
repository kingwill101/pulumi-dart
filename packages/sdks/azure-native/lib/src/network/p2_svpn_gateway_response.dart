// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'p2_sconnection_configuration_response.dart';
import 'sub_resource_response.dart';
import 'vpn_client_connection_health_response.dart';

/// P2SVpnGateway Resource.
class P2SVpnGatewayResponse {
  /// List of all customer specified DNS servers IP addresses.
  final pulumi.Input<List<String>>? customDnsServers;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Enable Routing Preference property for the Public IP Interface of the P2SVpnGateway.
  final pulumi.Input<bool>? isRoutingPreferenceInternet;
  /// Resource location.
  final pulumi.Input<String> location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// List of all p2s connection configurations of the gateway.
  final pulumi.Input<List<P2SConnectionConfigurationResponse>>? p2SConnectionConfigurations;
  /// The provisioning state of the P2S VPN gateway resource.
  final pulumi.Input<String> provisioningState;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource type.
  final pulumi.Input<String> type;
  /// The VirtualHub to which the gateway belongs.
  final pulumi.Input<SubResourceResponse>? virtualHub;
  /// All P2S VPN clients' connection health status.
  final pulumi.Input<VpnClientConnectionHealthResponse> vpnClientConnectionHealth;
  /// The scale unit for this p2s vpn gateway.
  final pulumi.Input<int>? vpnGatewayScaleUnit;
  /// The VpnServerConfiguration to which the p2sVpnGateway is attached to.
  final pulumi.Input<SubResourceResponse>? vpnServerConfiguration;

  /// Creates a new [P2SVpnGatewayResponse].
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
  P2SVpnGatewayResponse({
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
      'p2SConnectionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<P2SConnectionConfigurationResponse>, List<Map<String, dynamic>>>(p2SConnectionConfigurations, (value) => pulumi.Input.encodeList<P2SConnectionConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
      'virtualHub': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(virtualHub, (value) => value.toMap()),
      'vpnClientConnectionHealth': pulumi.Input.mapInputValue<VpnClientConnectionHealthResponse, Map<String, dynamic>>(vpnClientConnectionHealth, (value) => value.toMap()),
      'vpnGatewayScaleUnit': ?vpnGatewayScaleUnit,
      'vpnServerConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(vpnServerConfiguration, (value) => value.toMap()),
    };
  }

  factory P2SVpnGatewayResponse.fromMap(Map<String, dynamic> map) {
    return P2SVpnGatewayResponse(
      customDnsServers: map['customDnsServers'] == null ? null : ((map['customDnsServers']! as List).cast<String>()).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      isRoutingPreferenceInternet: map['isRoutingPreferenceInternet'] == null ? null : (map['isRoutingPreferenceInternet']! as bool).input(),
      location: (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      p2SConnectionConfigurations: map['p2SConnectionConfigurations'] == null ? null : (pulumi.Input.decodeList<P2SConnectionConfigurationResponse>(map['p2SConnectionConfigurations']!, (value) => P2SConnectionConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      virtualHub: map['virtualHub'] == null ? null : (SubResourceResponse.fromMap((map['virtualHub']! as Map).cast<String, dynamic>())).input(),
      vpnClientConnectionHealth: (VpnClientConnectionHealthResponse.fromMap((map['vpnClientConnectionHealth'] as Map).cast<String, dynamic>())).input(),
      vpnGatewayScaleUnit: map['vpnGatewayScaleUnit'] == null ? null : (map['vpnGatewayScaleUnit']! as int).input(),
      vpnServerConfiguration: map['vpnServerConfiguration'] == null ? null : (SubResourceResponse.fromMap((map['vpnServerConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

