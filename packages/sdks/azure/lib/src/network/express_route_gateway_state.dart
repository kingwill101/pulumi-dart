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
  const ExpressRouteGatewayState({
    this.allowNonVirtualWanTraffic,
    this.location,
    this.name,
    this.resourceGroupName,
    this.scaleUnits,
    this.tags,
    this.virtualHubId,
  });

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
      allowNonVirtualWanTraffic: (() { final guardedValue = map['allowNonVirtualWanTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleUnits: (() { final guardedValue = map['scaleUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualHubId: (() { final guardedValue = map['virtualHubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

