// ignore_for_file: unused_element, unnecessary_cast


class RouteSourceDetailsResponse {
  /// Express Route Circuit identifier
  final String? circuit;
  /// Flag to indicate if the route learned from the primary device is active or passive
  final String? pri;
  /// Flag to indicate if the route learned from the secondary device is active or passive
  final String? sec;

  /// Creates a new [RouteSourceDetailsResponse].
  /// [circuit] Express Route Circuit identifier
  /// [pri] Flag to indicate if the route learned from the primary device is active or passive
  /// [sec] Flag to indicate if the route learned from the secondary device is active or passive
  RouteSourceDetailsResponse({
    this.circuit,
    this.pri,
    this.sec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuit': ?circuit,
      'pri': ?pri,
      'sec': ?sec,
    };
  }

  factory RouteSourceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RouteSourceDetailsResponse(
      circuit: map['circuit'] == null ? null : map['circuit'] as String,
      pri: map['pri'] == null ? null : map['pri'] as String,
      sec: map['sec'] == null ? null : map['sec'] as String,
    );
  }
}

