// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'virtual_hub_route_table_response.dart';
import 'virtual_hub_route_table_v2_response.dart';
import 'virtual_router_auto_scale_configuration_response.dart';

/// Result data returned by getVirtualHub.
class GetVirtualHubResult {
  /// Address-prefix for this VirtualHub.
  final String? addressPrefix;
  /// Flag to control transit for VirtualRouter hub.
  final bool? allowBranchToBranchTraffic;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The azureFirewall associated with this VirtualHub.
  final SubResourceResponse? azureFirewall;
  /// List of references to Bgp Connections.
  final List<SubResourceResponse> bgpConnections;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The expressRouteGateway associated with this VirtualHub.
  final SubResourceResponse? expressRouteGateway;
  /// The hubRoutingPreference of this VirtualHub.
  final String? hubRoutingPreference;
  /// Resource ID.
  final String? id;
  /// List of references to IpConfigurations.
  final List<SubResourceResponse> ipConfigurations;
  /// Kind of service virtual hub. This is metadata used for the Azure portal experience for Route Server.
  final String kind;
  /// Resource location.
  final String location;
  /// Resource name.
  final String name;
  /// The P2SVpnGateway associated with this VirtualHub.
  final SubResourceResponse? p2SVpnGateway;
  /// The preferred gateway to route on-prem traffic
  final String? preferredRoutingGateway;
  /// The provisioning state of the virtual hub resource.
  final String provisioningState;
  /// List of references to RouteMaps.
  final List<SubResourceResponse> routeMaps;
  /// The routeTable associated with this virtual hub.
  final VirtualHubRouteTableResponse? routeTable;
  /// The routing state.
  final String routingState;
  /// The securityPartnerProvider associated with this VirtualHub.
  final SubResourceResponse? securityPartnerProvider;
  /// The Security Provider name.
  final String? securityProviderName;
  /// The sku of this VirtualHub.
  final String? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// List of all virtual hub route table v2s associated with this VirtualHub.
  final List<VirtualHubRouteTableV2Response>? virtualHubRouteTableV2s;
  /// VirtualRouter ASN.
  final double? virtualRouterAsn;
  /// The VirtualHub Router autoscale configuration.
  final VirtualRouterAutoScaleConfigurationResponse? virtualRouterAutoScaleConfiguration;
  /// VirtualRouter IPs.
  final List<String>? virtualRouterIps;
  /// The VirtualWAN to which the VirtualHub belongs.
  final SubResourceResponse? virtualWan;
  /// The VpnGateway associated with this VirtualHub.
  final SubResourceResponse? vpnGateway;

