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
  final pulumi.Input<List<P2SConnectionConfigurationResponse>>?
  p2SConnectionConfigurations;

  /// The provisioning state of the P2S VPN gateway resource.
  final pulumi.Input<String> provisioningState;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Resource type.
  final pulumi.Input<String> type;

  /// The VirtualHub to which the gateway belongs.
  final pulumi.Input<SubResourceResponse>? virtualHub;

  /// All P2S VPN clients' connection health status.
  final pulumi.Input<VpnClientConnectionHealthResponse>
  vpnClientConnectionHealth;

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
      'p2SConnectionConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<P2SConnectionConfigurationResponse>,
            List<Map<String, dynamic>>
          >(
            p2SConnectionConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  P2SConnectionConfigurationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
      'virtualHub':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(virtualHub, (value) => value.toMap()),
      'vpnClientConnectionHealth':
          pulumi.Input.mapInputValue<
            VpnClientConnectionHealthResponse,
            Map<String, dynamic>
          >(vpnClientConnectionHealth, (value) => value.toMap()),
      'vpnGatewayScaleUnit': ?vpnGatewayScaleUnit,
      'vpnServerConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(vpnServerConfiguration, (value) => value.toMap()),
    };
  }

  factory P2SVpnGatewayResponse.fromMap(Map<String, dynamic> map) {
    return P2SVpnGatewayResponse(
      customDnsServers: (() {
        final guardedValue = map['customDnsServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isRoutingPreferenceInternet: (() {
        final guardedValue = map['isRoutingPreferenceInternet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      p2SConnectionConfigurations: (() {
        final guardedValue = map['p2SConnectionConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<P2SConnectionConfigurationResponse>(
            guardedValue,
            (value) => P2SConnectionConfigurationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      virtualHub: (() {
        final guardedValue = map['virtualHub'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vpnClientConnectionHealth: pulumi.Input.fromValue(
        VpnClientConnectionHealthResponse.fromMap(
          (map['vpnClientConnectionHealth']! as Map).cast<String, dynamic>(),
        ),
      ),
      vpnGatewayScaleUnit: (() {
        final guardedValue = map['vpnGatewayScaleUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      vpnServerConfiguration: (() {
        final guardedValue = map['vpnServerConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
