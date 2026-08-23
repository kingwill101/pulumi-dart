// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_route_server_route_server_args_doc}
/// The set of arguments for RouteServer.
/// {@endtemplate}
/// {@macro pulumi_network_route_server_route_server_args_doc}
class RouteServerArgs {
  /// Whether to enable route exchange between Azure Route Server and the gateway(s).
  final pulumi.Input<bool>? branchToBranchTrafficEnabled;
  /// The hub routing preference. Valid values are `ASPath`, `ExpressRoute` or `VpnGateway`. Defaults to `ExpressRoute`.
  final pulumi.Input<String>? hubRoutingPreference;
  /// Specifies the supported Azure location where the Route Server should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Route Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created.
  final pulumi.Input<String> publicIpAddressId;
  /// Specifies the name of the Resource Group where the Route Server should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the Route Server. The only possible value is `Standard`. Changing this forces a new resource to be created.
  final pulumi.Input<String> sku;
  /// The ID of the Subnet that the Route Server will reside. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Azure Route Server requires a dedicated subnet named RouteServerSubnet. The subnet size has to be at least /27 or short prefix (such as /26 or /25) and cannot be attached to any security group, otherwise, you'll receive an error message when deploying the Route Server.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RouteServerArgs].
  /// [branchToBranchTrafficEnabled] Whether to enable route exchange between Azure Route Server and the gateway(s).
  /// [hubRoutingPreference] The hub routing preference. Valid values are `ASPath`, `ExpressRoute` or `VpnGateway`. Defaults to `ExpressRoute`.
  /// [location] Specifies the supported Azure location where the Route Server should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Route Server. Changing this forces a new resource to be created.
  /// [publicIpAddressId] The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Route Server should exist. Changing this forces a new resource to be created.
  /// [sku] The SKU of the Route Server. The only possible value is `Standard`. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet that the Route Server will reside. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const RouteServerArgs({
    this.branchToBranchTrafficEnabled,
    this.hubRoutingPreference,
    this.location,
    this.name,
    required this.publicIpAddressId,
    required this.resourceGroupName,
    required this.sku,
    required this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchToBranchTrafficEnabled': ?branchToBranchTrafficEnabled,
      'hubRoutingPreference': ?hubRoutingPreference,
      'location': ?location,
      'name': ?name,
      'publicIpAddressId': publicIpAddressId,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'subnetId': subnetId,
      'tags': ?tags,
    };
  }

  factory RouteServerArgs.fromMap(Map<String, dynamic> map) {
    return RouteServerArgs(
      branchToBranchTrafficEnabled: (() { final guardedValue = map['branchToBranchTrafficEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hubRoutingPreference: (() { final guardedValue = map['hubRoutingPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddressId: pulumi.Input.fromValue(map['publicIpAddressId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(map['sku'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
