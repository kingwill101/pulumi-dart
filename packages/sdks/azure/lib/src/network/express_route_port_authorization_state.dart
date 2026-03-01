// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExpressRoutePortAuthorization resources.
class ExpressRoutePortAuthorizationState {
  /// The Authorization Key.
  final pulumi.Input<String>? authorizationKey;
  /// The authorization use status.
  final pulumi.Input<String>? authorizationUseStatus;
  /// The name of the Express Route Port in which to create the Authorization. Changing this forces a new resource to be created.
  final pulumi.Input<String>? expressRoutePortName;
  /// The name of the ExpressRoute Port. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the ExpressRoute Port. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ExpressRoutePortAuthorizationState].
  /// [authorizationKey] The Authorization Key.
  /// [authorizationUseStatus] The authorization use status.
  /// [expressRoutePortName] The name of the Express Route Port in which to create the Authorization. Changing this forces a new resource to be created.
  /// [name] The name of the ExpressRoute Port. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the ExpressRoute Port. Changing this forces a new resource to be created.
  ExpressRoutePortAuthorizationState({
    pulumi.Output<String>? authorizationKey,
    pulumi.Output<String>? authorizationUseStatus,
    pulumi.Output<String>? expressRoutePortName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      authorizationKey = pulumi.Input.asOptionalInput<String>(authorizationKey),
      authorizationUseStatus = pulumi.Input.asOptionalInput<String>(authorizationUseStatus),
      expressRoutePortName = pulumi.Input.asOptionalInput<String>(expressRoutePortName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'authorizationUseStatus': ?authorizationUseStatus,
      'expressRoutePortName': ?expressRoutePortName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ExpressRoutePortAuthorizationState.fromMap(Map<String, dynamic> map) {
    return ExpressRoutePortAuthorizationState(
      authorizationKey: map['authorizationKey'] == null ? null : pulumi.Output.create<String>(map['authorizationKey'] as String),
      authorizationUseStatus: map['authorizationUseStatus'] == null ? null : pulumi.Output.create<String>(map['authorizationUseStatus'] as String),
      expressRoutePortName: map['expressRoutePortName'] == null ? null : pulumi.Output.create<String>(map['expressRoutePortName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

