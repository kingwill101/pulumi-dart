// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_serial_source_dev_sec_label.dart';

class DomainDevicesSerialSourceDev {
  /// Specifies the path to the device file for the EGD backend.
  final String path;
  /// Configures the security label settings for the device source in the EGD backend.
  final List<DomainDevicesSerialSourceDevSecLabel>? secLabels;

  /// Creates a new [DomainDevicesSerialSourceDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  DomainDevicesSerialSourceDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesSerialSourceDevSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesSerialSourceDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialSourceDev(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesSerialSourceDevSecLabel>(map['secLabels'], (value) => DomainDevicesSerialSourceDevSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

