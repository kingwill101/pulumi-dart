// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicTransitConnectorDevice {
  final pulumi.Input<String?>? id;
  /// Set to true to provision a license key for this connector. Only used during resource creation. This is a write-only field that will not be stored in state.
  final pulumi.Input<bool?>? provisionLicense;
  final pulumi.Input<String?>? serialNumber;

  /// Creates a new [MagicTransitConnectorDevice].
  /// [id] Optional.
  /// [provisionLicense] Set to true to provision a license key for this connector. Only used during resource creation. This is a write-only field that will not be stored in state.
  /// [serialNumber] Optional.
  const MagicTransitConnectorDevice({
    this.id,
    this.provisionLicense,
    this.serialNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'provisionLicense': ?provisionLicense,
      'serialNumber': ?serialNumber,
    };
  }

  factory MagicTransitConnectorDevice.fromMap(Map<String, dynamic> map) {
    return MagicTransitConnectorDevice(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionLicense: (() { final guardedValue = map['provisionLicense']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
