// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_site_lan_routed_subnet_nat.dart';

class MagicTransitSiteLanRoutedSubnet {
  final pulumi.Input<MagicTransitSiteLanRoutedSubnetNat?>? nat;
  /// A valid IPv4 address.
  final pulumi.Input<String> nextHop;
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> prefix;

  /// Creates a new [MagicTransitSiteLanRoutedSubnet].
  /// [nat] Optional.
  /// [nextHop] A valid IPv4 address.
  /// [prefix] A valid CIDR notation representing an IP range.
  const MagicTransitSiteLanRoutedSubnet({
    this.nat,
    required this.nextHop,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nat': ?pulumi.Input.mapOptionalInputValue<MagicTransitSiteLanRoutedSubnetNat, Map<String, dynamic>>(nat, (value) => value.toMap()),
      'nextHop': nextHop,
      'prefix': prefix,
    };
  }

  factory MagicTransitSiteLanRoutedSubnet.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteLanRoutedSubnet(
      nat: (() { final guardedValue = map['nat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicTransitSiteLanRoutedSubnetNat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}
