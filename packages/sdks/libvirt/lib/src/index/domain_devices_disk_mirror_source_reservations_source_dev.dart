// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_reservations_source_dev_sec_label.dart';

class DomainDevicesDiskMirrorSourceReservationsSourceDev {
  /// Specifies the path to the device file for the EGD backend.
  final pulumi.Input<String> path;
  /// Configures the security label settings for the device source in the EGD backend.
  final pulumi.Input<List<DomainDevicesDiskMirrorSourceReservationsSourceDevSecLabel>?>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSourceDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  const DomainDevicesDiskMirrorSourceReservationsSourceDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorSourceReservationsSourceDevSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceReservationsSourceDevSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskMirrorSourceReservationsSourceDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSourceDev(
      path: pulumi.Input.fromValue(map['path'] as String),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceReservationsSourceDevSecLabel>(guardedValue, (value) => DomainDevicesDiskMirrorSourceReservationsSourceDevSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
