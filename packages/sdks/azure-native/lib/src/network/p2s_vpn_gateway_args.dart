// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'p2_sconnection_configuration.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_p2s_vpn_gateway_args_doc}
/// The set of arguments for P2sVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_network_p2s_vpn_gateway_args_doc}
class P2sVpnGatewayArgs {
  /// List of all customer specified DNS servers IP addresses.
  final pulumi.Input<List<String>>? customDnsServers;
  /// The name of the gateway.
  final pulumi.Input<String>? gatewayName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Enable Routing Preference property for the Public IP Interface of the P2SVpnGateway.
  final pulumi.Input<bool>? isRoutingPreferenceInternet;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// List of all p2s connection configurations of the gateway.
  final pulumi.Input<List<P2SConnectionConfiguration>>? p2SConnectionConfigurations;
  /// The resource group name of the P2SVpnGateway.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VirtualHub to which the gateway belongs.
  final pulumi.Input<SubResource>? virtualHub;
  /// The scale unit for this p2s vpn gateway.
  final pulumi.Input<int>? vpnGatewayScaleUnit;
  /// The VpnServerConfiguration to which the p2sVpnGateway is attached to.
  final pulumi.Input<SubResource>? vpnServerConfiguration;

  /// Creates a new [P2sVpnGatewayArgs].
  /// [customDnsServers] List of all customer specified DNS servers IP addresses.
  /// [gatewayName] The name of the gateway.
  /// [id] Resource ID.
  /// [isRoutingPreferenceInternet] Enable Routing Preference property for the Public IP Interface of the P2SVpnGateway.
  /// [location] Resource location.
  /// [p2SConnectionConfigurations] List of all p2s connection configurations of the gateway.
  /// [resourceGroupName] The resource group name of the P2SVpnGateway.
  /// [tags] Resource tags.
  /// [virtualHub] The VirtualHub to which the gateway belongs.
  /// [vpnGatewayScaleUnit] The scale unit for this p2s vpn gateway.
  /// [vpnServerConfiguration] The VpnServerConfiguration to which the p2sVpnGateway is attached to.
  const P2sVpnGatewayArgs({
    this.customDnsServers,
    this.gatewayName,
    this.id,
    this.isRoutingPreferenceInternet,
    this.location,
    this.p2SConnectionConfigurations,
    required this.resourceGroupName,
    this.tags,
    this.virtualHub,
    this.vpnGatewayScaleUnit,
    this.vpnServerConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDnsServers': ?customDnsServers,
      'gatewayName': ?gatewayName,
      'id': ?id,
      'isRoutingPreferenceInternet': ?isRoutingPreferenceInternet,
      'location': ?location,
      'p2SConnectionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<P2SConnectionConfiguration>, List<Map<String, dynamic>>>(p2SConnectionConfigurations, (value) => pulumi.Input.encodeList<P2SConnectionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualHub': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualHub, (value) => value.toMap()),
      'vpnGatewayScaleUnit': ?vpnGatewayScaleUnit,
      'vpnServerConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(vpnServerConfiguration, (value) => value.toMap()),
    };
  }

  factory P2sVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return P2sVpnGatewayArgs(
      customDnsServers: (() { final guardedValue = map['customDnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gatewayName: (() { final guardedValue = map['gatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRoutingPreferenceInternet: (() { final guardedValue = map['isRoutingPreferenceInternet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      p2SConnectionConfigurations: (() { final guardedValue = map['p2SConnectionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<P2SConnectionConfiguration>(guardedValue, (value) => P2SConnectionConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualHub: (() { final guardedValue = map['virtualHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpnGatewayScaleUnit: (() { final guardedValue = map['vpnGatewayScaleUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpnServerConfiguration: (() { final guardedValue = map['vpnServerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

