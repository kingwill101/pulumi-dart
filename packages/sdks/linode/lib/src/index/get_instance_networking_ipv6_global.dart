// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceNetworkingIpv6Global {
  /// The network prefix.
  final int prefix;
  /// The IPv6 range of addresses in this pool.
  final String range;
  /// (Filterable) The Region this address resides in.
  final String region;
  /// (Nullable) The last address in this block of IPv6 addresses.
  final String routeTarget;

  /// Creates a new [GetInstanceNetworkingIpv6Global].
  /// [prefix] The network prefix.
  /// [range] The IPv6 range of addresses in this pool.
  /// [region] (Filterable) The Region this address resides in.
  /// [routeTarget] (Nullable) The last address in this block of IPv6 addresses.
  GetInstanceNetworkingIpv6Global({
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

  factory GetInstanceNetworkingIpv6Global.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkingIpv6Global(
      prefix: map['prefix'] as int,
      range: map['range'] as String,
      region: map['region'] as String,
      routeTarget: map['routeTarget'] as String,
    );
  }
}

