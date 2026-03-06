// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteServer resources.
class RouteServerState {
  /// Whether to enable route exchange between Azure Route Server and the gateway(s).
  final pulumi.Input<bool>? branchToBranchTrafficEnabled;
  /// The hub routing preference. Valid values are `ASPath`, `ExpressRoute` or `VpnGateway`. Defaults to `ExpressRoute`.
  final pulumi.Input<String>? hubRoutingPreference;
  /// Specifies the supported Azure location where the Route Server should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Route Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publicIpAddressId;
  /// Specifies the name of the Resource Group where the Route Server should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  final pulumi.Input<String>? routingState;
  /// The SKU of the Route Server. The only possible value is `Standard`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sku;
  /// The ID of the Subnet that the Route Server will reside. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Azure Route Server requires a dedicated subnet named RouteServerSubnet. The subnet size has to be at least /27 or short prefix (such as /26 or /25) and cannot be attached to any security group, otherwise, you'll receive an error message when deploying the Route Server.
  final pulumi.Input<String>? subnetId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<int>? virtualRouterAsn;
  final pulumi.Input<List<String>>? virtualRouterIps;

  /// Creates a new [RouteServerState].
  /// [branchToBranchTrafficEnabled] Whether to enable route exchange between Azure Route Server and the gateway(s).
  /// [hubRoutingPreference] The hub routing preference. Valid values are `ASPath`, `ExpressRoute` or `VpnGateway`. Defaults to `ExpressRoute`.
  /// [location] Specifies the supported Azure location where the Route Server should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Route Server. Changing this forces a new resource to be created.
  /// [publicIpAddressId] The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Route Server should exist. Changing this forces a new resource to be created.
  /// [routingState] Optional.
  /// [sku] The SKU of the Route Server. The only possible value is `Standard`. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet that the Route Server will reside. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [virtualRouterAsn] Optional.
  /// [virtualRouterIps] Optional.
  const RouteServerState({
    this.branchToBranchTrafficEnabled,
    this.hubRoutingPreference,
    this.location,
    this.name,
    this.publicIpAddressId,
    this.resourceGroupName,
    this.routingState,
    this.sku,
    this.subnetId,
    this.tags,
    this.virtualRouterAsn,
    this.virtualRouterIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchToBranchTrafficEnabled': ?branchToBranchTrafficEnabled,
      'hubRoutingPreference': ?hubRoutingPreference,
      'location': ?location,
      'name': ?name,
      'publicIpAddressId': ?publicIpAddressId,
      'resourceGroupName': ?resourceGroupName,
      'routingState': ?routingState,
      'sku': ?sku,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'virtualRouterAsn': ?virtualRouterAsn,
      'virtualRouterIps': ?virtualRouterIps,
    };
  }

  factory RouteServerState.fromMap(Map<String, dynamic> map) {
    return RouteServerState(
      branchToBranchTrafficEnabled: (() { final guardedValue = map['branchToBranchTrafficEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hubRoutingPreference: (() { final guardedValue = map['hubRoutingPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddressId: (() { final guardedValue = map['publicIpAddressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingState: (() { final guardedValue = map['routingState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualRouterAsn: (() { final guardedValue = map['virtualRouterAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      virtualRouterIps: (() { final guardedValue = map['virtualRouterIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

