// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_policy.dart';
import 'routing_configuration.dart';
import 'sub_resource.dart';
import 'traffic_selector_policy.dart';
import 'vpn_site_link_connection.dart';

/// VpnConnection Resource.
class VpnConnection {
  /// Expected bandwidth in MBPS.
  final pulumi.Input<int?>? connectionBandwidth;
  /// DPD timeout in seconds for vpn connection.
  final pulumi.Input<int?>? dpdTimeoutSeconds;
  /// EnableBgp flag.
  final pulumi.Input<bool?>? enableBgp;
  /// Enable internet security.
  final pulumi.Input<bool?>? enableInternetSecurity;
  /// EnableBgp flag.
  final pulumi.Input<bool?>? enableRateLimiting;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The IPSec Policies to be considered by this connection.
  final pulumi.Input<List<IpsecPolicy>?>? ipsecPolicies;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// Id of the connected vpn site.
  final pulumi.Input<SubResource?>? remoteVpnSite;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfiguration?>? routingConfiguration;
  /// Routing weight for vpn connection.
  final pulumi.Input<int?>? routingWeight;
  /// SharedKey for the vpn connection.
  final pulumi.Input<String?>? sharedKey;
  /// The Traffic Selector Policies to be considered by this connection.
  final pulumi.Input<List<TrafficSelectorPolicy>?>? trafficSelectorPolicies;
  /// Use local azure ip to initiate connection.
  final pulumi.Input<bool?>? useLocalAzureIpAddress;
  /// Enable policy-based traffic selectors.
  final pulumi.Input<bool?>? usePolicyBasedTrafficSelectors;
  /// Connection protocol used for this connection.
  final pulumi.Input<dynamic>? vpnConnectionProtocolType;
  /// List of all vpn site link connections to the gateway.
  final pulumi.Input<List<VpnSiteLinkConnection>?>? vpnLinkConnections;

  /// Creates a new [VpnConnection].
  /// [connectionBandwidth] Expected bandwidth in MBPS.
  /// [dpdTimeoutSeconds] DPD timeout in seconds for vpn connection.
  /// [enableBgp] EnableBgp flag.
  /// [enableInternetSecurity] Enable internet security.
  /// [enableRateLimiting] EnableBgp flag.
  /// [id] Resource ID.
  /// [ipsecPolicies] The IPSec Policies to be considered by this connection.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [remoteVpnSite] Id of the connected vpn site.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [routingWeight] Routing weight for vpn connection.
  /// [sharedKey] SharedKey for the vpn connection.
  /// [trafficSelectorPolicies] The Traffic Selector Policies to be considered by this connection.
  /// [useLocalAzureIpAddress] Use local azure ip to initiate connection.
  /// [usePolicyBasedTrafficSelectors] Enable policy-based traffic selectors.
  /// [vpnConnectionProtocolType] Connection protocol used for this connection.
  /// [vpnLinkConnections] List of all vpn site link connections to the gateway.
  const VpnConnection({
    this.connectionBandwidth,
    this.dpdTimeoutSeconds,
    this.enableBgp,
    this.enableInternetSecurity,
    this.enableRateLimiting,
    this.id,
    this.ipsecPolicies,
    this.name,
    this.remoteVpnSite,
    this.routingConfiguration,
    this.routingWeight,
    this.sharedKey,
    this.trafficSelectorPolicies,
    this.useLocalAzureIpAddress,
    this.usePolicyBasedTrafficSelectors,
    this.vpnConnectionProtocolType,
    this.vpnLinkConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionBandwidth': ?connectionBandwidth,
      'dpdTimeoutSeconds': ?dpdTimeoutSeconds,
      'enableBgp': ?enableBgp,
      'enableInternetSecurity': ?enableInternetSecurity,
      'enableRateLimiting': ?enableRateLimiting,
      'id': ?id,
      'ipsecPolicies': ?pulumi.Input.mapOptionalInputValue<List<IpsecPolicy>, List<Map<String, dynamic>>>(ipsecPolicies, (value) => pulumi.Input.encodeList<IpsecPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'remoteVpnSite': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(remoteVpnSite, (value) => value.toMap()),
      'routingConfiguration': ?pulumi.Input.mapOptionalInputValue<RoutingConfiguration, Map<String, dynamic>>(routingConfiguration, (value) => value.toMap()),
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'trafficSelectorPolicies': ?pulumi.Input.mapOptionalInputValue<List<TrafficSelectorPolicy>, List<Map<String, dynamic>>>(trafficSelectorPolicies, (value) => pulumi.Input.encodeList<TrafficSelectorPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useLocalAzureIpAddress': ?useLocalAzureIpAddress,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'vpnConnectionProtocolType': ?vpnConnectionProtocolType,
      'vpnLinkConnections': ?pulumi.Input.mapOptionalInputValue<List<VpnSiteLinkConnection>, List<Map<String, dynamic>>>(vpnLinkConnections, (value) => pulumi.Input.encodeList<VpnSiteLinkConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpnConnection.fromMap(Map<String, dynamic> map) {
    return VpnConnection(
      connectionBandwidth: (() { final guardedValue = map['connectionBandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      dpdTimeoutSeconds: (() { final guardedValue = map['dpdTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      enableBgp: (() { final guardedValue = map['enableBgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableInternetSecurity: (() { final guardedValue = map['enableInternetSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableRateLimiting: (() { final guardedValue = map['enableRateLimiting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipsecPolicies: (() { final guardedValue = map['ipsecPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpsecPolicy>(guardedValue, (value) => IpsecPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteVpnSite: (() { final guardedValue = map['remoteVpnSite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingConfiguration: (() { final guardedValue = map['routingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingWeight: (() { final guardedValue = map['routingWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficSelectorPolicies: (() { final guardedValue = map['trafficSelectorPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrafficSelectorPolicy>(guardedValue, (value) => TrafficSelectorPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      useLocalAzureIpAddress: (() { final guardedValue = map['useLocalAzureIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      usePolicyBasedTrafficSelectors: (() { final guardedValue = map['usePolicyBasedTrafficSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vpnConnectionProtocolType: (() { final guardedValue = map['vpnConnectionProtocolType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      vpnLinkConnections: (() { final guardedValue = map['vpnLinkConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnSiteLinkConnection>(guardedValue, (value) => VpnSiteLinkConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
