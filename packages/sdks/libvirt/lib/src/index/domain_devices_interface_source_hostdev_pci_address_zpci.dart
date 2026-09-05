// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceHostdevPciAddressZpci {
  /// Sets the function identifier for the zPCI device's address.
  final pulumi.Input<double?>? fid;
  /// Defines the unique identifier for the zPCI address of the device.
  final pulumi.Input<double?>? uid;

  /// Creates a new [DomainDevicesInterfaceSourceHostdevPciAddressZpci].
  /// [fid] Sets the function identifier for the zPCI device's address.
  /// [uid] Defines the unique identifier for the zPCI address of the device.
  const DomainDevicesInterfaceSourceHostdevPciAddressZpci({
    this.fid,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fid': ?fid,
      'uid': ?uid,
    };
  }

  factory DomainDevicesInterfaceSourceHostdevPciAddressZpci.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceHostdevPciAddressZpci(
      fid: (() { final guardedValue = map['fid']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
