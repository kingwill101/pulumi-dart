// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_site_lan_routed_subnet_nat.dart';

class GetMagicTransitSiteLanRoutedSubnet {
  final pulumi.Input<GetMagicTransitSiteLanRoutedSubnetNat> nat;
  /// A valid IPv4 address.
  final pulumi.Input<String> nextHop;
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> prefix;

  /// Creates a new [GetMagicTransitSiteLanRoutedSubnet].
  /// [nat] Required.
  /// [nextHop] A valid IPv4 address.
  /// [prefix] A valid CIDR notation representing an IP range.
  const GetMagicTransitSiteLanRoutedSubnet({
    required this.nat,
    required this.nextHop,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nat': pulumi.Input.mapInputValue<GetMagicTransitSiteLanRoutedSubnetNat, Map<String, dynamic>>(nat, (value) => value.toMap()),
      'nextHop': nextHop,
      'prefix': prefix,
    };
  }

  factory GetMagicTransitSiteLanRoutedSubnet.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLanRoutedSubnet(
      nat: pulumi.Input.fromValue(GetMagicTransitSiteLanRoutedSubnetNat.fromMap((map['nat']! as Map).cast<String, dynamic>())),
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}
