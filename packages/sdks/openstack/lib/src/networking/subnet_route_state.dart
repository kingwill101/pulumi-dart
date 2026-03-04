// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SubnetRoute resources.
class SubnetRouteState {
  /// CIDR block to match on the packet’s destination IP. Changing
  /// this creates a new routing entry.
  final pulumi.Input<String>? destinationCidr;

  /// IP address of the next hop gateway.  Changing
  /// this creates a new routing entry.
  final pulumi.Input<String>? nextHop;

  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to configure a routing entry on a subnet. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// routing entry.
  final pulumi.Input<String>? region;

  /// ID of the subnet this routing entry belongs to. Changing
  /// this creates a new routing entry.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [SubnetRouteState].
  /// [destinationCidr] CIDR block to match on the packet’s destination IP. Changing
  /// [nextHop] IP address of the next hop gateway.  Changing
  /// [region] The region in which to obtain the V2 networking client.
  /// [subnetId] ID of the subnet this routing entry belongs to. Changing
  SubnetRouteState({
    this.destinationCidr,
    this.nextHop,
    this.region,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidr': ?destinationCidr,
      'nextHop': ?nextHop,
      'region': ?region,
      'subnetId': ?subnetId,
    };
  }

  factory SubnetRouteState.fromMap(Map<String, dynamic> map) {
    return SubnetRouteState(
      destinationCidr: (() {
        final guardedValue = map['destinationCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nextHop: (() {
        final guardedValue = map['nextHop'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
