// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_express_route_authorization_express_route_authorization_args_doc}
/// The set of arguments for ExpressRouteAuthorization.
/// {@endtemplate}
/// {@macro pulumi_avs_express_route_authorization_express_route_authorization_args_doc}
class ExpressRouteAuthorizationArgs {
  /// The name which should be used for this Azure VMware Solution ExpressRoute Circuit Authorization. Changing this forces a new Azure VMware Solution ExpressRoute Circuit Authorization to be created.
  final pulumi.Input<String>? name;

  /// The ID of the Azure VMware Solution Private Cloud in which to create this Azure VMware Solution ExpressRoute Circuit Authorization. Changing this forces a new Azure VMware Solution ExpressRoute Circuit Authorization to be created.
  final pulumi.Input<String> privateCloudId;

  /// Creates a new [ExpressRouteAuthorizationArgs].
  /// [name] The name which should be used for this Azure VMware Solution ExpressRoute Circuit Authorization. Changing this forces a new Azure VMware Solution ExpressRoute Circuit Authorization to be created.
  /// [privateCloudId] The ID of the Azure VMware Solution Private Cloud in which to create this Azure VMware Solution ExpressRoute Circuit Authorization. Changing this forces a new Azure VMware Solution ExpressRoute Circuit Authorization to be created.
  ExpressRouteAuthorizationArgs({this.name, required this.privateCloudId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'privateCloudId': privateCloudId};
  }

  factory ExpressRouteAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteAuthorizationArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateCloudId: pulumi.Input.fromValue(map['privateCloudId'] as String),
    );
  }
}
