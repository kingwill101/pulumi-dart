// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpv6RangesRange {
  /// The prefix length of the address, denoting how many addresses can be assigned from this range.
  final pulumi.Input<int> prefix;
  /// The IPv6 address of this range.
  final pulumi.Input<String> range;
  /// The region for this range of IPv6 addresses.
  final pulumi.Input<String> region;
  /// The IPv6 SLAAC address.
  final pulumi.Input<String> routeTarget;

  /// Creates a new [GetIpv6RangesRange].
  /// [prefix] The prefix length of the address, denoting how many addresses can be assigned from this range.
  /// [range] The IPv6 address of this range.
  /// [region] The region for this range of IPv6 addresses.
  /// [routeTarget] The IPv6 SLAAC address.
  GetIpv6RangesRange({
    required this.prefix,
    required this.range,
    required this.region,
    required this.routeTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
      'range': range,
      'region': region,
      'routeTarget': routeTarget,
    };
  }

  factory GetIpv6RangesRange.fromMap(Map<String, dynamic> map) {
    return GetIpv6RangesRange(
      prefix: (map['prefix'] as int).input(),
      range: (map['range'] as String).input(),
      region: (map['region'] as String).input(),
      routeTarget: (map['routeTarget'] as String).input(),
    );
  }
}

