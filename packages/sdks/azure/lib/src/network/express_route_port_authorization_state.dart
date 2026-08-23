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
  const ExpressRoutePortAuthorizationState({
    this.authorizationKey,
    this.authorizationUseStatus,
    this.expressRoutePortName,
    this.name,
    this.resourceGroupName,
  });

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
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationUseStatus: (() { final guardedValue = map['authorizationUseStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressRoutePortName: (() { final guardedValue = map['expressRoutePortName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
