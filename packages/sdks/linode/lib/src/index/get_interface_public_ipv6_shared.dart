// ignore_for_file: unused_element, unnecessary_cast


class GetInterfacePublicIpv6Shared {
  /// The IPv6 range.
  final String range;
  /// The route target for this IPv6 range.
  final String routeTarget;

  /// Creates a new [GetInterfacePublicIpv6Shared].
  /// [range] The IPv6 range.
  /// [routeTarget] The route target for this IPv6 range.
  GetInterfacePublicIpv6Shared({
    required this.range,
    required this.routeTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
      'routeTarget': routeTarget,
    };
  }

  factory GetInterfacePublicIpv6Shared.fromMap(Map<String, dynamic> map) {
    return GetInterfacePublicIpv6Shared(
      range: map['range'] as String,
      routeTarget: map['routeTarget'] as String,
    );
  }
}

