// ignore_for_file: unused_element, unnecessary_cast


class PortExtraDhcpOption {
  /// IP protocol version. Defaults to 4.
  final int? ipVersion;
  /// Name of the DHCP option.
  final String name;
  /// Value of the DHCP option.
  final String value;

  /// Creates a new [PortExtraDhcpOption].
  /// [ipVersion] IP protocol version. Defaults to 4.
  /// [name] Name of the DHCP option.
  /// [value] Value of the DHCP option.
  PortExtraDhcpOption({
    this.ipVersion,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipVersion': ?ipVersion,
      'name': name,
      'value': value,
    };
  }

  factory PortExtraDhcpOption.fromMap(Map<String, dynamic> map) {
    return PortExtraDhcpOption(
      ipVersion: map['ipVersion'] == null ? null : map['ipVersion'] as int,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

