// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExpressRouteGateway resources.
class ExpressRouteGatewayState {
  /// Specified whether this gateway accept traffic from non-Virtual WAN networks. Defaults to `false`.
  final pulumi.Input<bool>? allowNonVirtualWanTraffic;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the ExpressRoute gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the ExpressRoute gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The number of scale units with which to provision the ExpressRoute gateway. Each scale unit is equal to 2Gbps, with support for up to 10 scale units (20Gbps).
  final pulumi.Input<int>? scaleUnits;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of a Virtual HUB within which the ExpressRoute gateway should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualHubId;

  /// Creates a new [ExpressRouteGatewayState].
  /// [allowNonVirtualWanTraffic] Specified whether this gateway accept traffic from non-Virtual WAN networks. Defaults to `false`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] The name of the ExpressRoute gateway. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the ExpressRoute gateway. Changing this forces a new resource to be created.
  /// [scaleUnits] The number of scale units with which to provision the ExpressRoute gateway. Each scale unit is equal to 2Gbps, with support for up to 10 scale units (20Gbps).
  /// [tags] A mapping of tags to assign to the resource.
  /// [virtualHubId] The ID of a Virtual HUB within which the ExpressRoute gateway should be created. Changing this forces a new resource to be created.
  ExpressRouteGatewayState({
    pulumi.Output<bool>? allowNonVirtualWanTraffic,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? scaleUnits,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualHubId,
  }) :
      allowNonVirtualWanTraffic = pulumi.Input.asOptionalInput<bool>(allowNonVirtualWanTraffic),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      scaleUnits = pulumi.Input.asOptionalInput<int>(scaleUnits),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualHubId = pulumi.Input.asOptionalInput<String>(virtualHubId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNonVirtualWanTraffic': ?allowNonVirtualWanTraffic,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'scaleUnits': ?scaleUnits,
      'tags': ?tags,
      'virtualHubId': ?virtualHubId,
    };
  }

  factory ExpressRouteGatewayState.fromMap(Map<String, dynamic> map) {
    return ExpressRouteGatewayState(
      allowNonVirtualWanTraffic: map['allowNonVirtualWanTraffic'] == null ? null : pulumi.Output.create<bool>(map['allowNonVirtualWanTraffic'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scaleUnits: map['scaleUnits'] == null ? null : pulumi.Output.create<int>(map['scaleUnits'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualHubId: map['virtualHubId'] == null ? null : pulumi.Output.create<String>(map['virtualHubId'] as String),
    );
  }
}

