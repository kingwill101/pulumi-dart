// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_policy.dart';
import 'routing_configuration.dart';
import 'sub_resource.dart';
import 'traffic_selector_policy.dart';
import 'vpn_site_link_connection.dart';

/// {@template pulumi_network_vpn_connection_args_doc}
/// The set of arguments for VpnConnection.
/// {@endtemplate}
/// {@macro pulumi_network_vpn_connection_args_doc}
class VpnConnectionArgs {
  /// Expected bandwidth in MBPS.
  final pulumi.Input<int>? connectionBandwidth;
  /// The name of the connection.
  final pulumi.Input<String>? connectionName;
  /// DPD timeout in seconds for vpn connection.
  final pulumi.Input<int>? dpdTimeoutSeconds;
  /// EnableBgp flag.
  final pulumi.Input<bool>? enableBgp;
  /// Enable internet security.
  final pulumi.Input<bool>? enableInternetSecurity;
  /// EnableBgp flag.
  final pulumi.Input<bool>? enableRateLimiting;
  /// The name of the gateway.
  final pulumi.Input<String> gatewayName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The IPSec Policies to be considered by this connection.
  final pulumi.Input<List<IpsecPolicy>>? ipsecPolicies;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Id of the connected vpn site.
  final pulumi.Input<SubResource>? remoteVpnSite;
  /// The resource group name of the VpnGateway.
  final pulumi.Input<String> resourceGroupName;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfiguration>? routingConfiguration;
  /// Routing weight for vpn connection.
  final pulumi.Input<int>? routingWeight;
  /// SharedKey for the vpn connection.
  final pulumi.Input<String>? sharedKey;
  /// The Traffic Selector Policies to be considered by this connection.
  final pulumi.Input<List<TrafficSelectorPolicy>>? trafficSelectorPolicies;
  /// Use local azure ip to initiate connection.
  final pulumi.Input<bool>? useLocalAzureIpAddress;
  /// Enable policy-based traffic selectors.
  final pulumi.Input<bool>? usePolicyBasedTrafficSelectors;
  /// Connection protocol used for this connection.
  final pulumi.Input<String>? vpnConnectionProtocolType;
  /// List of all vpn site link connections to the gateway.
  final pulumi.Input<List<VpnSiteLinkConnection>>? vpnLinkConnections;

