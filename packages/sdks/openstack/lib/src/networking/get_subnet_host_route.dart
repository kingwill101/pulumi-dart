// ignore_for_file: unused_element, unnecessary_cast


class GetSubnetHostRoute {
  final String destinationCidr;
  final String nextHop;

  /// Creates a new [GetSubnetHostRoute].
  /// [destinationCidr] Required.
  /// [nextHop] Required.
  GetSubnetHostRoute({
    required this.destinationCidr,
    required this.nextHop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidr': destinationCidr,
      'nextHop': nextHop,
    };
  }

  factory GetSubnetHostRoute.fromMap(Map<String, dynamic> map) {
    return GetSubnetHostRoute(
      destinationCidr: map['destinationCidr'] as String,
      nextHop: map['nextHop'] as String,
    );
  }
}

