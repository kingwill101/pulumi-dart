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
    pulumi.Output<String>? addressPrefix,
    pulumi.Output<bool>? allowBranchToBranchTraffic,
    pulumi.Output<SubResource>? azureFirewall,
    pulumi.Output<SubResource>? expressRouteGateway,
    pulumi.Output<String>? hubRoutingPreference,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    pulumi.Output<SubResource>? p2SVpnGateway,
    pulumi.Output<String>? preferredRoutingGateway,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<VirtualHubRouteTable>? routeTable,
    pulumi.Output<SubResource>? securityPartnerProvider,
    pulumi.Output<String>? securityProviderName,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualHubName,
    pulumi.Output<List<VirtualHubRouteTableV2Network>>? virtualHubRouteTableV2s,
    pulumi.Output<double>? virtualRouterAsn,
    pulumi.Output<VirtualRouterAutoScaleConfiguration>? virtualRouterAutoScaleConfiguration,
    pulumi.Output<List<String>>? virtualRouterIps,
    pulumi.Output<SubResource>? virtualWan,
    pulumi.Output<SubResource>? vpnGateway,
  }) :
      addressPrefix = pulumi.Input.asOptionalInput<String>(addressPrefix),
      allowBranchToBranchTraffic = pulumi.Input.asOptionalInput<bool>(allowBranchToBranchTraffic),
      azureFirewall = pulumi.Input.asOptionalInput<SubResource>(azureFirewall),
      expressRouteGateway = pulumi.Input.asOptionalInput<SubResource>(expressRouteGateway),
      hubRoutingPreference = pulumi.Input.asOptionalInput<String>(hubRoutingPreference),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      p2SVpnGateway = pulumi.Input.asOptionalInput<SubResource>(p2SVpnGateway),
      preferredRoutingGateway = pulumi.Input.asOptionalInput<String>(preferredRoutingGateway),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeTable = pulumi.Input.asOptionalInput<VirtualHubRouteTable>(routeTable),
      securityPartnerProvider = pulumi.Input.asOptionalInput<SubResource>(securityPartnerProvider),
      securityProviderName = pulumi.Input.asOptionalInput<String>(securityProviderName),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualHubName = pulumi.Input.asOptionalInput<String>(virtualHubName),
      virtualHubRouteTableV2s = pulumi.Input.asOptionalInput<List<VirtualHubRouteTableV2Network>>(virtualHubRouteTableV2s),
      virtualRouterAsn = pulumi.Input.asOptionalInput<double>(virtualRouterAsn),
      virtualRouterAutoScaleConfiguration = pulumi.Input.asOptionalInput<VirtualRouterAutoScaleConfiguration>(virtualRouterAutoScaleConfiguration),
      virtualRouterIps = pulumi.Input.asOptionalInput<List<String>>(virtualRouterIps),
      virtualWan = pulumi.Input.asOptionalInput<SubResource>(virtualWan),
      vpnGateway = pulumi.Input.asOptionalInput<SubResource>(vpnGateway);

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
      addressPrefix: map['addressPrefix'] == null ? null : pulumi.Output.create<String>(map['addressPrefix'] as String),
      allowBranchToBranchTraffic: map['allowBranchToBranchTraffic'] == null ? null : pulumi.Output.create<bool>(map['allowBranchToBranchTraffic'] as bool),
      azureFirewall: map['azureFirewall'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['azureFirewall'] as Map).cast<String, dynamic>())),
      expressRouteGateway: map['expressRouteGateway'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['expressRouteGateway'] as Map).cast<String, dynamic>())),
      hubRoutingPreference: map['hubRoutingPreference'] == null ? null : pulumi.Output.create<String>(map['hubRoutingPreference'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      p2SVpnGateway: map['p2SVpnGateway'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['p2SVpnGateway'] as Map).cast<String, dynamic>())),
      preferredRoutingGateway: map['preferredRoutingGateway'] == null ? null : pulumi.Output.create<String>(map['preferredRoutingGateway'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routeTable: map['routeTable'] == null ? null : pulumi.Output.create<VirtualHubRouteTable>(VirtualHubRouteTable.fromMap((map['routeTable'] as Map).cast<String, dynamic>())),
      securityPartnerProvider: map['securityPartnerProvider'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['securityPartnerProvider'] as Map).cast<String, dynamic>())),
      securityProviderName: map['securityProviderName'] == null ? null : pulumi.Output.create<String>(map['securityProviderName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualHubName: map['virtualHubName'] == null ? null : pulumi.Output.create<String>(map['virtualHubName'] as String),
      virtualHubRouteTableV2s: map['virtualHubRouteTableV2s'] == null ? null : pulumi.Output.create<List<VirtualHubRouteTableV2Network>>((map['virtualHubRouteTableV2s'] as List).cast<VirtualHubRouteTableV2Network>()),
      virtualRouterAsn: map['virtualRouterAsn'] == null ? null : pulumi.Output.create<double>(map['virtualRouterAsn'] as double),
      virtualRouterAutoScaleConfiguration: map['virtualRouterAutoScaleConfiguration'] == null ? null : pulumi.Output.create<VirtualRouterAutoScaleConfiguration>(VirtualRouterAutoScaleConfiguration.fromMap((map['virtualRouterAutoScaleConfiguration'] as Map).cast<String, dynamic>())),
      virtualRouterIps: map['virtualRouterIps'] == null ? null : pulumi.Output.create<List<String>>((map['virtualRouterIps'] as List).cast<String>()),
      virtualWan: map['virtualWan'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['virtualWan'] as Map).cast<String, dynamic>())),
      vpnGateway: map['vpnGateway'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['vpnGateway'] as Map).cast<String, dynamic>())),
    );
  }
}

