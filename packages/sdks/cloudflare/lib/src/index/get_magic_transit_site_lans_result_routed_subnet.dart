// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_site_lans_result_routed_subnet_nat.dart';

class GetMagicTransitSiteLansResultRoutedSubnet {
  final pulumi.Input<GetMagicTransitSiteLansResultRoutedSubnetNat> nat;
  /// A valid IPv4 address.
  final pulumi.Input<String> nextHop;
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> prefix;

  /// Creates a new [GetMagicTransitSiteLansResultRoutedSubnet].
  /// [nat] Required.
  /// [nextHop] A valid IPv4 address.
  /// [prefix] A valid CIDR notation representing an IP range.
  const GetMagicTransitSiteLansResultRoutedSubnet({
    required this.nat,
    required this.nextHop,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nat': pulumi.Input.mapInputValue<GetMagicTransitSiteLansResultRoutedSubnetNat, Map<String, dynamic>>(nat, (value) => value.toMap()),
      'nextHop': nextHop,
      'prefix': prefix,
    };
  }

  factory GetMagicTransitSiteLansResultRoutedSubnet.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLansResultRoutedSubnet(
      nat: pulumi.Input.fromValue(GetMagicTransitSiteLansResultRoutedSubnetNat.fromMap((map['nat']! as Map).cast<String, dynamic>())),
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}
