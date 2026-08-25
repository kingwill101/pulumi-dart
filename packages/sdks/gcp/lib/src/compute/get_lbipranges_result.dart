// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLBIPRanges.
class GetLBIPRangesResult {
  /// The IP ranges used for health checks when **HTTP(S), SSL proxy, TCP proxy, and Internal load balancing** is used
  final List<String>? httpSslTcpInternals;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The IP ranges used for health checks when **Network load balancing** is used
  final List<String>? networks;

  /// Creates a new [GetLBIPRangesResult].
  /// [httpSslTcpInternals] The IP ranges used for health checks when **HTTP(S), SSL proxy, TCP proxy, and Internal load balancing** is used
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [networks] The IP ranges used for health checks when **Network load balancing** is used
  const GetLBIPRangesResult({
    this.httpSslTcpInternals,
    this.id,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpSslTcpInternals': ?httpSslTcpInternals,
      'id': ?id,
      'networks': ?networks,
    };
  }

  factory GetLBIPRangesResult.fromMap(Map<String, dynamic> map) {
    return GetLBIPRangesResult(
      httpSslTcpInternals: (() { final guardedValue = map['httpSslTcpInternals']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
