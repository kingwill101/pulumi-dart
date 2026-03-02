// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_reservations_source_pty_sec_label.dart';

class DomainDevicesDiskSourceReservationsSourcePty {
  /// Sets the path for the PTY source in the EGD backend.
  final pulumi.Input<String> path;
  /// This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  final pulumi.Input<List<DomainDevicesDiskSourceReservationsSourcePtySecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskSourceReservationsSourcePty].
  /// [path] Sets the path for the PTY source in the EGD backend.
  /// [secLabels] This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  DomainDevicesDiskSourceReservationsSourcePty({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskSourceReservationsSourcePtySecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskSourceReservationsSourcePtySecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskSourceReservationsSourcePty.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReservationsSourcePty(
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskSourceReservationsSourcePtySecLabel>(map['secLabels'], (value) => DomainDevicesDiskSourceReservationsSourcePtySecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

