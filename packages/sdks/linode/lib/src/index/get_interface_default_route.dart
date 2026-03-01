// ignore_for_file: unused_element, unnecessary_cast


class GetInterfaceDefaultRoute {
  /// Whether this interface is used for the IPv4 default route.
  final bool ipv4;
  /// Whether this interface is used for the IPv6 default route.
  final bool ipv6;

  /// Creates a new [GetInterfaceDefaultRoute].
  /// [ipv4] Whether this interface is used for the IPv4 default route.
  /// [ipv6] Whether this interface is used for the IPv6 default route.
  GetInterfaceDefaultRoute({
    required this.ipv4,
    required this.ipv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ipv4,
      'ipv6': ipv6,
    };
  }

  factory GetInterfaceDefaultRoute.fromMap(Map<String, dynamic> map) {
    return GetInterfaceDefaultRoute(
      ipv4: map['ipv4'] as bool,
      ipv6: map['ipv6'] as bool,
    );
  }
}

