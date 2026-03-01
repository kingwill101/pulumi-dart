// ignore_for_file: unused_element, unnecessary_cast


/// VirtualHub route.
class VirtualHubRoute {
  /// List of all addressPrefixes.
  final List<String>? addressPrefixes;
  /// NextHop ip address.
  final String? nextHopIpAddress;

  /// Creates a new [VirtualHubRoute].
  /// [addressPrefixes] List of all addressPrefixes.
  /// [nextHopIpAddress] NextHop ip address.
  VirtualHubRoute({
    this.addressPrefixes,
    this.nextHopIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'nextHopIpAddress': ?nextHopIpAddress,
    };
  }

  factory VirtualHubRoute.fromMap(Map<String, dynamic> map) {
    return VirtualHubRoute(
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
      nextHopIpAddress: map['nextHopIpAddress'] == null ? null : map['nextHopIpAddress'] as String,
    );
  }
}

