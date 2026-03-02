// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_reservations_source_pty_sec_label.dart';

class DomainDevicesDiskBackingStoreSourceReservationsSourcePty {
  /// Sets the path for the PTY source in the EGD backend.
  final pulumi.Input<String> path;
  /// This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  final pulumi.Input<List<DomainDevicesDiskBackingStoreSourceReservationsSourcePtySecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReservationsSourcePty].
  /// [path] Sets the path for the PTY source in the EGD backend.
  /// [secLabels] This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  DomainDevicesDiskBackingStoreSourceReservationsSourcePty({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskBackingStoreSourceReservationsSourcePtySecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskBackingStoreSourceReservationsSourcePtySecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceReservationsSourcePty.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceReservationsSourcePty(
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskBackingStoreSourceReservationsSourcePtySecLabel>(map['secLabels']!, (value) => DomainDevicesDiskBackingStoreSourceReservationsSourcePtySecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