  /// Creates a new [GetVirtualHubResult].
  /// [addressPrefix] Address-prefix for this VirtualHub.
  /// [allowBranchToBranchTraffic] Flag to control transit for VirtualRouter hub.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureFirewall] The azureFirewall associated with this VirtualHub.
  /// [bgpConnections] List of references to Bgp Connections.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [expressRouteGateway] The expressRouteGateway associated with this VirtualHub.
  /// [hubRoutingPreference] The hubRoutingPreference of this VirtualHub.
  /// [id] Resource ID.
  /// [ipConfigurations] List of references to IpConfigurations.
  /// [kind] Kind of service virtual hub. This is metadata used for the Azure portal experience for Route Server.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [p2SVpnGateway] The P2SVpnGateway associated with this VirtualHub.
  /// [preferredRoutingGateway] The preferred gateway to route on-prem traffic
  /// [provisioningState] The provisioning state of the virtual hub resource.
  /// [routeMaps] List of references to RouteMaps.
  /// [routeTable] The routeTable associated with this virtual hub.
  /// [routingState] The routing state.
  /// [securityPartnerProvider] The securityPartnerProvider associated with this VirtualHub.
  /// [securityProviderName] The Security Provider name.
  /// [sku] The sku of this VirtualHub.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualHubRouteTableV2s] List of all virtual hub route table v2s associated with this VirtualHub.
  /// [virtualRouterAsn] VirtualRouter ASN.
  /// [virtualRouterAutoScaleConfiguration] The VirtualHub Router autoscale configuration.
  /// [virtualRouterIps] VirtualRouter IPs.
  /// [virtualWan] The VirtualWAN to which the VirtualHub belongs.
  /// [vpnGateway] The VpnGateway associated with this VirtualHub.
  const GetVirtualHubResult({
    this.addressPrefix,
    this.allowBranchToBranchTraffic,
    required this.azureApiVersion,
    this.azureFirewall,
    required this.bgpConnections,
    required this.etag,
    this.expressRouteGateway,
    this.hubRoutingPreference,
    this.id,
    required this.ipConfigurations,
    required this.kind,
    required this.location,
    required this.name,
    this.p2SVpnGateway,
    this.preferredRoutingGateway,
    required this.provisioningState,
    required this.routeMaps,
    this.routeTable,
    required this.routingState,
    this.securityPartnerProvider,
    this.securityProviderName,
    this.sku,
    this.tags,
    required this.type,
    this.virtualHubRouteTableV2s,
    this.virtualRouterAsn,
    this.virtualRouterAutoScaleConfiguration,
    this.virtualRouterIps,
    this.virtualWan,
    this.vpnGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'allowBranchToBranchTraffic': ?allowBranchToBranchTraffic,
      'azureApiVersion': azureApiVersion,
      'azureFirewall': ?azureFirewall?.toMap(),
      'bgpConnections': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(bgpConnections, (value) => value.toMap()),
      'etag': etag,
      'expressRouteGateway': ?expressRouteGateway?.toMap(),
      'hubRoutingPreference': ?hubRoutingPreference,
      'id': ?id,
      'ipConfigurations': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'kind': kind,
      'location': location,
      'name': name,
      'p2SVpnGateway': ?p2SVpnGateway?.toMap(),
      'preferredRoutingGateway': ?preferredRoutingGateway,
      'provisioningState': provisioningState,
      'routeMaps': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(routeMaps, (value) => value.toMap()),
      'routeTable': ?routeTable?.toMap(),
      'routingState': routingState,
      'securityPartnerProvider': ?securityPartnerProvider?.toMap(),
      'securityProviderName': ?securityProviderName,
      'sku': ?sku,
      'tags': ?tags,
      'type': type,
      'virtualHubRouteTableV2s': ?(() { final guardedValue = virtualHubRouteTableV2s; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualHubRouteTableV2Response, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'virtualRouterAsn': ?virtualRouterAsn,
      'virtualRouterAutoScaleConfiguration': ?virtualRouterAutoScaleConfiguration?.toMap(),
      'virtualRouterIps': ?virtualRouterIps,
      'virtualWan': ?virtualWan?.toMap(),
      'vpnGateway': ?vpnGateway?.toMap(),
    };
  }

  factory GetVirtualHubResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubResult(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowBranchToBranchTraffic: (() { final guardedValue = map['allowBranchToBranchTraffic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      azureFirewall: (() { final guardedValue = map['azureFirewall']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      bgpConnections: pulumi.Input.decodeList<SubResourceResponse>(map['bgpConnections']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      expressRouteGateway: (() { final guardedValue = map['expressRouteGateway']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hubRoutingPreference: (() { final guardedValue = map['hubRoutingPreference']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: pulumi.Input.decodeList<SubResourceResponse>(map['ipConfigurations']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      p2SVpnGateway: (() { final guardedValue = map['p2SVpnGateway']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      preferredRoutingGateway: (() { final guardedValue = map['preferredRoutingGateway']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      routeMaps: pulumi.Input.decodeList<SubResourceResponse>(map['routeMaps']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      routeTable: (() { final guardedValue = map['routeTable']; if (guardedValue == null) return null; return VirtualHubRouteTableResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      routingState: map['routingState'] as String,
      securityPartnerProvider: (() { final guardedValue = map['securityPartnerProvider']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      securityProviderName: (() { final guardedValue = map['securityProviderName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      virtualHubRouteTableV2s: (() { final guardedValue = map['virtualHubRouteTableV2s']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualHubRouteTableV2Response>(guardedValue, (value) => VirtualHubRouteTableV2Response.fromMap((value as Map).cast<String, dynamic>())); })(),
      virtualRouterAsn: (() { final guardedValue = map['virtualRouterAsn']; if (guardedValue == null) return null; return guardedValue as double; })(),
      virtualRouterAutoScaleConfiguration: (() { final guardedValue = map['virtualRouterAutoScaleConfiguration']; if (guardedValue == null) return null; return VirtualRouterAutoScaleConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      virtualRouterIps: (() { final guardedValue = map['virtualRouterIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      virtualWan: (() { final guardedValue = map['virtualWan']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vpnGateway: (() { final guardedValue = map['vpnGateway']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
