// ignore_for_file: unused_element, unnecessary_cast


class RouterRoutesV2Route {
  /// CIDR block to match on the packet’s
  /// destination IP.
  final String destinationCidr;
  /// IP address of the next hop gateway.
  final String nextHop;

  /// Creates a new [RouterRoutesV2Route].
  /// [destinationCidr] CIDR block to match on the packet’s
  /// [nextHop] IP address of the next hop gateway.
  RouterRoutesV2Route({
    required this.destinationCidr,
    required this.nextHop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidr': destinationCidr,
      'nextHop': nextHop,
    };
  }

  factory RouterRoutesV2Route.fromMap(Map<String, dynamic> map) {
    return RouterRoutesV2Route(
      destinationCidr: map['destinationCidr'] as String,
      nextHop: map['nextHop'] as String,
    );
  }
}

