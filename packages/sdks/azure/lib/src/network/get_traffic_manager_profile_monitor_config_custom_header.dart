// ignore_for_file: unused_element, unnecessary_cast


class GetTrafficManagerProfileMonitorConfigCustomHeader {
  /// Specifies the name of the Traffic Manager Profile.
  final String name;
  /// The value of custom header. Applicable for HTTP and HTTPS protocol.
  final String value;

  /// Creates a new [GetTrafficManagerProfileMonitorConfigCustomHeader].
  /// [name] Specifies the name of the Traffic Manager Profile.
  /// [value] The value of custom header. Applicable for HTTP and HTTPS protocol.
  GetTrafficManagerProfileMonitorConfigCustomHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetTrafficManagerProfileMonitorConfigCustomHeader.fromMap(Map<String, dynamic> map) {
    return GetTrafficManagerProfileMonitorConfigCustomHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

