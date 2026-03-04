// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesControllerVirtIoSerial {
  /// Specifies the number of ports available on the VirtIO serial controller device.
  final pulumi.Input<double>? ports;

  /// Sets the number of vectors allocated for the VirtIO serial controller device.
  final pulumi.Input<double>? vectors;

  /// Creates a new [DomainDevicesControllerVirtIoSerial].
  /// [ports] Specifies the number of ports available on the VirtIO serial controller device.
  /// [vectors] Sets the number of vectors allocated for the VirtIO serial controller device.
  DomainDevicesControllerVirtIoSerial({this.ports, this.vectors});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ports': ?ports, 'vectors': ?vectors};
  }

  factory DomainDevicesControllerVirtIoSerial.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesControllerVirtIoSerial(
      ports: (() {
        final guardedValue = map['ports'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      vectors: (() {
        final guardedValue = map['vectors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
