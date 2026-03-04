// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesChannelTargetGuestFwd {
  /// This field specifies the address to which the guest forwarding will connect.
  final pulumi.Input<String>? address;

  /// This field sets the port number for the guest forwarding connection.
  final pulumi.Input<String>? port;

  /// Creates a new [DomainDevicesChannelTargetGuestFwd].
  /// [address] This field specifies the address to which the guest forwarding will connect.
  /// [port] This field sets the port number for the guest forwarding connection.
  DomainDevicesChannelTargetGuestFwd({this.address, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': ?address, 'port': ?port};
  }

  factory DomainDevicesChannelTargetGuestFwd.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelTargetGuestFwd(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
