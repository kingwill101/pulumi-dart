// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_reservations_source_dev_sec_label.dart';

class DomainDevicesDiskSourceReservationsSourceDev {
  /// Specifies the path to the device file for the EGD backend.
  final pulumi.Input<String> path;
  /// Configures the security label settings for the device source in the EGD backend.
  final pulumi.Input<List<DomainDevicesDiskSourceReservationsSourceDevSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskSourceReservationsSourceDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  DomainDevicesDiskSourceReservationsSourceDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskSourceReservationsSourceDevSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskSourceReservationsSourceDevSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskSourceReservationsSourceDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReservationsSourceDev(
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskSourceReservationsSourceDevSecLabel>(map['secLabels']!, (value) => DomainDevicesDiskSourceReservationsSourceDevSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

