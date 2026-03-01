// ignore_for_file: unused_element, unnecessary_cast


class InterfaceVpcIpv4Range {
  /// The IPv4 range.
  final String range;

  /// Creates a new [InterfaceVpcIpv4Range].
  /// [range] The IPv4 range.
  InterfaceVpcIpv4Range({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
    };
  }

  factory InterfaceVpcIpv4Range.fromMap(Map<String, dynamic> map) {
    return InterfaceVpcIpv4Range(
      range: map['range'] as String,
    );
  }
}

