// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExpressRouteAuthorization resources.
class ExpressRouteAuthorizationState {
  /// The ID of the Azure VMware Solution ExpressRoute Circuit Authorization.
  final pulumi.Input<String>? expressRouteAuthorizationId;
  /// The key of the Azure VMware Solution ExpressRoute Circuit Authorization.
  final pulumi.Input<String>? expressRouteAuthorizationKey;
  /// The name which should be used for this Azure VMware Solution ExpressRoute Circuit Authorization. Changing this forces a new Azure VMware Solution ExpressRoute Circuit Authorization to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Azure VMware Solution Private Cloud in which to create this Azure VMware Solution ExpressRoute Circuit Authorization. Changing this forces a new Azure VMware Solution ExpressRoute Circuit Authorization to be created.
  final pulumi.Input<String>? privateCloudId;

  /// Creates a new [ExpressRouteAuthorizationState].
  /// [expressRouteAuthorizationId] The ID of the Azure VMware Solution ExpressRoute Circuit Authorization.
  /// [expressRouteAuthorizationKey] The key of the Azure VMware Solution ExpressRoute Circuit Authorization.
  /// [name] The name which should be used for this Azure VMware Solution ExpressRoute Circuit Authorization. Changing this forces a new Azure VMware Solution ExpressRoute Circuit Authorization to be created.
  /// [privateCloudId] The ID of the Azure VMware Solution Private Cloud in which to create this Azure VMware Solution ExpressRoute Circuit Authorization. Changing this forces a new Azure VMware Solution ExpressRoute Circuit Authorization to be created.
  const ExpressRouteAuthorizationState({
    this.expressRouteAuthorizationId,
    this.expressRouteAuthorizationKey,
    this.name,
    this.privateCloudId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressRouteAuthorizationId': ?expressRouteAuthorizationId,
      'expressRouteAuthorizationKey': ?expressRouteAuthorizationKey,
      'name': ?name,
      'privateCloudId': ?privateCloudId,
    };
  }

  factory ExpressRouteAuthorizationState.fromMap(Map<String, dynamic> map) {
    return ExpressRouteAuthorizationState(
      expressRouteAuthorizationId: (() { final guardedValue = map['expressRouteAuthorizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressRouteAuthorizationKey: (() { final guardedValue = map['expressRouteAuthorizationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateCloudId: (() { final guardedValue = map['privateCloudId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

