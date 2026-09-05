// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceMac {
  /// Specifies the specific MAC address assigned to the network interface.
  final pulumi.Input<String> address;
  /// Determines whether to validate the MAC address format.
  final pulumi.Input<String?>? check;
  /// Configures the type of MAC address assignment (static or dynamic).
  final pulumi.Input<String?>? type;

  /// Creates a new [DomainDevicesInterfaceMac].
  /// [address] Specifies the specific MAC address assigned to the network interface.
  /// [check] Determines whether to validate the MAC address format.
  /// [type] Configures the type of MAC address assignment (static or dynamic).
  const DomainDevicesInterfaceMac({
    required this.address,
    this.check,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'check': ?check,
      'type': ?type,
    };
  }

  factory DomainDevicesInterfaceMac.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceMac(
      address: pulumi.Input.fromValue(map['address'] as String),
      check: (() { final guardedValue = map['check']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
