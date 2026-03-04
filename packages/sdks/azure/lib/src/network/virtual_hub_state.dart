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
    this.addressPrefix,
    this.branchToBranchTrafficEnabled,
    this.defaultRouteTableId,
    this.hubRoutingPreference,
    this.location,
    this.name,
    this.resourceGroupName,
    this.routes,
    this.sku,
    this.tags,
    this.virtualRouterAsn,
    this.virtualRouterAutoScaleMinCapacity,
    this.virtualRouterIps,
    this.virtualWanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'branchToBranchTrafficEnabled': ?branchToBranchTrafficEnabled,
      'defaultRouteTableId': ?defaultRouteTableId,
      'hubRoutingPreference': ?hubRoutingPreference,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'routes':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualHubRoute>,
            List<Map<String, dynamic>>
          >(
            routes,
            (value) =>
                pulumi.Input.encodeList<VirtualHubRoute, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
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
      addressPrefix: (() {
        final guardedValue = map['addressPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      branchToBranchTrafficEnabled: (() {
        final guardedValue = map['branchToBranchTrafficEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      defaultRouteTableId: (() {
        final guardedValue = map['defaultRouteTableId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hubRoutingPreference: (() {
        final guardedValue = map['hubRoutingPreference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routes: (() {
        final guardedValue = map['routes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualHubRoute>(
            guardedValue,
            (value) =>
                VirtualHubRoute.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      virtualRouterAsn: (() {
        final guardedValue = map['virtualRouterAsn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      virtualRouterAutoScaleMinCapacity: (() {
        final guardedValue = map['virtualRouterAutoScaleMinCapacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      virtualRouterIps: (() {
        final guardedValue = map['virtualRouterIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      virtualWanId: (() {
        final guardedValue = map['virtualWanId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
