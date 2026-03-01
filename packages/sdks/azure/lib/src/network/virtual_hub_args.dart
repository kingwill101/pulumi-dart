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
    pulumi.Output<String>? addressPrefix,
    pulumi.Output<bool>? branchToBranchTrafficEnabled,
    pulumi.Output<String>? hubRoutingPreference,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<VirtualHubRoute>>? routes,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? virtualRouterAutoScaleMinCapacity,
    pulumi.Output<String>? virtualWanId,
  }) :
      addressPrefix = pulumi.Input.asOptionalInput<String>(addressPrefix),
      branchToBranchTrafficEnabled = pulumi.Input.asOptionalInput<bool>(branchToBranchTrafficEnabled),
      hubRoutingPreference = pulumi.Input.asOptionalInput<String>(hubRoutingPreference),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routes = pulumi.Input.asOptionalInput<List<VirtualHubRoute>>(routes),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualRouterAutoScaleMinCapacity = pulumi.Input.asOptionalInput<int>(virtualRouterAutoScaleMinCapacity),
      virtualWanId = pulumi.Input.asOptionalInput<String>(virtualWanId);

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
      addressPrefix: map['addressPrefix'] == null ? null : pulumi.Output.create<String>(map['addressPrefix'] as String),
      branchToBranchTrafficEnabled: map['branchToBranchTrafficEnabled'] == null ? null : pulumi.Output.create<bool>(map['branchToBranchTrafficEnabled'] as bool),
      hubRoutingPreference: map['hubRoutingPreference'] == null ? null : pulumi.Output.create<String>(map['hubRoutingPreference'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<VirtualHubRoute>>(pulumi.Input.decodeList<VirtualHubRoute>(map['routes'], (value) => VirtualHubRoute.fromMap((value as Map).cast<String, dynamic>()))),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualRouterAutoScaleMinCapacity: map['virtualRouterAutoScaleMinCapacity'] == null ? null : pulumi.Output.create<int>(map['virtualRouterAutoScaleMinCapacity'] as int),
      virtualWanId: map['virtualWanId'] == null ? null : pulumi.Output.create<String>(map['virtualWanId'] as String),
    );
  }
}

