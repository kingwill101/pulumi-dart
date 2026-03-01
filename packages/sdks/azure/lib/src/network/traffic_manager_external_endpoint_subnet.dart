// ignore_for_file: unused_element, unnecessary_cast


class TrafficManagerExternalEndpointSubnet {
  /// The first IP Address in this subnet.
  final String first;
  /// The last IP Address in this subnet.
  final String? last;
  /// The block size (number of leading bits in the subnet mask).
  final int? scope;

  /// Creates a new [TrafficManagerExternalEndpointSubnet].
  /// [first] The first IP Address in this subnet.
  /// [last] The last IP Address in this subnet.
  /// [scope] The block size (number of leading bits in the subnet mask).
  TrafficManagerExternalEndpointSubnet({
    required this.first,
    this.last,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first': first,
      'last': ?last,
      'scope': ?scope,
    };
  }

  factory TrafficManagerExternalEndpointSubnet.fromMap(Map<String, dynamic> map) {
    return TrafficManagerExternalEndpointSubnet(
      first: map['first'] as String,
      last: map['last'] == null ? null : map['last'] as String,
      scope: map['scope'] == null ? null : map['scope'] as int,
    );
  }
}

