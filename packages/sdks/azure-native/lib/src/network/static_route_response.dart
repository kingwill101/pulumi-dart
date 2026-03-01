// ignore_for_file: unused_element, unnecessary_cast


/// List of all Static Routes.
class StaticRouteResponse {
  /// List of all address prefixes.
  final List<String>? addressPrefixes;
  /// The name of the StaticRoute that is unique within a VnetRoute.
  final String? name;
  /// The ip address of the next hop.
  final String? nextHopIpAddress;

  /// Creates a new [StaticRouteResponse].
  /// [addressPrefixes] List of all address prefixes.
  /// [name] The name of the StaticRoute that is unique within a VnetRoute.
  /// [nextHopIpAddress] The ip address of the next hop.
  StaticRouteResponse({
    this.addressPrefixes,
    this.name,
    this.nextHopIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'name': ?name,
      'nextHopIpAddress': ?nextHopIpAddress,
    };
  }

  factory StaticRouteResponse.fromMap(Map<String, dynamic> map) {
    return StaticRouteResponse(
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      nextHopIpAddress: map['nextHopIpAddress'] == null ? null : map['nextHopIpAddress'] as String,
    );
  }
}

