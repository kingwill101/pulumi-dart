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
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix'] as String).input(),
      allowBranchToBranchTraffic: map['allowBranchToBranchTraffic'] == null ? null : (map['allowBranchToBranchTraffic'] as bool).input(),
      azureFirewall: map['azureFirewall'] == null ? null : (SubResource.fromMap((map['azureFirewall'] as Map).cast<String, dynamic>())).input(),
      expressRouteGateway: map['expressRouteGateway'] == null ? null : (SubResource.fromMap((map['expressRouteGateway'] as Map).cast<String, dynamic>())).input(),
      hubRoutingPreference: map['hubRoutingPreference'] == null ? null : (map['hubRoutingPreference'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      p2SVpnGateway: map['p2SVpnGateway'] == null ? null : (SubResource.fromMap((map['p2SVpnGateway'] as Map).cast<String, dynamic>())).input(),
      preferredRoutingGateway: map['preferredRoutingGateway'] == null ? null : (map['preferredRoutingGateway'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routeTable: map['routeTable'] == null ? null : (VirtualHubRouteTable.fromMap((map['routeTable'] as Map).cast<String, dynamic>())).input(),
      securityPartnerProvider: map['securityPartnerProvider'] == null ? null : (SubResource.fromMap((map['securityPartnerProvider'] as Map).cast<String, dynamic>())).input(),
      securityProviderName: map['securityProviderName'] == null ? null : (map['securityProviderName'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualHubName: map['virtualHubName'] == null ? null : (map['virtualHubName'] as String).input(),
      virtualHubRouteTableV2s: map['virtualHubRouteTableV2s'] == null ? null : ((map['virtualHubRouteTableV2s'] as List).cast<VirtualHubRouteTableV2Network>()).input(),
      virtualRouterAsn: map['virtualRouterAsn'] == null ? null : (map['virtualRouterAsn'] as double).input(),
      virtualRouterAutoScaleConfiguration: map['virtualRouterAutoScaleConfiguration'] == null ? null : (VirtualRouterAutoScaleConfiguration.fromMap((map['virtualRouterAutoScaleConfiguration'] as Map).cast<String, dynamic>())).input(),
      virtualRouterIps: map['virtualRouterIps'] == null ? null : ((map['virtualRouterIps'] as List).cast<String>()).input(),
      virtualWan: map['virtualWan'] == null ? null : (SubResource.fromMap((map['virtualWan'] as Map).cast<String, dynamic>())).input(),
      vpnGateway: map['vpnGateway'] == null ? null : (SubResource.fromMap((map['vpnGateway'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

