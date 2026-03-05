// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPortExtraDhcpOption {
  /// IP protocol version
  final pulumi.Input<int> ipVersion;
  /// The name of the port.
  final pulumi.Input<String> name;
  /// Value of the DHCP option.
  final pulumi.Input<String> value;

  /// Creates a new [GetPortExtraDhcpOption].
  /// [ipVersion] IP protocol version
  /// [name] The name of the port.
  /// [value] Value of the DHCP option.
  GetPortExtraDhcpOption({
    required this.ipVersion,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipVersion': ipVersion,
      'name': name,
      'value': value,
    };
  }

  factory GetPortExtraDhcpOption.fromMap(Map<String, dynamic> map) {
    return GetPortExtraDhcpOption(
      ipVersion: pulumi.Input.fromValue(map['ipVersion'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

