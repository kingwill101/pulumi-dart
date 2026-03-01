// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Route resources.
class RouteState {
  /// Specifies a gateway address for the route.
  final pulumi.Input<String>? gw;
  /// Name of the route.Name of Route should be full path,full path is the combination of the `partition + route name`,For ex: `/Common/test-net-route`.
  final pulumi.Input<String>? name;
  /// The destination subnet and netmask for the route.
  final pulumi.Input<String>? network;
  /// reject route
  final pulumi.Input<bool>? reject;
  /// tunnel_ref to route traffic
  final pulumi.Input<String>? tunnelRef;

  /// Creates a new [RouteState].
  /// [gw] Specifies a gateway address for the route.
  /// [name] Name of the route.Name of Route should be full path,full path is the combination of the `partition + route name`,For ex: `/Common/test-net-route`.
  /// [network] The destination subnet and netmask for the route.
  /// [reject] reject route
  /// [tunnelRef] tunnel_ref to route traffic
  RouteState({
    pulumi.Output<String>? gw,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<bool>? reject,
    pulumi.Output<String>? tunnelRef,
  }) :
      gw = pulumi.Input.asOptionalInput<String>(gw),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      reject = pulumi.Input.asOptionalInput<bool>(reject),
      tunnelRef = pulumi.Input.asOptionalInput<String>(tunnelRef);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gw': ?gw,
      'name': ?name,
      'network': ?network,
      'reject': ?reject,
      'tunnelRef': ?tunnelRef,
    };
  }

  factory RouteState.fromMap(Map<String, dynamic> map) {
    return RouteState(
      gw: map['gw'] == null ? null : pulumi.Output.create<String>(map['gw'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      reject: map['reject'] == null ? null : pulumi.Output.create<bool>(map['reject'] as bool),
      tunnelRef: map['tunnelRef'] == null ? null : pulumi.Output.create<String>(map['tunnelRef'] as String),
    );
  }
}

