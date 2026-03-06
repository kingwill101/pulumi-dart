// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainBlockIoTuneDevice {
  /// Specifies the path of the block device to which the tuning parameters apply.
  final pulumi.Input<String> path;
  /// Sets the maximum number of bytes per second that can be read from the device.
  final pulumi.Input<double>? readBytesSec;
  /// Sets the maximum number of read I/O operations per second that can be performed on the device.
  final pulumi.Input<double>? readIopsSec;
  /// Configures the relative weight of the device, influencing scheduling priority during I/O operations.
  final pulumi.Input<double>? weight;
  /// Sets the maximum number of bytes per second that can be written to the device.
  final pulumi.Input<double>? writeBytesSec;
  /// Sets the maximum number of write I/O operations per second that can be performed on the device.
  final pulumi.Input<double>? writeIopsSec;

  /// Creates a new [DomainBlockIoTuneDevice].
  /// [path] Specifies the path of the block device to which the tuning parameters apply.
  /// [readBytesSec] Sets the maximum number of bytes per second that can be read from the device.
  /// [readIopsSec] Sets the maximum number of read I/O operations per second that can be performed on the device.
  /// [weight] Configures the relative weight of the device, influencing scheduling priority during I/O operations.
  /// [writeBytesSec] Sets the maximum number of bytes per second that can be written to the device.
  /// [writeIopsSec] Sets the maximum number of write I/O operations per second that can be performed on the device.
  const DomainBlockIoTuneDevice({
    required this.path,
    this.readBytesSec,
    this.readIopsSec,
    this.weight,
    this.writeBytesSec,
    this.writeIopsSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'readBytesSec': ?readBytesSec,
      'readIopsSec': ?readIopsSec,
      'weight': ?weight,
      'writeBytesSec': ?writeBytesSec,
      'writeIopsSec': ?writeIopsSec,
    };
  }

  factory DomainBlockIoTuneDevice.fromMap(Map<String, dynamic> map) {
    return DomainBlockIoTuneDevice(
      path: pulumi.Input.fromValue(map['path'] as String),
      readBytesSec: (() { final guardedValue = map['readBytesSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      readIopsSec: (() { final guardedValue = map['readIopsSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      writeBytesSec: (() { final guardedValue = map['writeBytesSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      writeIopsSec: (() { final guardedValue = map['writeIopsSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

