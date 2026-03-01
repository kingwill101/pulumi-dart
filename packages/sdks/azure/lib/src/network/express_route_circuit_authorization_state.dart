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
    pulumi.Output<String>? authorizationKey,
    pulumi.Output<String>? authorizationUseStatus,
    pulumi.Output<String>? expressRouteCircuitName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      authorizationKey = pulumi.Input.asOptionalInput<String>(authorizationKey),
      authorizationUseStatus = pulumi.Input.asOptionalInput<String>(authorizationUseStatus),
      expressRouteCircuitName = pulumi.Input.asOptionalInput<String>(expressRouteCircuitName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      authorizationKey: map['authorizationKey'] == null ? null : pulumi.Output.create<String>(map['authorizationKey'] as String),
      authorizationUseStatus: map['authorizationUseStatus'] == null ? null : pulumi.Output.create<String>(map['authorizationUseStatus'] as String),
      expressRouteCircuitName: map['expressRouteCircuitName'] == null ? null : pulumi.Output.create<String>(map['expressRouteCircuitName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

