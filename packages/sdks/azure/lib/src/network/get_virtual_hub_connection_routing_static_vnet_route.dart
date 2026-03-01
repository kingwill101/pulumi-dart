// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualHubConnectionRoutingStaticVnetRoute {
  /// A list of CIDR Ranges which is used as Address Prefixes.
  final List<String> addressPrefixes;
  /// The name of the Connection which should be retrieved.
  final String name;
  /// The IP Address which is used for the Next Hop.
  final String nextHopIpAddress;

  /// Creates a new [GetVirtualHubConnectionRoutingStaticVnetRoute].
  /// [addressPrefixes] A list of CIDR Ranges which is used as Address Prefixes.
  /// [name] The name of the Connection which should be retrieved.
  /// [nextHopIpAddress] The IP Address which is used for the Next Hop.
  GetVirtualHubConnectionRoutingStaticVnetRoute({
    required this.addressPrefixes,
    required this.name,
    required this.nextHopIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
      'name': name,
      'nextHopIpAddress': nextHopIpAddress,
    };
  }

  factory GetVirtualHubConnectionRoutingStaticVnetRoute.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubConnectionRoutingStaticVnetRoute(
      addressPrefixes: (map['addressPrefixes'] as List).cast<String>(),
      name: map['name'] as String,
      nextHopIpAddress: map['nextHopIpAddress'] as String,
    );
  }
}

