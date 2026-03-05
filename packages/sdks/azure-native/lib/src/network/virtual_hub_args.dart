// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';
import 'virtual_hub_route_table.dart';
import 'virtual_hub_route_table_v2_network.dart';
import 'virtual_router_auto_scale_configuration.dart';

/// {@template pulumi_network_virtual_hub_args_doc}
/// The set of arguments for VirtualHub.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_hub_args_doc}
class VirtualHubArgs {
  /// Address-prefix for this VirtualHub.
  final pulumi.Input<String>? addressPrefix;
  /// Flag to control transit for VirtualRouter hub.
  final pulumi.Input<bool>? allowBranchToBranchTraffic;
  /// The azureFirewall associated with this VirtualHub.
  final pulumi.Input<SubResource>? azureFirewall;
  /// The expressRouteGateway associated with this VirtualHub.
  final pulumi.Input<SubResource>? expressRouteGateway;
  /// The hubRoutingPreference of this VirtualHub.
  final pulumi.Input<String>? hubRoutingPreference;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The P2SVpnGateway associated with this VirtualHub.
  final pulumi.Input<SubResource>? p2SVpnGateway;
  /// The preferred gateway to route on-prem traffic
  final pulumi.Input<String>? preferredRoutingGateway;
  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;
  /// The routeTable associated with this virtual hub.
  final pulumi.Input<VirtualHubRouteTable>? routeTable;
  /// The securityPartnerProvider associated with this VirtualHub.
  final pulumi.Input<SubResource>? securityPartnerProvider;
  /// The Security Provider name.
  final pulumi.Input<String>? securityProviderName;
  /// The sku of this VirtualHub.
  final pulumi.Input<String>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the VirtualHub.
  final pulumi.Input<String>? virtualHubName;
  /// List of all virtual hub route table v2s associated with this VirtualHub.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<VirtualHubRouteTableV2Network>>? virtualHubRouteTableV2s;
  /// VirtualRouter ASN.
  final pulumi.Input<double>? virtualRouterAsn;
  /// The VirtualHub Router autoscale configuration.
  final pulumi.Input<VirtualRouterAutoScaleConfiguration>? virtualRouterAutoScaleConfiguration;
  /// VirtualRouter IPs.
  final pulumi.Input<List<String>>? virtualRouterIps;
  /// The VirtualWAN to which the VirtualHub belongs.
  final pulumi.Input<SubResource>? virtualWan;
  /// The VpnGateway associated with this VirtualHub.
  final pulumi.Input<SubResource>? vpnGateway;

  /// Creates a new [VirtualHubArgs].
  /// [addressPrefix] Address-prefix for this VirtualHub.
  /// [allowBranchToBranchTraffic] Flag to control transit for VirtualRouter hub.
  /// [azureFirewall] The azureFirewall associated with this VirtualHub.
  /// [expressRouteGateway] The expressRouteGateway associated with this VirtualHub.
  /// [hubRoutingPreference] The hubRoutingPreference of this VirtualHub.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [p2SVpnGateway] The P2SVpnGateway associated with this VirtualHub.
  /// [preferredRoutingGateway] The preferred gateway to route on-prem traffic
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [routeTable] The routeTable associated with this virtual hub.
  /// [securityPartnerProvider] The securityPartnerProvider associated with this VirtualHub.
  /// [securityProviderName] The Security Provider name.
  /// [sku] The sku of this VirtualHub.
  /// [tags] Resource tags.
  /// [virtualHubName] The name of the VirtualHub.
  /// [virtualHubRouteTableV2s] List of all virtual hub route table v2s associated with this VirtualHub.
  /// [virtualRouterAsn] VirtualRouter ASN.
  /// [virtualRouterAutoScaleConfiguration] The VirtualHub Router autoscale configuration.
  /// [virtualRouterIps] VirtualRouter IPs.
  /// [virtualWan] The VirtualWAN to which the VirtualHub belongs.
  /// [vpnGateway] The VpnGateway associated with this VirtualHub.
  VirtualHubArgs({
    this.addressPrefix,
    this.allowBranchToBranchTraffic,
    this.azureFirewall,
    this.expressRouteGateway,
    this.hubRoutingPreference,
    this.id,
    this.location,
    this.p2SVpnGateway,
    this.preferredRoutingGateway,
    required this.resourceGroupName,
    this.routeTable,
    this.securityPartnerProvider,
    this.securityProviderName,
    this.sku,
    this.tags,
    this.virtualHubName,
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
      'azureFirewall': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(azureFirewall, (value) => value.toMap()),
      'expressRouteGateway': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(expressRouteGateway, (value) => value.toMap()),
      'hubRoutingPreference': ?hubRoutingPreference,
      'id': ?id,
      'location': ?location,
      'p2SVpnGateway': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(p2SVpnGateway, (value) => value.toMap()),
      'preferredRoutingGateway': ?preferredRoutingGateway,
      'resourceGroupName': resourceGroupName,
      'routeTable': ?pulumi.Input.mapOptionalInputValue<VirtualHubRouteTable, Map<String, dynamic>>(routeTable, (value) => value.toMap()),
      'securityPartnerProvider': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(securityPartnerProvider, (value) => value.toMap()),
      'securityProviderName': ?securityProviderName,
      'sku': ?sku,
      'tags': ?tags,
      'virtualHubName': ?virtualHubName,
      'virtualHubRouteTableV2s': ?virtualHubRouteTableV2s,
      'virtualRouterAsn': ?virtualRouterAsn,
      'virtualRouterAutoScaleConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualRouterAutoScaleConfiguration, Map<String, dynamic>>(virtualRouterAutoScaleConfiguration, (value) => value.toMap()),
      'virtualRouterIps': ?virtualRouterIps,
      'virtualWan': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualWan, (value) => value.toMap()),
      'vpnGateway': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(vpnGateway, (value) => value.toMap()),
    };
  }

  factory VirtualHubArgs.fromMap(Map<String, dynamic> map) {
    return VirtualHubArgs(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowBranchToBranchTraffic: (() { final guardedValue = map['allowBranchToBranchTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      azureFirewall: (() { final guardedValue = map['azureFirewall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expressRouteGateway: (() { final guardedValue = map['expressRouteGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hubRoutingPreference: (() { final guardedValue = map['hubRoutingPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      p2SVpnGateway: (() { final guardedValue = map['p2SVpnGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferredRoutingGateway: (() { final guardedValue = map['preferredRoutingGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routeTable: (() { final guardedValue = map['routeTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualHubRouteTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityPartnerProvider: (() { final guardedValue = map['securityPartnerProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityProviderName: (() { final guardedValue = map['securityProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualHubName: (() { final guardedValue = map['virtualHubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualHubRouteTableV2s: (() { final guardedValue = map['virtualHubRouteTableV2s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<VirtualHubRouteTableV2Network>()); })(),
      virtualRouterAsn: (() { final guardedValue = map['virtualRouterAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      virtualRouterAutoScaleConfiguration: (() { final guardedValue = map['virtualRouterAutoScaleConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualRouterAutoScaleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualRouterIps: (() { final guardedValue = map['virtualRouterIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      virtualWan: (() { final guardedValue = map['virtualWan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpnGateway: (() { final guardedValue = map['vpnGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

