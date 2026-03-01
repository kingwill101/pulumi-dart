// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_net_route_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_net_route_route_args_doc}
class RouteArgs {
  /// Specifies a gateway address for the route.
  final pulumi.Input<String>? gw;
  /// Name of the route.Name of Route should be full path,full path is the combination of the `partition + route name`,For ex: `/Common/test-net-route`.
  final pulumi.Input<String> name;
  /// The destination subnet and netmask for the route.
  final pulumi.Input<String> network;
  /// reject route
  final pulumi.Input<bool>? reject;
  /// tunnel_ref to route traffic
  final pulumi.Input<String>? tunnelRef;

  /// Creates a new [RouteArgs].
  /// [gw] Specifies a gateway address for the route.
  /// [name] Name of the route.Name of Route should be full path,full path is the combination of the `partition + route name`,For ex: `/Common/test-net-route`.
  /// [network] The destination subnet and netmask for the route.
  /// [reject] reject route
  /// [tunnelRef] tunnel_ref to route traffic
  RouteArgs({
    pulumi.Output<String>? gw,
    required pulumi.Output<String> name,
    required pulumi.Output<String> network,
    pulumi.Output<bool>? reject,
    pulumi.Output<String>? tunnelRef,
  }) :
      gw = pulumi.Input.asOptionalInput<String>(gw),
      name = pulumi.Input.asInput<String>(name),
      network = pulumi.Input.asInput<String>(network),
      reject = pulumi.Input.asOptionalInput<bool>(reject),
      tunnelRef = pulumi.Input.asOptionalInput<String>(tunnelRef);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gw': ?gw,
      'name': name,
      'network': network,
      'reject': ?reject,
      'tunnelRef': ?tunnelRef,
    };
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      gw: map['gw'] == null ? null : pulumi.Output.create<String>(map['gw'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      network: pulumi.Output.create<String>(map['network'] as String),
      reject: map['reject'] == null ? null : pulumi.Output.create<bool>(map['reject'] as bool),
      tunnelRef: map['tunnelRef'] == null ? null : pulumi.Output.create<String>(map['tunnelRef'] as String),
    );
  }
}

