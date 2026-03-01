// ignore_for_file: unused_element, unnecessary_cast


/// Information involved in sending ICMP pings alongside public HTTP/TCP checks. For HTTP, the pings are performed for each part of the redirect chain.
class PingConfigResponse {
  /// Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
  final int pingsCount;

  /// Creates a new [PingConfigResponse].
  /// [pingsCount] Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
  PingConfigResponse({
    required this.pingsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pingsCount': pingsCount,
    };
  }

  factory PingConfigResponse.fromMap(Map<String, dynamic> map) {
    return PingConfigResponse(
      pingsCount: map['pingsCount'] as int,
    );
  }
}