  /// Creates a new [VpnConnectionArgs].
  /// [connectionBandwidth] Expected bandwidth in MBPS.
  /// [connectionName] The name of the connection.
  /// [dpdTimeoutSeconds] DPD timeout in seconds for vpn connection.
  /// [enableBgp] EnableBgp flag.
  /// [enableInternetSecurity] Enable internet security.
  /// [enableRateLimiting] EnableBgp flag.
  /// [gatewayName] The name of the gateway.
  /// [id] Resource ID.
  /// [ipsecPolicies] The IPSec Policies to be considered by this connection.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [remoteVpnSite] Id of the connected vpn site.
  /// [resourceGroupName] The resource group name of the VpnGateway.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [routingWeight] Routing weight for vpn connection.
  /// [sharedKey] SharedKey for the vpn connection.
  /// [trafficSelectorPolicies] The Traffic Selector Policies to be considered by this connection.
  /// [useLocalAzureIpAddress] Use local azure ip to initiate connection.
  /// [usePolicyBasedTrafficSelectors] Enable policy-based traffic selectors.
  /// [vpnConnectionProtocolType] Connection protocol used for this connection.
  /// [vpnLinkConnections] List of all vpn site link connections to the gateway.
  VpnConnectionArgs({
    pulumi.Output<int>? connectionBandwidth,
    pulumi.Output<String>? connectionName,
    pulumi.Output<int>? dpdTimeoutSeconds,
    pulumi.Output<bool>? enableBgp,
    pulumi.Output<bool>? enableInternetSecurity,
    pulumi.Output<bool>? enableRateLimiting,
    required pulumi.Output<String> gatewayName,
    pulumi.Output<String>? id,
    pulumi.Output<List<IpsecPolicy>>? ipsecPolicies,
    pulumi.Output<String>? name,
    pulumi.Output<SubResource>? remoteVpnSite,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<RoutingConfiguration>? routingConfiguration,
    pulumi.Output<int>? routingWeight,
    pulumi.Output<String>? sharedKey,
    pulumi.Output<List<TrafficSelectorPolicy>>? trafficSelectorPolicies,
    pulumi.Output<bool>? useLocalAzureIpAddress,
    pulumi.Output<bool>? usePolicyBasedTrafficSelectors,
    pulumi.Output<String>? vpnConnectionProtocolType,
    pulumi.Output<List<VpnSiteLinkConnection>>? vpnLinkConnections,
  }) :
      connectionBandwidth = pulumi.Input.asOptionalInput<int>(connectionBandwidth),
      connectionName = pulumi.Input.asOptionalInput<String>(connectionName),
      dpdTimeoutSeconds = pulumi.Input.asOptionalInput<int>(dpdTimeoutSeconds),
      enableBgp = pulumi.Input.asOptionalInput<bool>(enableBgp),
      enableInternetSecurity = pulumi.Input.asOptionalInput<bool>(enableInternetSecurity),
      enableRateLimiting = pulumi.Input.asOptionalInput<bool>(enableRateLimiting),
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      id = pulumi.Input.asOptionalInput<String>(id),
      ipsecPolicies = pulumi.Input.asOptionalInput<List<IpsecPolicy>>(ipsecPolicies),
      name = pulumi.Input.asOptionalInput<String>(name),
      remoteVpnSite = pulumi.Input.asOptionalInput<SubResource>(remoteVpnSite),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routingConfiguration = pulumi.Input.asOptionalInput<RoutingConfiguration>(routingConfiguration),
      routingWeight = pulumi.Input.asOptionalInput<int>(routingWeight),
      sharedKey = pulumi.Input.asOptionalInput<String>(sharedKey),
      trafficSelectorPolicies = pulumi.Input.asOptionalInput<List<TrafficSelectorPolicy>>(trafficSelectorPolicies),
      useLocalAzureIpAddress = pulumi.Input.asOptionalInput<bool>(useLocalAzureIpAddress),
      usePolicyBasedTrafficSelectors = pulumi.Input.asOptionalInput<bool>(usePolicyBasedTrafficSelectors),
      vpnConnectionProtocolType = pulumi.Input.asOptionalInput<String>(vpnConnectionProtocolType),
      vpnLinkConnections = pulumi.Input.asOptionalInput<List<VpnSiteLinkConnection>>(vpnLinkConnections);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionBandwidth': ?connectionBandwidth,
      'connectionName': ?connectionName,
      'dpdTimeoutSeconds': ?dpdTimeoutSeconds,
      'enableBgp': ?enableBgp,
      'enableInternetSecurity': ?enableInternetSecurity,
      'enableRateLimiting': ?enableRateLimiting,
      'gatewayName': gatewayName,
      'id': ?id,
      'ipsecPolicies': ?pulumi.Input.mapOptionalInputValue<List<IpsecPolicy>, List<Map<String, dynamic>>>(ipsecPolicies, (value) => pulumi.Input.encodeList<IpsecPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'remoteVpnSite': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(remoteVpnSite, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
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

  factory VpnConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpnConnectionArgs(
      connectionBandwidth: map['connectionBandwidth'] == null ? null : pulumi.Output.create<int>(map['connectionBandwidth'] as int),
      connectionName: map['connectionName'] == null ? null : pulumi.Output.create<String>(map['connectionName'] as String),
      dpdTimeoutSeconds: map['dpdTimeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['dpdTimeoutSeconds'] as int),
      enableBgp: map['enableBgp'] == null ? null : pulumi.Output.create<bool>(map['enableBgp'] as bool),
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : pulumi.Output.create<bool>(map['enableInternetSecurity'] as bool),
      enableRateLimiting: map['enableRateLimiting'] == null ? null : pulumi.Output.create<bool>(map['enableRateLimiting'] as bool),
      gatewayName: pulumi.Output.create<String>(map['gatewayName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      ipsecPolicies: map['ipsecPolicies'] == null ? null : pulumi.Output.create<List<IpsecPolicy>>(pulumi.Input.decodeList<IpsecPolicy>(map['ipsecPolicies'], (value) => IpsecPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      remoteVpnSite: map['remoteVpnSite'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['remoteVpnSite'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routingConfiguration: map['routingConfiguration'] == null ? null : pulumi.Output.create<RoutingConfiguration>(RoutingConfiguration.fromMap((map['routingConfiguration'] as Map).cast<String, dynamic>())),
      routingWeight: map['routingWeight'] == null ? null : pulumi.Output.create<int>(map['routingWeight'] as int),
      sharedKey: map['sharedKey'] == null ? null : pulumi.Output.create<String>(map['sharedKey'] as String),
      trafficSelectorPolicies: map['trafficSelectorPolicies'] == null ? null : pulumi.Output.create<List<TrafficSelectorPolicy>>(pulumi.Input.decodeList<TrafficSelectorPolicy>(map['trafficSelectorPolicies'], (value) => TrafficSelectorPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      useLocalAzureIpAddress: map['useLocalAzureIpAddress'] == null ? null : pulumi.Output.create<bool>(map['useLocalAzureIpAddress'] as bool),
      usePolicyBasedTrafficSelectors: map['usePolicyBasedTrafficSelectors'] == null ? null : pulumi.Output.create<bool>(map['usePolicyBasedTrafficSelectors'] as bool),
      vpnConnectionProtocolType: map['vpnConnectionProtocolType'] == null ? null : pulumi.Output.create<String>(map['vpnConnectionProtocolType'] as String),
      vpnLinkConnections: map['vpnLinkConnections'] == null ? null : pulumi.Output.create<List<VpnSiteLinkConnection>>(pulumi.Input.decodeList<VpnSiteLinkConnection>(map['vpnLinkConnections'], (value) => VpnSiteLinkConnection.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

