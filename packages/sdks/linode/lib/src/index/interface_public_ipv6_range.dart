// ignore_for_file: unused_element, unnecessary_cast


class InterfacePublicIpv6Range {
  /// The IPv6 range.
  final String range;

  /// Creates a new [InterfacePublicIpv6Range].
  /// [range] The IPv6 range.
  InterfacePublicIpv6Range({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
    };
  }

  factory InterfacePublicIpv6Range.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv6Range(
      range: map['range'] as String,
    );
  }
}

