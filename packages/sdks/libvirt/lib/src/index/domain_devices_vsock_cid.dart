// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesVsockCid {
  /// Defines the address attribute for the CID of the vsock device.
  final pulumi.Input<String>? address;

  /// Indicates whether the CID is automatically assigned for the vsock device.
  final pulumi.Input<String>? auto;

  /// Creates a new [DomainDevicesVsockCid].
  /// [address] Defines the address attribute for the CID of the vsock device.
  /// [auto] Indicates whether the CID is automatically assigned for the vsock device.
  DomainDevicesVsockCid({this.address, this.auto});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': ?address, 'auto': ?auto};
  }

  factory DomainDevicesVsockCid.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVsockCid(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      auto: (() {
        final guardedValue = map['auto'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
