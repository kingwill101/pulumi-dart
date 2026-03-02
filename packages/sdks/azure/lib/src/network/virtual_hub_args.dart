// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route.dart';

/// {@template pulumi_network_virtual_hub_virtual_hub_args_doc}
/// The set of arguments for VirtualHub.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_hub_virtual_hub_args_doc}
class VirtualHubArgs {
  /// The Address Prefix which should be used for this Virtual Hub. Changing this forces a new resource to be created. [The address prefix subnet cannot be smaller than a `/24`. Azure recommends using a `/23`](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-the-recommended-hub-address-space-during-hub-creation).
  final pulumi.Input<String>? addressPrefix;
  /// Boolean flag to specify whether branch to branch traffic is allowed. Defaults to `false`.
  final pulumi.Input<bool>? branchToBranchTrafficEnabled;
  /// The hub routing preference. Possible values are `ExpressRoute`, `ASPath` and `VpnGateway`. Defaults to `ExpressRoute`.
  final pulumi.Input<String>? hubRoutingPreference;
  /// Specifies the supported Azure location where the Virtual Hub should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Virtual Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Virtual Hub should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// One or more `route` blocks as defined below.
  final pulumi.Input<List<VirtualHubRoute>>? routes;
  /// The SKU of the Virtual Hub. Possible values are `Basic` and `Standard`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sku;
  /// A mapping of tags to assign to the Virtual Hub.
  final pulumi.Input<Map<String, String>>? tags;
  /// Minimum instance capacity for the scaling configuration of the Virtual Hub Router. Defaults to `2`.
  final pulumi.Input<int>? virtualRouterAutoScaleMinCapacity;
  /// The ID of a Virtual WAN within which the Virtual Hub should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualWanId;

  /// Creates a new [VirtualHubArgs].
  /// [addressPrefix] The Address Prefix which should be used for this Virtual Hub. Changing this forces a new resource to be created. [The address prefix subnet cannot be smaller than a `/24`. Azure recommends using a `/23`](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-the-recommended-hub-address-space-during-hub-creation).
  /// [branchToBranchTrafficEnabled] Boolean flag to specify whether branch to branch traffic is allowed. Defaults to `false`.
  /// [hubRoutingPreference] The hub routing preference. Possible values are `ExpressRoute`, `ASPath` and `VpnGateway`. Defaults to `ExpressRoute`.
  /// [location] Specifies the supported Azure location where the Virtual Hub should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Virtual Hub. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Virtual Hub should exist. Changing this forces a new resource to be created.
  /// [routes] One or more `route` blocks as defined below.
  /// [sku] The SKU of the Virtual Hub. Possible values are `Basic` and `Standard`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Virtual Hub.
  /// [virtualRouterAutoScaleMinCapacity] Minimum instance capacity for the scaling configuration of the Virtual Hub Router. Defaults to `2`.
  /// [virtualWanId] The ID of a Virtual WAN within which the Virtual Hub should be created. Changing this forces a new resource to be created.
  VirtualHubArgs({
    this.addressPrefix,
    this.branchToBranchTrafficEnabled,
    this.hubRoutingPreference,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.routes,
    this.sku,
    this.tags,
    this.virtualRouterAutoScaleMinCapacity,
    this.virtualWanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'branchToBranchTrafficEnabled': ?branchToBranchTrafficEnabled,
      'hubRoutingPreference': ?hubRoutingPreference,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<VirtualHubRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VirtualHubRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': ?sku,
      'tags': ?tags,
      'virtualRouterAutoScaleMinCapacity': ?virtualRouterAutoScaleMinCapacity,
      'virtualWanId': ?virtualWanId,
    };
  }

  factory VirtualHubArgs.fromMap(Map<String, dynamic> map) {
    return VirtualHubArgs(
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix']! as String).input(),
      branchToBranchTrafficEnabled: map['branchToBranchTrafficEnabled'] == null ? null : (map['branchToBranchTrafficEnabled']! as bool).input(),
      hubRoutingPreference: map['hubRoutingPreference'] == null ? null : (map['hubRoutingPreference']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<VirtualHubRoute>(map['routes']!, (value) => VirtualHubRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualRouterAutoScaleMinCapacity: map['virtualRouterAutoScaleMinCapacity'] == null ? null : (map['virtualRouterAutoScaleMinCapacity']! as int).input(),
      virtualWanId: map['virtualWanId'] == null ? null : (map['virtualWanId']! as String).input(),
    );
  }
}

