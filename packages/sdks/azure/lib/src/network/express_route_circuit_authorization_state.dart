// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExpressRouteCircuitAuthorization resources.
class ExpressRouteCircuitAuthorizationState {
  /// The Authorization Key.
  final pulumi.Input<String>? authorizationKey;
  /// The authorization use status.
  final pulumi.Input<String>? authorizationUseStatus;
  /// The name of the Express Route Circuit in which to create the Authorization. Changing this forces a new resource to be created.
  final pulumi.Input<String>? expressRouteCircuitName;
  /// The name of the ExpressRoute circuit. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ExpressRouteCircuitAuthorizationState].
  /// [authorizationKey] The Authorization Key.
  /// [authorizationUseStatus] The authorization use status.
  /// [expressRouteCircuitName] The name of the Express Route Circuit in which to create the Authorization. Changing this forces a new resource to be created.
  /// [name] The name of the ExpressRoute circuit. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created.
  ExpressRouteCircuitAuthorizationState({
    this.authorizationKey,
    this.authorizationUseStatus,
    this.expressRouteCircuitName,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'authorizationUseStatus': ?authorizationUseStatus,
      'expressRouteCircuitName': ?expressRouteCircuitName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ExpressRouteCircuitAuthorizationState.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitAuthorizationState(
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey'] as String).input(),
      authorizationUseStatus: map['authorizationUseStatus'] == null ? null : (map['authorizationUseStatus'] as String).input(),
      expressRouteCircuitName: map['expressRouteCircuitName'] == null ? null : (map['expressRouteCircuitName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
    );
  }
}

