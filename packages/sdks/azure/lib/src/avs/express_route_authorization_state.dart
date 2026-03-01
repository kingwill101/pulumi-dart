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
  ExpressRouteAuthorizationState({
    pulumi.Output<String>? expressRouteAuthorizationId,
    pulumi.Output<String>? expressRouteAuthorizationKey,
    pulumi.Output<String>? name,
    pulumi.Output<String>? privateCloudId,
  }) :
      expressRouteAuthorizationId = pulumi.Input.asOptionalInput<String>(expressRouteAuthorizationId),
      expressRouteAuthorizationKey = pulumi.Input.asOptionalInput<String>(expressRouteAuthorizationKey),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateCloudId = pulumi.Input.asOptionalInput<String>(privateCloudId);

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
      expressRouteAuthorizationId: map['expressRouteAuthorizationId'] == null ? null : pulumi.Output.create<String>(map['expressRouteAuthorizationId'] as String),
      expressRouteAuthorizationKey: map['expressRouteAuthorizationKey'] == null ? null : pulumi.Output.create<String>(map['expressRouteAuthorizationKey'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateCloudId: map['privateCloudId'] == null ? null : pulumi.Output.create<String>(map['privateCloudId'] as String),
    );
  }
}

