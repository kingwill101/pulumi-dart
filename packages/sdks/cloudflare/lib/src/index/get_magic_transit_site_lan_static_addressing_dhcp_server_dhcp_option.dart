// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitSiteLanStaticAddressingDhcpServerDhcpOption {
  /// DHCP option number (1-254). Options 0 and 255 are reserved by RFC 2132. Options 3, 6, and 51 are not allowed because they conflict with connector-managed configuration.
  final pulumi.Input<int> code;
  /// The type of the option value. text: a string (max 255 bytes). hex: colon-separated hex bytes (e.g. "01:04:aa:bb:cc", max 255 bytes). ip: an IPv4 address (e.g. "10.20.30.40"). byte: an unsigned integer 0-255 (1 byte). short: an unsigned integer 0-65535 (2 bytes). integer: an unsigned integer 0-4294967295 (4 bytes).
  /// Available values: "text", "hex", "ip", "byte", "short", "integer".
  final pulumi.Input<String> type;
  /// The option value, interpreted according to the type field.
  final pulumi.Input<String> value;

  /// Creates a new [GetMagicTransitSiteLanStaticAddressingDhcpServerDhcpOption].
  /// [code] DHCP option number (1-254). Options 0 and 255 are reserved by RFC 2132. Options 3, 6, and 51 are not allowed because they conflict with connector-managed configuration.
  /// [type] The type of the option value. text: a string (max 255 bytes). hex: colon-separated hex bytes (e.g. "01:04:aa:bb:cc", max 255 bytes). ip: an IPv4 address (e.g. "10.20.30.40"). byte: an unsigned integer 0-255 (1 byte). short: an unsigned integer 0-65535 (2 bytes). integer: an unsigned integer 0-4294967295 (4 bytes).
  /// [value] The option value, interpreted according to the type field.
  const GetMagicTransitSiteLanStaticAddressingDhcpServerDhcpOption({
    required this.code,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'type': type,
      'value': value,
    };
  }

  factory GetMagicTransitSiteLanStaticAddressingDhcpServerDhcpOption.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLanStaticAddressingDhcpServerDhcpOption(
      code: pulumi.Input.fromValue((map['code'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
