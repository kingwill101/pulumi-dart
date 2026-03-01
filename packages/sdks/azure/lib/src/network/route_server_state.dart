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
  /// > **Note:** Azure Route Server requires a dedicated subnet named RouteServerSubnet. The subnet size has to be at least /27 or short prefix (such as /26 or /25) and cannot be attached to any security group, otherwise, you'll receive an error message when deploying the Route Server.
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
  RouteServerState({
    pulumi.Output<bool>? branchToBranchTrafficEnabled,
    pulumi.Output<String>? hubRoutingPreference,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? publicIpAddressId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? routingState,
    pulumi.Output<String>? sku,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? virtualRouterAsn,
    pulumi.Output<List<String>>? virtualRouterIps,
  }) :
      branchToBranchTrafficEnabled = pulumi.Input.asOptionalInput<bool>(branchToBranchTrafficEnabled),
      hubRoutingPreference = pulumi.Input.asOptionalInput<String>(hubRoutingPreference),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicIpAddressId = pulumi.Input.asOptionalInput<String>(publicIpAddressId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      routingState = pulumi.Input.asOptionalInput<String>(routingState),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualRouterAsn = pulumi.Input.asOptionalInput<int>(virtualRouterAsn),
      virtualRouterIps = pulumi.Input.asOptionalInput<List<String>>(virtualRouterIps);

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
      branchToBranchTrafficEnabled: map['branchToBranchTrafficEnabled'] == null ? null : pulumi.Output.create<bool>(map['branchToBranchTrafficEnabled'] as bool),
      hubRoutingPreference: map['hubRoutingPreference'] == null ? null : pulumi.Output.create<String>(map['hubRoutingPreference'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicIpAddressId: map['publicIpAddressId'] == null ? null : pulumi.Output.create<String>(map['publicIpAddressId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routingState: map['routingState'] == null ? null : pulumi.Output.create<String>(map['routingState'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualRouterAsn: map['virtualRouterAsn'] == null ? null : pulumi.Output.create<int>(map['virtualRouterAsn'] as int),
      virtualRouterIps: map['virtualRouterIps'] == null ? null : pulumi.Output.create<List<String>>((map['virtualRouterIps'] as List).cast<String>()),
    );
  }
}

