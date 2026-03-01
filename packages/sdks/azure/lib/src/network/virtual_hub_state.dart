// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route.dart';

/// Input properties used for looking up and filtering VirtualHub resources.
class VirtualHubState {
  /// The Address Prefix which should be used for this Virtual Hub. Changing this forces a new resource to be created. [The address prefix subnet cannot be smaller than a `/24`. Azure recommends using a `/23`](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-the-recommended-hub-address-space-during-hub-creation).
  final pulumi.Input<String>? addressPrefix;
  /// Boolean flag to specify whether branch to branch traffic is allowed. Defaults to `false`.
  final pulumi.Input<bool>? branchToBranchTrafficEnabled;
  /// The ID of the default Route Table in the Virtual Hub.
  final pulumi.Input<String>? defaultRouteTableId;
  /// The hub routing preference. Possible values are `ExpressRoute`, `ASPath` and `VpnGateway`. Defaults to `ExpressRoute`.
  final pulumi.Input<String>? hubRoutingPreference;
  /// Specifies the supported Azure location where the Virtual Hub should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Virtual Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Virtual Hub should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// One or more `route` blocks as defined below.
  final pulumi.Input<List<VirtualHubRoute>>? routes;
  /// The SKU of the Virtual Hub. Possible values are `Basic` and `Standard`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sku;
  /// A mapping of tags to assign to the Virtual Hub.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Autonomous System Number of the Virtual Hub BGP router.
  final pulumi.Input<int>? virtualRouterAsn;
  /// Minimum instance capacity for the scaling configuration of the Virtual Hub Router. Defaults to `2`.
  final pulumi.Input<int>? virtualRouterAutoScaleMinCapacity;
  /// The IP addresses of the Virtual Hub BGP router.
  final pulumi.Input<List<String>>? virtualRouterIps;
  /// The ID of a Virtual WAN within which the Virtual Hub should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualWanId;

  /// Creates a new [VirtualHubState].
  /// [addressPrefix] The Address Prefix which should be used for this Virtual Hub. Changing this forces a new resource to be created. [The address prefix subnet cannot be smaller than a `/24`. Azure recommends using a `/23`](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-the-recommended-hub-address-space-during-hub-creation).
  /// [branchToBranchTrafficEnabled] Boolean flag to specify whether branch to branch traffic is allowed. Defaults to `false`.
  /// [defaultRouteTableId] The ID of the default Route Table in the Virtual Hub.
  /// [hubRoutingPreference] The hub routing preference. Possible values are `ExpressRoute`, `ASPath` and `VpnGateway`. Defaults to `ExpressRoute`.
  /// [location] Specifies the supported Azure location where the Virtual Hub should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Virtual Hub. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Virtual Hub should exist. Changing this forces a new resource to be created.
  /// [routes] One or more `route` blocks as defined below.
  /// [sku] The SKU of the Virtual Hub. Possible values are `Basic` and `Standard`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Virtual Hub.
  /// [virtualRouterAsn] The Autonomous System Number of the Virtual Hub BGP router.
  /// [virtualRouterAutoScaleMinCapacity] Minimum instance capacity for the scaling configuration of the Virtual Hub Router. Defaults to `2`.
  /// [virtualRouterIps] The IP addresses of the Virtual Hub BGP router.
  /// [virtualWanId] The ID of a Virtual WAN within which the Virtual Hub should be created. Changing this forces a new resource to be created.
  VirtualHubState({
    pulumi.Output<String>? addressPrefix,
    pulumi.Output<bool>? branchToBranchTrafficEnabled,
    pulumi.Output<String>? defaultRouteTableId,
    pulumi.Output<String>? hubRoutingPreference,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<VirtualHubRoute>>? routes,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? virtualRouterAsn,
    pulumi.Output<int>? virtualRouterAutoScaleMinCapacity,
    pulumi.Output<List<String>>? virtualRouterIps,
    pulumi.Output<String>? virtualWanId,
  }) :
      addressPrefix = pulumi.Input.asOptionalInput<String>(addressPrefix),
      branchToBranchTrafficEnabled = pulumi.Input.asOptionalInput<bool>(branchToBranchTrafficEnabled),
      defaultRouteTableId = pulumi.Input.asOptionalInput<String>(defaultRouteTableId),
      hubRoutingPreference = pulumi.Input.asOptionalInput<String>(hubRoutingPreference),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      routes = pulumi.Input.asOptionalInput<List<VirtualHubRoute>>(routes),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualRouterAsn = pulumi.Input.asOptionalInput<int>(virtualRouterAsn),
      virtualRouterAutoScaleMinCapacity = pulumi.Input.asOptionalInput<int>(virtualRouterAutoScaleMinCapacity),
      virtualRouterIps = pulumi.Input.asOptionalInput<List<String>>(virtualRouterIps),
      virtualWanId = pulumi.Input.asOptionalInput<String>(virtualWanId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'branchToBranchTrafficEnabled': ?branchToBranchTrafficEnabled,
      'defaultRouteTableId': ?defaultRouteTableId,
      'hubRoutingPreference': ?hubRoutingPreference,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<VirtualHubRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VirtualHubRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': ?sku,
      'tags': ?tags,
      'virtualRouterAsn': ?virtualRouterAsn,
      'virtualRouterAutoScaleMinCapacity': ?virtualRouterAutoScaleMinCapacity,
      'virtualRouterIps': ?virtualRouterIps,
      'virtualWanId': ?virtualWanId,
    };
  }

  factory VirtualHubState.fromMap(Map<String, dynamic> map) {
    return VirtualHubState(
      addressPrefix: map['addressPrefix'] == null ? null : pulumi.Output.create<String>(map['addressPrefix'] as String),
      branchToBranchTrafficEnabled: map['branchToBranchTrafficEnabled'] == null ? null : pulumi.Output.create<bool>(map['branchToBranchTrafficEnabled'] as bool),
      defaultRouteTableId: map['defaultRouteTableId'] == null ? null : pulumi.Output.create<String>(map['defaultRouteTableId'] as String),
      hubRoutingPreference: map['hubRoutingPreference'] == null ? null : pulumi.Output.create<String>(map['hubRoutingPreference'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<VirtualHubRoute>>(pulumi.Input.decodeList<VirtualHubRoute>(map['routes'], (value) => VirtualHubRoute.fromMap((value as Map).cast<String, dynamic>()))),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualRouterAsn: map['virtualRouterAsn'] == null ? null : pulumi.Output.create<int>(map['virtualRouterAsn'] as int),
      virtualRouterAutoScaleMinCapacity: map['virtualRouterAutoScaleMinCapacity'] == null ? null : pulumi.Output.create<int>(map['virtualRouterAutoScaleMinCapacity'] as int),
      virtualRouterIps: map['virtualRouterIps'] == null ? null : pulumi.Output.create<List<String>>((map['virtualRouterIps'] as List).cast<String>()),
      virtualWanId: map['virtualWanId'] == null ? null : pulumi.Output.create<String>(map['virtualWanId'] as String),
    );
  }
}

