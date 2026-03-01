// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouterRoute resources.
class RouterRouteState {
  /// CIDR block to match on the packet’s destination IP. Changing
  /// this creates a new routing entry.
  final pulumi.Input<String>? destinationCidr;
  /// IP address of the next hop gateway.  Changing
  /// this creates a new routing entry.
  final pulumi.Input<String>? nextHop;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to configure a routing entry on a router. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// routing entry.
  final pulumi.Input<String>? region;
  /// ID of the router this routing entry belongs to. Changing
  /// this creates a new routing entry.
  final pulumi.Input<String>? routerId;

  /// Creates a new [RouterRouteState].
  /// [destinationCidr] CIDR block to match on the packet’s destination IP. Changing
  /// [nextHop] IP address of the next hop gateway.  Changing
  /// [region] The region in which to obtain the V2 networking client.
  /// [routerId] ID of the router this routing entry belongs to. Changing
  RouterRouteState({
    pulumi.Output<String>? destinationCidr,
    pulumi.Output<String>? nextHop,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routerId,
  }) :
      destinationCidr = pulumi.Input.asOptionalInput<String>(destinationCidr),
      nextHop = pulumi.Input.asOptionalInput<String>(nextHop),
      region = pulumi.Input.asOptionalInput<String>(region),
      routerId = pulumi.Input.asOptionalInput<String>(routerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidr': ?destinationCidr,
      'nextHop': ?nextHop,
      'region': ?region,
      'routerId': ?routerId,
    };
  }

  factory RouterRouteState.fromMap(Map<String, dynamic> map) {
    return RouterRouteState(
      destinationCidr: map['destinationCidr'] == null ? null : pulumi.Output.create<String>(map['destinationCidr'] as String),
      nextHop: map['nextHop'] == null ? null : pulumi.Output.create<String>(map['nextHop'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routerId: map['routerId'] == null ? null : pulumi.Output.create<String>(map['routerId'] as String),
    );
  }
}

