// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceServerLocal {
  /// Specifies the local address for UDP communications on the network interface.
  final pulumi.Input<String>? address;

  /// Sets the local port number for UDP traffic on the network interface.
  final pulumi.Input<double>? port;

  /// Creates a new [DomainDevicesInterfaceSourceServerLocal].
  /// [address] Specifies the local address for UDP communications on the network interface.
  /// [port] Sets the local port number for UDP traffic on the network interface.
  DomainDevicesInterfaceSourceServerLocal({this.address, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': ?address, 'port': ?port};
  }

  factory DomainDevicesInterfaceSourceServerLocal.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesInterfaceSourceServerLocal(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
