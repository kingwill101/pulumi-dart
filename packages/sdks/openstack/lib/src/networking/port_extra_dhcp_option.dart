// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PortExtraDhcpOption {
  /// IP protocol version. Defaults to 4.
  final pulumi.Input<int>? ipVersion;
  /// Name of the DHCP option.
  final pulumi.Input<String> name;
  /// Value of the DHCP option.
  final pulumi.Input<String> value;

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
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion']! as int).input(),
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

